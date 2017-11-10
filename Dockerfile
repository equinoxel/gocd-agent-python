FROM gocd/gocd-agent-ubuntu-16.04:v17.11.0
 
# runtime dependencies
RUN apt-get update && apt-get install -y --no-install-recommends \
        tcl \
        tk \
        python2.7 \
        wget \
        apt-utils \
        build-essential \
        libssl-dev libffi-dev python2.7-dev \
    && rm -rf /var/lib/apt/lists/*
 
RUN \
    apt-get remove python-pip python3-pip \
# Install a newer version of pip
    ; wget https://bootstrap.pypa.io/get-pip.py \
    && python get-pip.py \
    && /usr/local/bin/pip install virtualenv
