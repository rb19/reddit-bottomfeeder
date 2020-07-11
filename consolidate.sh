# Enter the path where the bulkdownloader script lives."
script_path="./bulk-downloader-for-reddit/script.py"
# Enter the full path of where you want the files to end up.
target_path="/path/to/target"
# Where the files will go (should match first script prompt)
downloads_path="/path/to/downloads"

python3 $script_path

cd $downloads_path
# Having LOG_FILES breaks the push/pop stack so this is deleted.
rm -rf LOG_FILES
dirlvl=0;
for d in */;
do 
    # Checks if there's any subdirectories in the current directory.
    ls -d */ >/dev/null 2>&1 ;
    if [ $? == 0 ]; 
    then 
        pushd $d
        ((dirlvl++))
	# Add or remove filetypes in the bracket as needed
        rsync -arPv ./*.{jpg,png} $target_path/.
        echo $dirlvl
    else
        dirlvl=0;
        echo $dirlvl
        popd
    fi
done
