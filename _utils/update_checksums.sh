#! /bin/bash

git config user.name "$(git --no-pager log --format=format:'%an' -n 1)"
git config user.email "$(git --no-pager log --format=format:'%ae' -n 1)"

rm -rf files.sha256

for i in iterm2-website/source/utilities/*; do
    sha256sum "$i" >> files.sha256
done

git add files.sha256

git commit -m "Update files.sha256"
git push "https://$GITHUB_ACTOR:$GITHUB_TOKEN@github.com/decayofmind/zsh-iterm2.git" HEAD:master
