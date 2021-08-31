install-software:
	ansible-playbook -i inventory.ini --vault-password-file vault-password -t install playbook.yml

deploy:
	ansible-playbook -i inventory.ini --vault-password-file vault-password -t deploy playbook.yml

ansible-install:
	ansible-galaxy collection install -r requirements.yml
	ansible-galaxy role install -r requirements.yml	

vault-file = group_vars/webservers/vault.yml

encrypt-vault:
	ansible-vault encrypt $(vault-file) --vault-password-file vault-password

decrypt-vault:
	ansible-vault decrypt $(vault-file) --vault-password-file vault-password

view-vault:
	ansible-vault view $(vault-file) --vault-password-file vault-password