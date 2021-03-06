FROM alpine:3.9
ENV AWS_CLI_VERSION "1.16.260"
ADD https://bootstrap.pypa.io/get-pip.py /tmp
RUN apk -v --update add \
        python3 \
        groff \
        less \
        mailcap && \
    python3 /tmp/get-pip.py && \
    pip install --upgrade awscli==${AWS_CLI_VERSION} python-magic && \
    pip uninstall -y pip setuptools && \
    rm /var/cache/apk/* /tmp/*
VOLUME /root/.aws
VOLUME /project
WORKDIR /project
ENTRYPOINT ["aws"]