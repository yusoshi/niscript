#!/bin/sh

# 置換したいファイル群が存在するディレクトリを絶対パスで指定する(最後のディレクトリに/は不要です。)
# 例) dir="/User/testman/sample_dir"
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
