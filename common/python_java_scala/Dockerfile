FROM python:3.7-stretch
LABEL author="vipin indoria"
LABEL version="0.1"

# Specify the Versions & variables for the base image
ENV TOOLS_HOME=/workspace/softwares
ENV SCRIPTS_HOME=/workspace/softwares/install_scripts
ENV JAVA_HOME=/workspace/softwares/java
ENV SCALA_HOME=/workspace/softwares/scala

# Create a directory in docker
RUN mkdir -p $TOOLS_HOME
RUN mkdir -p $SCRIPTS_HOME

COPY temp_softwares/* $TOOLS_HOME/
COPY utility_scripts/* $SCRIPTS_HOME/

RUN bash $SCRIPTS_HOME/compressed_file_extractor.sh $TOOLS_HOME $TOOLS_HOME && rm $TOOLS_HOME/*.tgz && rm $TOOLS_HOME/*.tar.gz
RUN mv $TOOLS_HOME/scala* $TOOLS_HOME/scala && mv $TOOLS_HOME/jdk* $TOOLS_HOME/java

# Add path in bashrc file
RUN bash $SCRIPTS_HOME/set_env_variables.sh $TOOLS_HOME/java $TOOLS_HOME/scala