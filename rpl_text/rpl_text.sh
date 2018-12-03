#!/bin/sh

# Usage
# sh rpl_text.sh [replaced] [replace] [dir]

# 置換したい文字を指定
rpl="$1"

# 置換後の文字を指定
aftRlp="$2"

# 置換したいファイル群が存在するディレクトリを絶対パスで指定する(最後のディレク>トリに/は不要です。)
# 例) dir="/User/saikouman/sample_dir"
dir=$(cd $(dirname $3) && pwd)

# OSでコマンドを変える
if [ `uname` = Darwin ]; then
    os=0
else 
    os=1
fi

# 特定のディレクトリ下のファイル内の特定の文字列を置換する 
if [ $os = 0 ]; then 
    for filename in `find "$dir" -type f `
    do
    sed -i '' s/"$rpl"/"$aftRlp"/g "${filename}"
    done
elif [ $os = 1 ]; then
    for filename in `find "$dir" -type f `
    do
    sed -i s/"$rpl"/"$aftRlp"/g "${filename}"
    done
fi
