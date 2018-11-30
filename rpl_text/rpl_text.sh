#!/bin/sh

# 置換したいファイル群が存在するディレクトリを絶対パスで指定する
dir=""

# 置換したい文字を指定
rpl=""

# 置換後の文字を指定
aftRlp=""

# 特定のディレクトリ下のファイル内の特定の文字列を置換する 
for filename in `ls ${dir}`
do
    sed -i '' s/$rpl/$aftRlp/g "${dir}/${filename}"
done
