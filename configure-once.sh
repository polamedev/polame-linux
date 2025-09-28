#!/bin/bash

# Скрипт единственной конфигурации
# Запуск: sh ~/.polame-linux/configure-once.sh  
# Требует sudo

# Функция настройки директорий по умолчанию
make_default_dir() {
    echo "-- Make defult dir"
    # Создание стандартных директорий
    mkdir -p {$HOME/local/bin,$HOME/local/src,$HOME/local/src,$HOME/local/lib,$HOME/local/include}
    mkdir -p $HOME/opt/bin
    mkdir -p $HOME/downloads
    mkdir -p $HOME/develop/c_cpp
}

# Функция по установки zsh, Oh My Zsh и плагинов к нему
install_zsh() {
    echo "-- Install zsh"
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
    ln -f -s $HOME/.polame-linux/.zshrc $HOME/.zshrc
}

install_apt() {
    # Установка необходимых утилит
    echo "-- Install apt"

    # Установка компиляторов gcc|g++ и библиотеки libc6-dev
    sudo apt install build-essential

    sudo apt install cmake

    sudo apt install ninja-build
}

main() {
    sudo apt update

    # Добавление прав на выполнение к скриптам
    chmod +x $HOME/.polame-linux/scripts/pathecho
    chmod +x $HOME/.polame-linux/scripts/linkopt

    # Создание стандартных каталогов 
    make_default_dir

    # Создание символьной ссылки на .clang-format -f - force
    ln -f -s $HOME/.polame-linux/etc/.clang-format $HOME/.clang-format

    # Копируем файл конфигурации в домашнюю директорию, туда будут добавляться все локальные пути
    cp $HOME/.polame-linux/example/.polame-configure.sh $HOME/.polame-configure.sh 

    # Установка zsh
    install_zsh

    install_apt
}

main

