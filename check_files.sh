for i in iterm2-website/source/utilities/*; do
    sha256sum "$i" >> files.sha256
done
