#!/usr/bin/bash
set -e
declare -A links

links["OKR Tracking 2020"]="https://go.clipchamp.com/okrs-2020"
links["Roadmap and Feature Ideas Sheet"]="https://go.clipchamp.com/roadmap2020"

links["New Amplitude Chart"]="https://analytics.amplitude.com/clipchamp/chart/new/tv5vk8e"
links["Clipchamp Stack"]="https://github.com/clipchamp/clipchamp-stack"
links["Static Website"]="https://github.com/clipchamp/clipchamp-static-website"
links["Content Repository"]="https://github.com/clipchamp/content-repository"

links["App - Clipchamp Create"]="https://app.clipchamp.com"
links["Beta - Clipchamp Create"]="https://app.beta.clipchamp.com"
links["Test - Clipchamp Create"]="https://app.test.clipchamp.com"

keys=""
for KEY in "${!links[@]}"; do
  keys+="$KEY\n"
done

value=$(echo -e $keys | rofi -bw 4 -dmenu -p "Clipchamp Links" -i)

i3-msg "workspace 2"

xdg-open "${links[$value]}"
