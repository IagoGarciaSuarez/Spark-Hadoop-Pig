FROM ubuntu:latest

# Instalar Java, SSH y otras dependencias
RUN apt-get update && \
    apt-get install -y openjdk-8-jdk wget ssh pdsh

# Configurar variables de entorno para Java
ENV JAVA_HOME=/usr/lib/jvm/java-8-openjdk-amd64
ENV PATH=$PATH:$JAVA_HOME/bin

# Descargar e instalar Hadoop
RUN wget https://downloads.apache.org/hadoop/common/hadoop-3.3.5/hadoop-3.3.5.tar.gz && \
    tar -xzvf hadoop-3.3.5.tar.gz && \
    mv hadoop-3.3.5 /usr/local/hadoop && \
    rm hadoop-3.3.5.tar.gz

# Configurar variables de entorno para Hadoop
ENV HADOOP_HOME=/usr/local/hadoop
ENV PATH=$PATH:$HADOOP_HOME/bin:$HADOOP_HOME/sbin

# Descargar e instalar Spark
RUN wget https://downloads.apache.org/spark/spark-3.4.2/spark-3.4.2-bin-hadoop3.tgz && \
    tar -xzf spark-3.4.2-bin-hadoop3.tgz && \
    mv spark-3.4.2-bin-hadoop3 /usr/local/spark && \
    rm spark-3.4.2-bin-hadoop3.tgz

# Configurar variables de entorno para Spark
ENV SPARK_HOME=/usr/local/spark
ENV PATH=$PATH:$SPARK_HOME/bin

# Descargar e instalar Pig
RUN wget https://downloads.apache.org/pig/pig-0.17.0/pig-0.17.0.tar.gz && \
    tar -xzf pig-0.17.0.tar.gz && \
    mv pig-0.17.0 /usr/local/pig && \
    rm pig-0.17.0.tar.gz

# Configurar variables de entorno para Pig
ENV PIG_HOME=/usr/local/pig
ENV PATH=$PATH:$PIG_HOME/bin

# Copiar archivos de configuración y scripts (si los tienes) a tu contenedor

CMD ["bash"]