from ubuntu:20.04

run apt update && apt install -y vim wget curl git

# creates if non-existent and moves to it
workdir /home/mydir

# add vs copy --> add can unzip tars and download by link
# copy ./ ./

run touch hello.sh && echo "echo 'Hello from container'" > hello.sh
run wget -O- https://github.com/deluan/zsh-in-docker/releases/download/v1.1.5/zsh-in-docker.sh | sh -

# env variable
env kek="kek"

# entrypoint ["ls"] <==> /bin/sh -c ls
# entrypoint ls     <==> ls
entrypoint ["sh"]

# run ls, cm cmd ls is VICE VERSA compared to entrypoint
# cmd args can be easily repalced by args in terminal due run command
cmd ["hello.sh"]

