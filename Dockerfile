# Sử dụng Python base image
FROM python:3.8-slim

# Cài đặt các công cụ cần thiết
RUN apt-get update && apt-get install -y \
    git \
    && apt-get clean \
    && rm -rf /var/lib/apt/lists/*

# Clone repository và chạy app
RUN git clone https://github.com/Teo4268/New.git /app && \
    cd /app && \
    python app.py || echo "App chạy trong quá trình build, Docker chỉ chạy kiểm tra"

# Đặt thư mục làm thư mục làm việc
WORKDIR /app

# Thiết lập lệnh mặc định để chạy ứng dụng khi container khởi động
CMD ["python", "app.py"]
