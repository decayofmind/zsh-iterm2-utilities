git config --global user.email "r.komkov@gmail.com"
git config --global user.name "Roman Komkov"

rm -rf files.sha256

for i in iterm2-website/source/utilities/*; do
    sha256sum "$i" >> files.sha256
done
