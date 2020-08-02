FROM python_java_scala:3.7-1.8-2.12-stretch
LABEL author="vipin indoria"
LABEL version="0.1"

# Specify the Versions & variables for the base image
ENV QFS_HOME=/workspace/softwares/qfs
ENV QFS_LOGS_DIR /workspace/data/qfs/logs
ENV LD_LIBRARY_PATH ${QFS_HOME}/lib

RUN mkdir -p /workspace/data/qfs/

COPY temp_softwares/* $TOOLS_HOME/
COPY utility_scripts/* $SCRIPTS_HOME/

RUN bash $SCRIPTS_HOME/compressed_file_extractor.sh $TOOLS_HOME $TOOLS_HOME && rm $TOOLS_HOME/*.tgz
RUN mv $TOOLS_HOME/qfs* $TOOLS_HOME/qfs

# Add path in bashrc file
RUN bash $SCRIPTS_HOME/qfs_set_env_variables.sh $TOOLS_HOME/qfs