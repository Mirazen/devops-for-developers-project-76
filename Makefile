install-requirements:
	ansible-galaxy install -r requirements.yml

setup:
	ansible-playbook -i inventory.ini playbook.yml

deploy:
	ansible-playbook -i inventory.ini playbook.yml --tags deploy