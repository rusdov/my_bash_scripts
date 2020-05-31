#!/bin/sh

# Путь к утилите поиска
FIND="/usr/bin/find"
# Путь к утилите удаления
RM="/bin/rm"
# Путь к утилите xargs
XARGS="/usr/bin/xargs"

# Список каталогов с архивами бекапов
PATH1="/backup/jun"
PATH2="/backup/sw"

# Время хранения файлов (в днях)
TIME1="25"
TIME2="60"

# Перебираем каталоги и удаляем устаревшие бекапы
$FIND $PATH1 -type f -mtime +$TIME1 -print0 | $XARGS -0 $RM -f
$FIND $PATH2 -type f -mtime +$TIME2 -print0 | $XARGS -0 $RM -f
