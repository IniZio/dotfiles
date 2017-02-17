sleep 20s
killall conky
cd "/home/iniz/.conky/gcalcli"
conky -c "/home/iniz/.conky/gcalcli/.conkyrc" &
conky -c "/home/iniz/.conky/timetable/.conkyrc" &
