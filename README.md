# C Actions Lab

GitHub Actions를 활용한 C 언어 자동 빌드 실습 프로젝트입니다.

## 프로젝트 구조
```
c-actions-lab/
├── .github/
│   └── workflows/
│       └── c-build.yml
├── src/
│   └── main.c
├── Makefile
└── README.md
```

## 실습 목표

- GitHub Actions를 이용한 CI(지속적 통합) 기초 이해
- push 이벤트 발생 시 자동 빌드 및 실행 확인
- Makefile을 활용한 실무형 빌드 구조 경험

## 사용 기술

| 항목 | 내용 |
|------|------|
| 언어 | C (C11 표준) |
| 컴파일러 | GCC |
| 빌드 도구 | Makefile |
| CI 플랫폼 | GitHub Actions |
| Runner | ubuntu-latest |

## 로컬 빌드 방법
```bash
# 빌드
make

# 실행
make run

# 정리
make clean
```

## CI 동작 방식

`main` 브랜치에 push하면 GitHub Actions가 자동으로 아래 과정을 실행합니다.

1. ubuntu-latest runner 환경 준비
2. GCC 컴파일러로 소스 코드 빌드
3. 빌드된 바이너리 실행 및 결과 확인

## 예상 실행 결과
```
a = 10
b = 20
sum = 30
```

## Actions 결과 확인

저장소 상단의 **Actions** 탭에서 워크플로 실행 기록과 각 step의 로그를 확인할 수 있습니다.