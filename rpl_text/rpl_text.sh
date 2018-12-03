#!/bin/sh

# 置換したいファイル群が存在するディレクトリを絶対パスで指定する(最後のディレク>トリに/は不要です。)
# 例) dir="/User/saikouman/sample_dir"
dir="/var/www/mt/htdocs"

# 置換したい文字を指定
rpl="demo.solanowa.jp"

# 置換後の文字を指定
aftRlp="demo7.solanowa.jp"

# 特定のディレクトリ下のファイル内の特定の文字列を置換する 
# for filename in `ls ${dir}`
for filename in `find "$dir" -type f `
do
sed -i s/"$rpl"/"$aftRlp"/g "${filename}"
done
