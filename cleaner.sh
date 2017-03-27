#!/bin/bash
while true ; do
  for entr in tabchi-*.sh ; do
    entry="${entr/.sh/}"
    tmux kill-session -t $entry
    ./off.sh
    rm -rf ~/.telegram-cli/$entry/data/animation/*
    rm -rf ~/.telegram-cli/$entry/data/audio/*
    rm -rf ~/.telegram-cli/$entry/data/document/*
    rm -rf ~/.telegram-cli/$entry/data/photo/*
    rm -rf ~/.telegram-cli/$entry/data/sticker/*
    rm -rf ~/.telegram-cli/$entry/data/temp/*
    rm -rf ~/.telegram-cli/$entry/data/video/*
    rm -rf ~/.telegram-cli/$entry/data/voice/*
    rm -rf ~/.telegram-cli/$entry/data/profile_photo/*
    rm -rf ~/.telegram-cli/$entry/data/thumb/*
    rm -rf ~/.telegram-cli/tabchi-*/data/photo
    rm -rf ~/.telegram-cli/tabchi-*/data/animation
    rm -rf ~/.telegram-cli/tabchi-*/data/audio
    rm -rf ~/.telegram-cli/tabchi-*/data/document
    rm -rf ~/.telegram-cli/tabchi-*/data/sticker
    rm -rf ~/.telegram-cli/tabchi-*/data/video
    rm -rf ~/.telegram-cli/tabchi-*/data/voice
    rm -rf ~/.telegram-cli/tabchi-*/data/profile_photo
    rm -rf ~/.telegram-cli/tabchi-*/data/thumb
    tmux new-session -d -s $entry "./$entr"
    tmux detach -s $entry
    ./on.sh
  done
   echo -e "\033[38;5;600m"
   echo -e " :::::::::::  ::::::::     ::::    ::::  :::::::::: ::::    ::::  :::::::::  :::::::::: ::::::::: "
   echo -e "     :+:     :+:    :+:    +:+:+: :+:+:+ :+:        +:+:+: :+:+:+ :+:    :+: :+:        :+:    :+:"
   echo -e "     +:+     +:+           +:+ +:+:+ +:+ +:+        +:+ +:+:+ +:+ +:+    +:+ +:+        +:+    +:+"
   echo -e "     +#+     :#:           +#+  +:+  +#+ +#++:++#   +#+  +:+  +#+ +#++:++#+  +#++:++#   +#++:++#: "
   echo -e "     +#+     +#+   +#+#    +#+       +#+ +#+        +#+       +#+ +#+    +#+ +#+        +#+    +#+"
   echo -e "     #+#     #+#    #+#    #+#       #+# #+#        #+#       #+# #+#    #+# #+#        #+#    #+#"
   echo -e "     ###      ########     ###       ### ########## ###       ### #########  ########## ###    ###"  
   echo Bots Running!
  sleep 1800
done
