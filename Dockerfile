FROM dockerfile/ubuntu

# Environment variables

ENV BERKELEY_VERSION48 4.8.30.NC
ENV BERKELEY_VERSION51 5.1.29.NC

# Download, configure and install BerkeleyDB 4.8
RUN wget -P /tmp http://download.oracle.com/berkeley-db/db-"${BERKELEY_VERSION48}".tar.gz && \
    tar -xf /tmp/db-"${BERKELEY_VERSION48}".tar.gz -C /tmp && \
    rm -f /tmp/db-"${BERKELEY_VERSION48}".tar.gz
RUN cd /tmp/db-"${BERKELEY_VERSION48}"/build_unix && \
    ../dist/configure && make && make install
    
# Download, configure and install BerkeleyDB 5.1
RUN wget -P /tmp http://download.oracle.com/berkeley-db/db-"${BERKELEY_VERSION51}".tar.gz && \
    tar -xf /tmp/db-"${BERKELEY_VERSION51}".tar.gz -C /tmp && \
    rm -f /tmp/db-"${BERKELEY_VERSION51}".tar.gz
RUN cd /tmp/db-"${BERKELEY_VERSION51}"/build_unix && \
    ../dist/configure && make && make install
