echo "Setting environment variables."

echo "#QFS" >> ~/.bashrc
echo "export QFS_HOME=$1" >> ~/.bashrc
echo "export PATH=\$QFS_HOME/bin:\$QFS_HOME/bin/tools:\$PATH" >> ~/.bashrc

source ~/.bashrc

echo "Path setting completed successfully!"