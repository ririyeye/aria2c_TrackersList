bash TLUpdate.sh
mv TLUpdate.sh /usr/lib/ && echo "[+]Move script to /usr/lib/ successfully !" || echo "[-]Move is failed"
((crontab -l ; echo "0 4 */2 * * bash /usr/lib/TLUpdate.sh" ) | crontab ) && echo "[+]Add script to crontab successfully, Please Remove this git floder !" || echo "[-]Add script is failed"
