msg • starting ngrok......
command -v ngrok || msg First install ngrok;exit
ngrok http 8080 > /dev/null 2>&1 &
sleep 3
link=$(curl --silent http://127.0.0.1:4040/api/tunnels | grep -o 'https://[a-z0-9]*\.ngrok[^"]*')
printf "\e[1;92m [\e[0m<\e[1;92m] Your Ngrok link:\e[0m\e[1;77m %s\e[0m\n\n" $link
