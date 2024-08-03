


login_file=".login_user"

function show_menu {
clear
sleep 1
echo "
          |=================================================|
          |1.MENU VIRUS1                                    |
          |2.MENU VIRUS2                                    |
          |3.MENU VIRUS3                                    |
          |4.EXIT                                           |
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

if [ -f "$login_file" ]; then
  name=$(cat "$login_file")
  echo "Selamat datang kembali, $name!"
sleep 2
else
  echo "masukan nama baru buat tampilan virus menu: "
  read name
  echo "$name" > "$login_file"
  clear
  sleep 1.5
  echo "Selamat datang, $name!"
sleep 2
git pull
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
      echo "keluar... "
      break
      ;;
     *)
       echo "Pilihan tidak valid, coba lagi."
       sleep 1
       ;;
   esac
 done
