sleep 20s
killall conky
cd "/home/iniz/.conky/gcalcli"
conky -c "/home/iniz/.conky/gcalcli/.conkyrc" &
cd "/home/iniz/.conky/inizio"
conky -c "/home/iniz/.conky/inizio/.conkyrc" &
