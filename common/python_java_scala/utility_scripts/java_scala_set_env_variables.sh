echo "Setting environment variables."

echo "####################### - User - ########################" >> ~/.bashrc

echo "#Java" >> ~/.bashrc
echo "export JAVA_HOME=$1" >> ~/.bashrc
echo "export PATH=\$JAVA_HOME/bin:\$PATH" >> ~/.bashrc

echo "#Scala" >> ~/.bashrc
echo "export SCALA_HOME=$2" >> ~/.bashrc
echo "export PATH=\$SCALA_HOME/bin:\$PATH" >> ~/.bashrc

source ~/.bashrc

echo "Path setting completed successfully!"