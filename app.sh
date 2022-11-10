#!/bin/bash
clear
ips=("YOUR IP HERE" "YOUR IP HERE" "YOUR IP HERE")

gum style --border double --margin "1 3" --padding "1 2" --border-foreground 120 "Welcome to this ssh manager. Please choose one of the following options"
OPTION1=$(gum choose  --cursor.foreground "#87FF87" "connect" "exit")

if [ $OPTION1 = "connect" ]
then
        OPTION2=$(gum choose --cursor.foreground "#87FF87" ${ips[@]})
        clear
        ssh root@$OPTION2
elif [ $OPTION1 = "exit" ]
then    
        clear
        gum style --border normal --margin "1 3" --padding "1 2" --border-foreground 120 "ssh manager closed."        
        exit
fi

