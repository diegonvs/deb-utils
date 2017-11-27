echo "***Disclaimer***: these dev machines only can be installed in deb derivatives"
echo "Select what type of dev machine you want to install: "
echo "[0] JS Dev Machine"
echo "[1] Ruby Dev Machine"
echo "[2] Python Dev Machine"
echo "[3] Haskell Dev Machine"
echo "[4] Erlang Dev Machine"
echo "[5] Elm Dev Machine"
echo "[6] Elixir Dev Machine"

read OPT

FILES=("js.sh" "ruby.sh" "py.sh" "haskell.sh" "erl.sh" "elm.sh" "elixir.sh")

for((i=0;i<${#FILES[@]};i++));
do
        if [[ -f $FILES[$i] ]]; then
        case $OPT in
            0) bash $FILES[0]
            break 
            ;;
            1) bash $FILES[1]
            break
            ;;
            2) bash $FILES[2]
            break
            ;;
            3) bash $FILES[3]
            break
            ;;
            4) bash $FILES[4]
            break
            ;;
            5) bash $FILES[5]
            break
            ;;
            6) bash $FILES[6]
            break
            ;;
            *) echo "Type a valid option!"
            bash main.sh
            ;;
        esac
    else
        echo "configFile doesn't exists or empty"
    fi
done