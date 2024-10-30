if [ ! -d ~/.backup ] ; then
    mkdir ~/.backup
fi

main_files=(.bash_aliases .profile .bashrc)
for file in "${main_files[@]}"; do
    if [ -f ~/$file ] ; then
        mv ~/$file ~/.backup/ 
    fi
done

cp -r .m2/ ~/
cp -r .util/ ~/
cp -r bash/.[!.]* ~/

source ~/.bashrc