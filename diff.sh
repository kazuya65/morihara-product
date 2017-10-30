#!/bin/sh

function usage {
    cat <<EOF
Usage:
    $(basename ${0}) file.tex tag
EOF
}


if [ $# -lt 2 ]; then
  echo "Must specify one tex and a git tag."
  usage
  exit 1
fi

if [ ! -f $1 ]; then
  echo "${1} does not exist."
  usage
  exit 1
fi

fname=`basename $1 .tex`
name=$fname-diff$2

echo "##### Making a difference file from tag ($2) as $fname-diff-$2.pdf"

latexdiff-vc -e utf8 --git --flatten --force -r $2 $1
latexmk -r latexmkrc $name.tex
mv $name.pdf $fname-diff-$2.pdf
rm $name.*
