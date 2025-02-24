read -p "Username: " username
read -s -p "Password: " password
if [ "$username" == "NRSTSEC" ] && [ "$password" == "ROOT" ]; then
    clear
    echo "WELCOME TO NRSTSEC PANEL"
    sleep 2
    e="echo -e "
    r='\033[0;31m'
    h='\033[0;32m'
    k='\033[0;33m'
    b='\033[0;34m'
    bl="\033[1;34m"
    purple='\033[0;35m'
    cyan='\033[0;36m'
    p='\033[0;37m'
    bgr='\033[41m'
    bgh='\033[42m'
    bgk='\033[43m'
    bgb='\033[44m'
    bgpurple='\033[45m'
    bgc='\033[46m'
    bgp='\033[47m'
    clear
    play -q robot.mp3 &>/dev/null &
    $e  "        $r installing package...!"
    apt install golang sox -y
    clear
    play -q robot2.mp3 &>/dev/null &
    $e "        $h Installing Package Succes"
    sleep 3
    while true; do
        clear
        $e $h"         ╭━╮╱╭┳━━━┳━━━┳━━━━┳━━━┳━━━┳━━━╮"
        $e $h"         ┃┃╰╮┃┃╭━╮┃╭━╮┃╭╮╭╮┃╭━╮┃╭━━┫╭━╮┃"
        $e $h"         ┃╭╮╰╯┃╰━╯┃╰━━╋╯┃┃╰┫╰━━┫╰━━┫┃╱╰╯"
        $e $h"         ┃┃╰╮┃┃╭╮╭┻━━╮┃╱┃┃╱╰━━╮┃╭━━┫┃╱╭╮"
        $e $h"         ┃┃╱┃┃┃┃┃╰┫╰━╯┃╱┃┃╱┃╰━╯┃╰━━┫╰━╯┃"
        $e $h"         ╰╯╱╰━┻╯╰━┻━━━╯╱╰╯╱╰━━━┻━━━┻━━━╯"
        echo
        play -q hello.mp3 &>/dev/null
        play -q robot2.mp3 &>/dev/null &
        $e $bl"        ╔════════════════════════════╗"
        $e $bl"        ║ $r Name$cyan :$h NengzX$bl             ║"
        $e $bl"╔═════════════════════════════════════════════╗"
        $e $bl"║ $k 1.$h NUCLEAR         $k 0.$h EXIT TOOL$bl           ║"
        $e $bl"╚═════════════════════════════════════════════╝"
        echo
        $e $bl "┌[$r NengzX $bl]-($h Panel $bl)"
        read -p " └>  " pil
        $e $cyan
        if [ $pil = "1" ]; then
            read -p "URL   ===> : " ip
            play -q klik.mp3 &>/dev/null &
            read -p "PORT  ===> : " port
            play -q klik.mp3 &>/dev/null &
            read -p "TIME ===> : " DETIK
            play -q klik.mp3 &>/dev/null &
            $e $k
            go run NengzX.go -url $ip $port $time
        elif [ $pil = "0" ]; then
            $e $bgh "STONE EMOTE"
            exit 1
        else
            $e $m "!!THE INPUT YOU ENTERED IS WRONG!!"
            sleep 2
            read -p " LOGIN TO RESTART"
        fi
    done
else
    echo "INCORRECT USERNAME OR PASSWORD "
    exit 1
fi

