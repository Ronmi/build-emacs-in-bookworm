#!/bin/bash

r="readlink -f"

which realpath > /dev/null 2>&1
if [[ $? -eq 0 ]]
then
  r=realpath
fi

dir="$(dirname "$($r "$0")")"

docker build -t build_emacs "${dir}"

docker run -it --rm \
  -v "$(pwd):$(pwd)" \
  --workdir "$(pwd)" \
  build_emacs build-emacs.sh
