deploy:
	ansible-playbook playbook.yml -i inventory.ini

install:
	ansible-galaxy collection install -r requirements.yml