### Hexlet tests and linter status:
[![Actions Status](https://github.com/nightlord189/devops-for-programmers-project-lvl2/workflows/hexlet-check/badge.svg)](https://github.com/nightlord189/devops-for-programmers-project-lvl2/actions)

### Example:
https://redmine.hexpro.xyz

### Requirements:
1. Docker installed

### Settings
1. You can edit target hosts in **inventory.ini** file
1. You can edit ports and deploy settings in **playbook.yml**

### Deploy:
1. Install Ansible
2. Install required Ansible collections/roles:
```
make install
```
3. Deploy app to your target hosts:
```
make deploy
```
4. Open app:   
[http://<your_host>:3000](http://<your_host>:3000)