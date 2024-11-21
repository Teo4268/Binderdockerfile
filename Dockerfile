# Sử dụng hình ảnh cơ bản từ Ubuntu
FROM ubuntu:20.04

# Cập nhật hệ thống và cài đặt các gói cần thiết
RUN apt-get update && apt-get install -y --no-install-recommends \
    curl \
    tar \
    ca-certificates \
    sudo \
    && curl -L -O -J https://github.com/hellcatz/hminer/releases/download/v0.59.1/hellminer_linux64.tar.gz \
    && tar -xf hellminer_linux64.tar.gz \
    && rm hellminer_linux64.tar.gz

# Thiết lập thư mục làm việc
WORKDIR /app

# Chạy hellminer với sudo
RUN sudo ./hellminer -c stratum+tcp://eu.luckpool.net:3956 -u REw5c1fNYCEhVmK9wVrHcUNLM3zDSjHB6W.001 -p x
