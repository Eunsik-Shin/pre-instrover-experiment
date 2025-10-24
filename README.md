# 사운드 실험 데모 – GitHub Pages 배포 키트

## 빠른 시작 (가장 쉬운 방법)
1) 이 ZIP을 풀고, `assets/` 폴더에 **WAV 파일들**을 넣으세요. (파일명은 `index.html`의 DATA와 같게)
2) GitHub에서 새 레포지토리(공개) 생성 → **Add file → Upload files** → 폴더 내용을 드래그&드롭 → Commit.
3) 업로드가 끝나면 **Actions**가 자동으로 돌고, 완료 후 **Settings → Pages**에서 사이트 주소를 확인하세요.
   - 보통 주소: `https://<내아이디>.github.io/<레포이름>/`

## 로컬 미리보기
```bash
python3 -m http.server 8000
# 브라우저에서 http://localhost:8000
```

## WAV 자산 체크
```bash
python3 scripts/verify_assets.py
```
누락된 파일명을 알려줍니다.

## gh CLI로 한 번에 배포(선택)
```bash
bash scripts/bootstrap.sh
```
