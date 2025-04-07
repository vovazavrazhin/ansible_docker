FROM alpine:latest

RUN apk add --no-cache ansible sshpass openssh

WORKDIR /ansible

COPY playbook.yml inventory.ini ansible.cfg ./

RUN chmod 755 /ansible

RUN ansible-config dump --only-changed

ENTRYPOINT ["sh", "-c"]
CMD ["ansible-playbook -i inventory.ini playbook.yml -e ansible_host=$ANSIBLE_HOST -e ansible_password=$ANSIBLE_PASSWORD -e ansible_user=$ANSIBLE_USER"]
