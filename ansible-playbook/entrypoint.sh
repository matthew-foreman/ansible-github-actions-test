#!/usr/env/bin bash

# echo "$VAULT_PASS" > ~/.vault_pass.txt
# mkdir ~/.ssh
# ansible-vault --vault-password-file ~/.vault_pass.txt view ansible/ssh_key.txt.secret > ~/.ssh/id_rsa
# chmod 0600 ~/.ssh/id_rsa

# if we are using an ansible account to store secrets
if [ ! -z "$ANSIBLE_VAULT_PASSWORD" ]
then
      echo $ANSIBLE_VAULT_PASSWORD >> .vault;
      ansible-playbook $PLAYBOOK -i $2 --vault-password-file .vault;
      rm .vault
else
      ansible-playbook $PLAYBOOK -i $2
fi