FROM ubuntu:20.04
LABEL maintainer="Martin Tilma"

# create one layer, add ansible and python-cs (Cloudstack module) and cleanup
RUN apt update && \
    apt -y install software-properties-common && \
    apt -y install ssh python3 python3-cs python3-sshpubkeys python3-boto python3-boto3 python3-pip && \
    apt-get clean all && \
    pip3 install --no-cache-dir --no-compile ansible && \
    rm -rf /var/lib/apt/lists/*;

WORKDIR /ansible/

CMD ["bash"]
