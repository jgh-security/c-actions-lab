name: C Project Basic CI

on:
  push:
    branches:
      - main
  workflow_dispatch:

jobs:
  build-and-test:
    runs-on: ubuntu-latest

    steps:
      - name: 1. 저장소 코드 가져오기
        uses: actions/checkout@v4

      - name: 2. GCC 및 Make 설치
        run: |
          sudo apt-get update
          sudo apt-get install -y build-essential make

      - name: 3. 프로젝트 빌드
        run: make

      - name: 4. 실행 파일 테스트
        run: ./calculator

      - name: 5. 정리
        run: make clean

