# How to get Started.
* Setting your hosts file in "ansible/inventory/hosts".
* To choose the role that you want to deploy "ansible/site".
* Modify variable for choose kubenetes and docker version in "ansible/inventory/group_vars/all/vars.yaml".
# To build your docker env.
`docker build -t ansible-deploy-node:0.1 .`
# Run you docker env and mount ansible script in docker.
```
cd ansible
docker run -tid --name ansible -v $(pwd):/ansible ansible-deploy-node:0.1 /bin/bash
```
# get into contaienr.
`docker exec -ti ansible /bin/bash`
# go to mount point.
`cd /ansible`
# run ansible.
`ansible-playbook site.yml --extra-vars "ansible_sudo_pass={ROOT_PATH}"`
