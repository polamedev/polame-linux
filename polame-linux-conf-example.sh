#!/bin/bash

# Пример скрипта для конфигурации системы
# Происходит добавление путей и всего остального
# Для выозова добавить строку в ~/.zshrc : source ~/polame-configure.sh

# Добавление скрипта, который включает пути 
source ~/polame-linux/pathadd.sh

#######################################################
# Добавление путей
pathadd "/usr/share/gcc-arm-none-eabi-10.3-2021.10/bin"
# for pip kconfix
pathadd "/home/paul/.local/bin/"
pathadd "/mnt/c/Program Files/usbipd-win"
pathadd "/mnt/s/Program/Microsoft\ VS\ Code/bin"
pathadd "/mnt/s/Program/Microsoft VS Code/bin/"

# Установка переменных окружения 

export SVD_PATH=~/opt/svd/

# Path from windows
#
# /mnt/c/Windows/system32
# /mnt/c/Windows
# /mnt/c/Windows/System32/Wbem
# /mnt/c/Windows/System32/WindowsPowerShell/v1.0/
# /mnt/c/Windows/System32/OpenSSH/
# /mnt/c/Program Files (x86)/NVIDIA Corporation/PhysX/Common
# /mnt/c/Program Files/NVIDIA Corporation/NVIDIA NvDLISR
# /mnt/c/TDM-GCC-64/bin
# /mnt/c/altera/91sp2/quartus/bin
# /mnt/c/Program Files/Git/cmd
# /mnt/c/Program Files (x86)/GnuWin32/bin
# /mnt/c/Program Files/OpenOCD/bin
# /mnt/c/Program Files/CMake/bin
# /mnt/c/ninja
# /mnt/c/Program Files/Cppcheck:
# /mnt/c/Program Files/usbipd-win/
# /mnt/c/Program Files (x86)/GNU Arm Embedded Toolchain/10 2021.10/bin
# /mnt/c/Users/paul/AppData/Local/Microsoft/WindowsApps
# /mnt/s/Program/Microsoft VS Code/bin
# /mnt/l/prog

