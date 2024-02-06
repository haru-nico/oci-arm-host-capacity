#!/bin/bash

# Thời gian chạy script (tính bằng giây)
total_runtime=240

# Thời gian chờ giữa các lần thực thi (tính bằng giây)
sleep_time=60

# Thời điểm bắt đầu
start_time=$(date +%s)

while true; do
    # Thực thi lệnh PHP
    php index.php

    # Kiểm tra thời gian chạy
    current_time=$(date +%s)
    elapsed_time=$((current_time - start_time))

    # Kiểm tra xem đã đạt được thời gian chạy mong muốn chưa
    if [ $elapsed_time -ge $total_runtime ]; then
        break
    fi

    # Chờ một khoảng thời gian trước khi thực thi lại
    sleep $sleep_time
done
