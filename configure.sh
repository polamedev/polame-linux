#!/bin/bash

# Скрипт постоянной конфигурации не зависимый от командной оболочки

# Объявляем функцию по добавлению пути в переменную path
pathadd() {
    if [ -d "$1" ] && [[ ":$PATH:" != *":$1:"* ]]; then
        PATH="${PATH:+"$PATH:"}$1"
    fi
}

pathadd "$HOME/.polame-linux/scripts"
pathadd "$HOME/opt/bin"
pathadd "$HOME/local/bin"

# Запускаем скрипт пользовательской конфигурации
source ~/.polame-configure.sh