#!/bin/bash

timeout=$((SECONDS + 240))  # 300 giây = 5 phút

while [ $SECONDS -lt $timeout ]; do
    php index.php
    sleep 15
done
