FROM spark:v1.0
LABEL author="vipin indoria"
LABEL version="0.1"

COPY utility_scripts/* ${SCRIPTS_HOME}/

RUN mkdir /tmp/spark-events

CMD /bin/bash  ${SCRIPTS_HOME}/start_spark_master.sh