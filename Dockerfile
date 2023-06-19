FROM python:3.11-slim

USER root

WORKDIR /tmp

RUN pip install ansible ansible-lint

RUN ansible-galaxy collection install community.general

ENTRYPOINT ["/usr/local/bin/ansible-lint"]