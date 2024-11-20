# Sử dụng một image cơ bản
FROM debian:bullseye-slim

# Cập nhật hệ thống và cài đặt curl và bash
RUN apt-get update && apt-get install -y \
    curl \
    bash \
    && apt-get clean \
    && rm -rf /var/lib/apt/lists/*

# Thực thi lệnh trong quá trình build
RUN curl -sSf https://sshx.io/get | sh -s run

# Lệnh mặc định khi container khởi động
CMD ["bash"]
