list+="$(wget -qO - https://raw.githubusercontent.com/fritschj/JFBlacklist/master/hosts)"
LC_COLLATE=C sort -u <<< "$list" | sudo tee /etc/pihole/regex.list
pihole restartdns
