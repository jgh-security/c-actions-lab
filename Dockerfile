# 1단계: 빌드 스테이지
FROM ubuntu:24.04 AS builder
ENV DEBIAN_FRONTEND=noninteractive
RUN apt-get update && apt-get install -y \
    build-essential \
    make \
    && rm -rf /var/lib/apt/lists/*
WORKDIR /app
COPY src ./src
COPY Makefile ./
RUN make

# 2단계: 실행 스테이지
FROM ubuntu:24.04
WORKDIR /app
COPY --from=builder /app/calculator /app/calculator
CMD ["./calculator"]