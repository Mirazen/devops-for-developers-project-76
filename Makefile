install-requirements:
	ansible-galaxy install -r requirements.yml

setup:
	ansible-playbook -i inventory.ini playbook.yml --vault-password-file vault-password

deploy:
	ansible-playbook -i inventory.ini playbook.yml --tags deploy --vault-password-file vault-password

encrypt:
	ansible-vault encrypt group_vars/webservers/vault.yml --vault-password-file vault-password

edit-vault:
	ansible-vault edit group_vars/webservers/vault.yml --vault-password-file vault-password