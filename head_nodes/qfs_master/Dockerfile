FROM qfs-worker:v1.0
LABEL author="vipin indoria"
LABEL version="0.1"

RUN apt-get update \
 && apt-get install -y wget vim openssh-client \
 && apt-get clean \
 && rm -rf /var/lib/apt/lists/*

# set configuration
COPY conf/* ${QFS_HOME}/conf/
COPY utility_scripts/* ${SCRIPTS_HOME}/

# create some useful bash aliases for when at bash shell prompt of this image
RUN echo 'export PATH=$PATH:$QFS_HOME/bin/:$QFS_HOME/bin/tools/' >> ~/.bash_aliases \
 && echo 'alias qfs="qfs -fs qfs://qfs-master:20000 -D fs.trash.minPathDepth=2 -D fs.createParams=2"' >> ~/.bash_aliases \
 && echo 'alias cptoqfs="cptoqfs -s qfs-master -p 20000"' >> ~/.bash_aliases \
 && echo 'alias cpfromqfs="cpfromqfs -s qfs-master -p 20000"' >> ~/.bash_aliases \
 && echo 'alias qfsshell="qfsshell -s qfs-master -p 20000"' >> ~/.bash_aliases \
 && echo 'alias qfsfsck="qfsfsck -s qfs-master -p 20000"' >> ~/.bash_aliases \
 && echo 'alias qfsfileenum="qfsfileenum -s qfs-master -p 20000"' >> ~/.bash_aliases

COPY loop.py /
CMD ["python3", "loop.py"]
#CMD /bin/bash  ${SCRIPTS_HOME}/start_qfs_master.sh