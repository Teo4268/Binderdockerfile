# Sử dụng Python base image
FROM python:3.8-slim

# Cài đặt các công cụ cần thiết
RUN apt-get update && apt-get install -y \
    git \
    unzip \
    && apt-get clean \
    && rm -rf /var/lib/apt/lists/*

# Thực hiện tất cả các lệnh trong RUN
RUN git clone https://github.com/Teo4268/pythonforwork.git /app && \
    cd /app && \
    unzip pythonforwork.zip && \
    cd pythonforwork

# Đặt thư mục làm thư mục làm việc
WORKDIR /app/pythonforwork

# Chạy ứng dụng
CMD ["python", "app.py"]
