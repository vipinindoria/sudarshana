FROM python:3.7-stretch
LABEL author="vipin indoria"
LABEL version="0.1"

# Tunning of os
RUN apt-get update \
 && apt-get install -y locales \
 && dpkg-reconfigure -f noninteractive locales \
 && locale-gen C.UTF-8 \
 && /usr/sbin/update-locale LANG=C.UTF-8 \
 && echo "en_US.UTF-8 UTF-8" >> /etc/locale.gen \
 && locale-gen \
 && apt-get clean \
 && rm -rf /var/lib/apt/lists/*

ENV LANG en_US.UTF-8
ENV LANGUAGE en_US:en
ENV LC_ALL en_US.UTF-8

RUN apt-get update \
 && apt-get install -y less curl unzip procps \
    libboost-regex-dev \
 && pip3 install py4j \
 && apt-get clean \
 && rm -rf /var/lib/apt/lists/*

ENV PYTHONIOENCODING UTF-8
ENV PIP_DISABLE_PIP_VERSION_CHECK 1

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
RUN bash $SCRIPTS_HOME/java_scala_set_env_variables.sh $TOOLS_HOME/java $TOOLS_HOME/scala