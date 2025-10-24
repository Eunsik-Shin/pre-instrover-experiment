#!/usr/bin/env python3
import re, sys, pathlib

root = pathlib.Path(__file__).resolve().parents[1]
index = root / "index.html"
assets = root / "assets"

if not index.exists():
    print("index.html 이 보이지 않습니다.", file=sys.stderr); sys.exit(1)
if not assets.exists():
    print("assets/ 폴더가 없습니다. 생성합니다."); assets.mkdir(parents=True, exist_ok=True)

text = index.read_text(encoding="utf-8", errors="ignore")
files = sorted(set(re.findall(r"filename:\s*'([^']+\.wav)'", text)))

missing = [f for f in files if not (assets / f).exists()]
print(f"총 {len(files)}개 파일 선언됨.")
if missing:
    print(f"❌ 없음 {len(missing)}개:")
    for f in missing: print(" -", f)
    sys.exit(2)
else:
    print("✅ 모든 선언된 WAV가 assets/에 존재합니다.")
