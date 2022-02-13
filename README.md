# OTUS-SRE

This project contains code for creating local enviroment with `vagrant` and deploy flask application in `docker` image with `ansible`.

![vagrant version](https://img.shields.io/badge/vagrant-~2.2-blue)
![ansible version](https://img.shields.io/badge/ansible-~2.10-green)
![docker version](https://img.shields.io/badge/docker-~20.10-lightgrey)

---

## Diagrams

![web app scheme](/diagrams/app.png)

---
## Installation

### Vagrant
For Ubuntu/Debian:
```bash
curl -fsSL https://apt.releases.hashicorp.com/gpg | sudo apt-key add -
sudo apt-add-repository "deb [arch=amd64] https://apt.releases.hashicorp.com $(lsb_release -cs) main"
sudo apt-get update && sudo apt-get install vagrant -y
```
Or use the official documentation for your OS and vagrant provider - [https://www.vagrantup.com/docs/installation](https://www.vagrantup.com/docs/installation).

### Vagrant for libvirt
> I use vagrant with libvirt and test project with this provider 
```
vagrant plugin install vagrant-libvirt
```
More - https://github.com/vagrant-libvirt/vagrant-libvirt

### Ansible
For Ubuntu/Debian:
```bash
sudo apt-get install ansible -y
```
Or use the official documentation for your OS - [https://docs.ansible.com/ansible/latest/installation_guide/intro_installation.html](https://docs.ansible.com/ansible/latest/installation_guide/intro_installation.html)

---
## Usage

Running this project
```bash
vagrant up
```
and open this link http://192.168.121.10

### Adding new code
Application code stored in [app](./app) directory. After changing the application, you need to rebuild docker image

```
docker build -t <image>:<version> .
```

for example
```
docker build -t somikhaylov/flask-crud:v0.0.1 .
```

and push image in docker hub
```
docker login
docker push <image>:<version>
```

### Deploy application

set image and version in [site.yml](./ansible/site.yml)
```
  vars:
    image: somikhaylov/flask-crud
    version: v0.0.1 
```

application deploying automatically then your create local enviroment
```
vagrant up
```
if you want deploy application when enviroment created, use
```
vagrant provision
```

if your want use ansible manually
```
ansible-playbook ansible/site.yml --tags app
```

or set `ANSIBLE_CONFIG`
```
ANSIBLE_CONFIG=ansible.cfg ansible-playbook ansible/site.yml --tags ap
```

### Destroy
```
vagrant destroy
```

---

## License
[MIT](https://choosealicense.com/licenses/mit/)