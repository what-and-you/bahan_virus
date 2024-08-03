


login_file=".login_user"

function show_menu {
sleep 1.5
clear
git pull
clear
sleep 1.5
echo "
          |=================================================|
          |1.MENU VIRUS1                                    |
          |2.MENU VIRUS2                                    |
          |3.MENU VIRUS3                                    |
          |4.GANTI USER NAME                                |
          |5.EXIT                                           |
          |=================================================|
"
echo
       echo
       echo -n    "Pilih menu: " 
}
function virus_menu1 {
sleep 1.5
clear
apt-get update && apt-get upgrade
apt-get install git python
git clone https://github.com/Gameye98/vbug
cd vbug
python vbug.py
}

function virus_menu2 {
sleep 1.5
clear
echo "belum nemu script virus lagi!"
}

function virus_menu3 {
clear
sleep 1.5
echo "belum nemu script virus lagi!"
}

function ganti_user_name{
  clear
  echo "Masukkan nama baru: "
  read new_name
  name=$new_name
  echo "$name" > "$login_file"
  echo "Nama telah diubah menjadi $name "
sleep 1.5
  echo "Tekan enter untuk kembali ke menu utama"
  read
}

if [ -f "$login_file" ]; then
  name=$(cat "$login_file")
  echo "Selamat datang kembali, $name!"
sleep 2
else
  echo "masukan nama baru buat tampilan virus menu: "
  read name
  echo "$name" > "$login_file"
  sleep 1.5
  echo "Selamat datang, $name!"
fi

while true; do
  show_menu
  read kontol
  case $kontol in
    1)
      virus_menu1
      ;;
    2) 
      virus_menu2
      ;;
    3) 
      virus_menu3
      ;;
    4) 
      ganti_user_name
      ;;
     5) 
      echo "keluar... "
      break
      ;;
     *)
       echo "Pilihan tidak valid, coba lagi."
       sleep 1
       ;;
   esac
 done
