# Скрипт для создания символьных ссылок на файл из текущей дирректории в /opt/bin
# Пример ~/polame-linux/linkopt.sh (-f) riscv-none-elf-gcc
# -f - флаг для перезаписи ссылок
force_flag="-f"

if [ "$1" = $force_flag ]

then
fullpath=`realpath $2`
filename=`basename $2`
sudo ln -f -s $fullpath /opt/bin/$filename

else
fullpath=`realpath $1`
filename=`basename $1`
sudo ln -s $fullpath /opt/bin/$filename

fi