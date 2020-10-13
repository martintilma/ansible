FROM ubuntu:20.04
LABEL maintainer="Martin Tilma"

# create one layer, add ansible and python-cs (Cloudstack module) and cleanup
RUN apt update && \
    apt -y install software-properties-common && \
    apt -y install python3 python3-cs python3-sshpubkeys python3-boto python3-boto3 ansible && \
    apt-get clean all && \
    rm -rf /var/lib/apt/lists/*;

WORKDIR /ansible/

CMD ["bash"]
