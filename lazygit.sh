#!/bin/bash

DATE=$(date +%m%d)
TIME=$(date +%I%M)

cd /path_to/repo_dir
zip -r repo_dir_backup.zip .
rm ../repo_dir_backup_old.zip
cp ../repo_dir_backup.zip ../repo_dir_backup_old.zip 
rm ../repo_dir_backup.zip
mv repo_dir_backup.zip ../repo_dir_backup.zip
mv .repo ../
cd ..
rm -r /repo_dir
mkdir /repo_dir
mv .repo /repo_dir
cp -r ~/contents_of_working_dir/ /repo_dir
cd /repo_dir
zip -r zip.zip .
mv zip.zip ../project_name_"$DATE"_"$TIME".zip
git add -A
git commit
git push origin
