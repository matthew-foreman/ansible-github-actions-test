FROM matthewforeman/ansible-in-containers
ARG containerPath
ARG playbook
ARG inventory
WORKDIR $containerPath
COPY . /

ENV PLAYBOOK=$playbook INVENTORY=$inventory
ENTRYPOINT [ "/entrypoint.sh" ]
