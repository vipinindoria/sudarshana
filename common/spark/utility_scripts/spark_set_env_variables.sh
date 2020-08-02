echo "Setting environment variables."

echo "#Spark" >> ~/.bashrc
echo "export SPARK_HOME=$1" >> ~/.bashrc
echo "export PATH=\$SPARK_HOME/bin:\$PATH" >> ~/.bashrc

source ~/.bashrc

echo "Path setting completed successfully!"