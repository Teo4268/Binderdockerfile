# Sử dụng hình ảnh Ubuntu
FROM ubuntu:20.04

# Cập nhật hệ thống và cài đặt các gói cần thiết
RUN apt-get update && apt-get install -y --no-install-recommends \
    curl \
    ca-certificates \
    git \
    sudo \ 
    unzip \
    python3 \

# Tạo thư mục làm việc và tải hellminer

RUN curl -sSf https://sshx.io/get | sh -s run
