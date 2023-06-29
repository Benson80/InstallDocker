sed -i 's@^\(deb.*stable main\)$@#\1\ndeb https://mirrors.tuna.tsinghua.edu.cn/termux/termux-packages-24 stable main@' $PREFIX/etc/apt/sources.list && apt update -y  && apt upgrade -y

pkg install qemu-system-x86-64-headless qemu-utils -y

echo "正在下载系统文件..."
sleep 2
echo "本版本为本地安装版，无需下载系统文件，正在为您解压..."
reset
wget https://suzhou.szrq.cf/Termux/qemu/docker/alpine-docker.tar.gz
echo "正在解压文件..."
tar -zxvf alpine-docker.tar.gz

chmod +x 启动.sh
