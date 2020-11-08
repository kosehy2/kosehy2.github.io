bundle exec rake publish
#!/bin/sh
# 수정된 파일을 모두 commit 후 push 합니다.
# commit message는 input으로 받습니다.

message=""

if [ "$1" = "" ]
then message="Update"
else message=$1
fi

git add --all
git commit -m "$message"
git push