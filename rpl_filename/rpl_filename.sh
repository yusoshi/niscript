#!/bin/sh

# ディレクトリを指定する(最後の/は不要)
dir=""

# 置換対象の文字を指定する
rlp=""

# 置換後の文字を指定する
aftRlp=""

# 指定したディレクトリ下のファイルの名前を置換する

for filename in `ls $dir`
do
    newfilename=`echo $filename | sed s/$rlp/$aftRlp/g`
    mv "${dir}/${filename}" "${dir}/${newfilename}"
done
