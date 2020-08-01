echo "extracting all tgz file in directory - $1 to directory $2"
cd $2
for file_name in "$1"/*
do
case "$file_name" in
*.tgz )
    echo "extracting file - $file_name"
    tar -xvf "$file_name"
        ;;
*.tar.gz )
    echo "extracting file - $file_name"
    tar -xvzf "$file_name"
        ;;
esac
done