clear
#logo
echo "

 ██▓███   ▒█████   ██▀███  ▄▄▄█████▓     ██████  ▄████▄   ▄▄▄       ███▄    █    
▓██░  ██▒▒██▒  ██▒▓██ ▒ ██▒▓  ██▒ ▓▒   ▒██    ▒ ▒██▀ ▀█  ▒████▄     ██ ▀█   █    
▓██░ ██▓▒▒██░  ██▒▓██ ░▄█ ▒▒ ▓██░ ▒░   ░ ▓██▄   ▒▓█    ▄ ▒██  ▀█▄  ▓██  ▀█ ██▒   
▒██▄█▓▒ ▒▒██   ██░▒██▀▀█▄  ░ ▓██▓ ░      ▒   ██▒▒▓▓▄ ▄██▒░██▄▄▄▄██ ▓██▒  ▐▌██▒  (R3D-GHOST) 
▒██▒ ░  ░░ ████▓▒░░██▓ ▒██▒  ▒██▒ ░    ▒██████▒▒▒ ▓███▀ ░ ▓█   ▓██▒▒██░   ▓██░   
▒▓▒░ ░  ░░ ▒░▒░▒░ ░ ▒▓ ░▒▓░  ▒ ░░      ▒ ▒▓▒ ▒ ░░ ░▒ ▒  ░ ▒▒   ▓▒█░░ ▒░   ▒ ▒    
░▒ ░       ░ ▒ ▒░   ░▒ ░ ▒░    ░       ░ ░▒  ░ ░  ░  ▒     ▒   ▒▒ ░░ ░░   ░ ▒░   
░░       ░ ░ ░ ▒    ░░   ░   ░         ░  ░  ░  ░          ░   ▒      ░   ░ ░    
             ░ ░     ░                       ░  ░ ░            ░  ░         ░    
                                                ░                                "
sleep 2
#menu 
echo "[1] Scan a range of IPs with Nmap"
echo ""
sleep 1
echo "[2] Scan specific ports or port ranges with Nmap"
echo ""
sleep 1
echo "[3] Scan all ports with Nmap"
echo ""
sleep 1
echo "[4] Launch a TCP SYN scan"
echo ""
sleep 1
echo "[5] Operating system scan"
echo ""
sleep 1
echo "[6] Scanning of Operating System and services"
echo ""
sleep 1
echo "[7] Standard Services Scan"
echo ""
sleep 1
echo "[8] Aggressive utility scanning"
echo ""
sleep 1
echo "[9] Light Banner Services Scanning"
echo ""
sleep 1
echo "[10] Scan the entire network with Nmap (simple)"
echo ""
sleep 1
echo "[11] Network scan with Nmap + ports (fast)"
echo ""
sleep 1
echo "[12] alth full network scan with OS detection"
sleep 1
echo ""
sleep 1
read -p ">>> " menu
clear

if [ $menu = 1 ]; then
echo "Scan a range of IPs with Nmap"
clear
echo "put the ip"
read -p ">>> " ip
nmap $ip-115

elif [ $menu = 2 ]; then
echo "Scan specific ports or port ranges with Nmap"
clear
echo "put the ip"
read -p ">>> " ip
echo "set port"
read -p ">>> " port
nmap -p $port $ip

elif [ $menu = 3 ]; then
echo "Scan all ports with Nmap"
clear
echo "put the ip"
read -p ">>> " ip
nmap -p- $ip

elif [ $menu = 4 ]; then
echo "Launch a TCP SYN scan"
clear
echo "put the ip"
read -p ">>> " ip
nmap -sS $ip

elif [ $menu = 5 ]; then
echo "Operating system scan"
echo "put the ip"
read -p ">>> " ip
nmap -O $ip

elif [ $menu = 6 ]; then
echo "Scanning of Operating System and services"
clear
echo "put the ip"
read -p ">>> " ip
nmap -A $ip

elif [ $menu = 7 ]; then
echo "Standard Services Scan"
clear
echo "put the ip"
read -p ">>> " ip
nmap -sV $ip

elif [ $menu = 8 ]; then
echo "Aggressive utility scanning"
clear
echo "put the ip"
read -p ">>> " ip
nmap -sV --version-intensity 5 $ip

elif [ $menu = 9 ]; then
echo "Light Banner Services Scanning"
clear
echo "put the ip"
read -p ">>> " ip
nmap -sV --version-intensity 0 $ip

elif [ $menu = 10 ]; then
echo "Scan the entire network with Nmap (simple)"
clear
echo "put the ip"
read -p ">>> " ip
nmap -sP $ip/24

elif [ $menu = 11 ]; then
echo "Network scan with Nmap + ports (fast)"
clear
echo "put the ip"
read -p ">>> " ip
nmap -F/-f $ip/24

elif [ $menu = 12 ]; then
echo "Stealth full network scan with OS detection"
clear
echo "put the ip"
read -p ">>> " ip
nmap -sS -O $ip/24

fi
