# Experiment Page for pre-InstRover

## 로컬 미리보기
```bash
python3 -m http.server 8000
# 브라우저에서 http://localhost:8000
```

## WAV 체크
```bash
python3 scripts/verify_assets.py
```
누락된 파일명을 알려줍니다.

## gh CLI로 한 번에 배포(선택)
```bash
bash scripts/bootstrap.sh
```
