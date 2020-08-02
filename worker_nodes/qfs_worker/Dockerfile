FROM qfs:v1.0
LABEL author="vipin indoria"
LABEL version="0.1"

# set configuration
COPY conf/* ${QFS_HOME}/conf/
COPY utility_scripts/* ${SCRIPTS_HOME}/

CMD /bin/bash  ${SCRIPTS_HOME}/start_qfs_worker.sh