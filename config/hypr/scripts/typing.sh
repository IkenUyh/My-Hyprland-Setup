#!/bin/bash
text="Consider touching grass?"
tmp_file="/tmp/hyprlock_typewriter"

# Kiểm tra xem màn hình vừa khóa hay khóa lâu rồi để reset lại từ đầu
if [ -f "$tmp_file" ]; then
    last_mod=$(stat -c %Y "$tmp_file")
    now=$(date +%s)
    if [ $((now - last_mod)) -gt 2 ]; then
        echo 1 > "$tmp_file"
    fi
else
    echo 1 > "$tmp_file"
fi

count=$(cat "$tmp_file")
max=${#text}

# Hiệu ứng gõ từng chữ
if [ $count -le $max ]; then
    echo "${text:0:count}_"
    echo $((count + 1)) > "$tmp_file"
else
    # Nhấp nháy con trỏ khi gõ xong
    if [ $(( $(date +%s%N) / 500000000 % 2 )) -eq 0 ]; then
        echo "${text}_"
    else
        echo "${text} "
    fi
fi
