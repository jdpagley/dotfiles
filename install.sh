for file in .vimrc .vim .gitconfig; do
  ln -sf "$(pwd)/.$file" ~/.$file
done
