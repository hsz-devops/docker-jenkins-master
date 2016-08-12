FROM jenkinsci/jenkins

USER root
RUN \
    apt-get update && \
    apt-get install -y --no-install-recommends \
        less \
        bash \
        sudo \
        \
        mc \
        htop \
        \
        python3 \
        python3-pip \
    && \
    curl -sL https://deb.nodesource.com/setup_6.x | sudo -E bash - &&\
    apt-get install -y nodejs &&\
    \
    rm -rf /var/lib/apt/lists/*

USER ${user}

#ENTRYPOINT ["/bin/tini", "--", "/usr/local/bin/jenkins.sh"]
