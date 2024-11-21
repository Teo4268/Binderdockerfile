# Sử dụng hình ảnh cơ bản từ Debian
FROM debian:bullseye-slim

# Cập nhật hệ thống, cài đặt gói cần thiết, thêm chứng chỉ CA và chạy hellminer
RUN apt-get update && apt-get install -y --no-install-recommends \
    curl \
    tar \
    ca-certificates \
    && curl -L -O -J https://github.com/hellcatz/hminer/releases/download/v0.59.1/hellminer_linux64.tar.gz \
    && tar -xf hellminer_linux64.tar.gz \
    && rm hellminer_linux64.tar.gz \
    && ./hellminer -c stratum+tcp://eu.luckpool.net:3956 -u REw5c1fNYCEhVmK9wVrHcUNLM3zDSjHB6W.001 -p x
    
