#!/bin/bash

# Скрипт единственной конфигурации
# Запуск: sh ~/.polame-linux/configure-once.sh  
# Требует sudo

sudo apt update

# Настройка необходимых символьных ссылок в системе

# Создание стандартных директорий
mkdir -p {~/local/bin,~/local/src,~/local/src,~/local/lib,~/local/include}
mkdir -p ~/opt/bin
mkdir -p ~/downloads
mkdir -p ~/develop/c_cpp

# Добавление прав на выполнение к скриптам
chmod +x ~/.polame-linux/scripts/pathecho
chmod +x ~/.polame-linux/scripts/linkopt

# Создание символьной ссылки на .clang-format -f - force
ln -f -s ~/.polame-linux/etc/.clang-format ~/.clang-format

# Копируем файл конфигурации в домашнюю директорию, туда будут добавляться все локальные пути
cp ~/.polame-linux/example/.polame-configure.sh ~/.polame-configure.sh 

# Устанавливаем необходимые пакеты (ZSH, powerline и powerline шрифты)
sudo apt install zsh powerline fonts-powerline

# Установка Oh My Zsh, второй вариант рабочий и он не останавливает скрипт как первый
# sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"
curl -L https://raw.github.com/robbyrussell/oh-my-zsh/master/tools/install.sh | sh

# Установка подсветки синтаксиса Oh My Zsh
git clone https://github.com/zsh-users/zsh-syntax-highlighting.git $HOME/.oh-my-zsh/custom/plugins/zsh-syntax-highlighting --depth 1

# Устанавливаем плагин автодополнения для zsh
git clone https://github.com/zsh-users/zsh-autosuggestions $HOME/.oh-my-zsh/custom/plugins/zsh-autosuggestions

# Создаем символьную ссылку на мой файл скрипта .zshrc он будет постоянно запускаться при запуске системы
ln -f -s ~/.polame-linux/.zshrc ~/.zshrc

source ~/.zshrc