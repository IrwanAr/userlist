clear
#!/bin/bash
# Script by Irwan Ardana@337
echo "-------------------------------"
echo "USERNAME        TANGGAL EXPIRED"
echo "-------------------------------"
while read Irwan Ardana
do
        AKUN="$(echo $Irwan Ardana | cut -d: -f1)"
        ID="$(echo $Irwan Ardana | grep -v nobody | cut -d: -f3)"
        exp="$(chage -l $AKUN | grep "Account expires" | awk -F": " '{print $2}')"
        if [[ $ID -ge 500 ]]; then
        printf "%-17s %2s\n" "$AKUN" "$exp"
                fi
done < /etc/passwd
JUMLAH="$(awk -F: '$3 >= 500 && $1 != "nobody" {print $1}' /etc/passwd | wc -l)"
echo "-------------------------------"
echo "Jumlah akun: $JUMLAH user"
echo "-------------------------------"
echo -e "Script by \e[1;33;44m[ Irwan Ardana@337 ]\e[0m"