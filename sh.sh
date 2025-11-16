

# Dinh nghia ham kiem tra so nguyen to
ktsonguyento() {
  # 1. Gán tham số đầu vào cho biến n (dùng local an toàn hơn)
n=$1

  # 2. Số nhỏ hơn 2 không phải số nguyên tố
  if [ "$n" -lt 2 ]; then
    echo "$n khong phai la so nguyen to"
    return
  fi

  # 3. Kiểm tra các số chia từ 2 đến căn bậc hai của n
  # (i*i <= n) là cách kiểm tra mà không cần tính căn
  for (( i=2; i*i<=$n; i++ )); do
    
    # 4. Nếu n chia hết cho i (số dư = 0)
    if [ $(($n % $i)) -eq 0 ]; then
      echo "$n khong phai la so nguyen to"
      return
    fi
  done

  # 5. Nếu vượt qua tất cả, nó là số nguyên tố
  echo "$n LA SO NGUYEN TO"
}

# --- Chương trình chính ---
echo "Nhap so can kiem tra:"
read a

# Gọi hàm với tham số là số a vừa nhập
ktsonguyento "$a"
