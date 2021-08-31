### Hexlet tests and linter status:
[![Actions Status](https://github.com/nightlord189/devops-for-programmers-project-lvl2/workflows/hexlet-check/badge.svg)](https://github.com/nightlord189/devops-for-programmers-project-lvl2/actions)

### Example:
https://redmine.hexpro.xyz

### Requirements:
1. Docker installed on target host
2. Ansible installed on your local machine

### Setup
1. Edit target hosts in **inventory.ini** file
1. Edit list of required packages at **install-playbook.yml**
1. Edit ports and deploy settings at **deploy-playbook.yml**
1. Edit db and monitoring settings at **group_vars/all**
1. To edit secrets run commands:
```
touch vault-password
### type password to vault-password
make decrypt-vault
### edit group_vars/webservers/vault.yml
make encrypt-vault
```

### Deploy:
1. Install Ansible
2. Install required Ansible collections/roles:
```
make install
```
3. Install software to target hosts:
```
make install-software
```
3. Deploy app to your target hosts:
```
make deploy
```
4. Open app:   
[http://<your_host>:3000](http://<your_host>:3000)