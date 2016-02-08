# postfix docker


## building 

`build -t postfix .`


## running

`docker run -d -p 25:25 -p 587:587 --name postfix paxmanchris/postfix`

see also: docker_run.sh

## editing

postfix is started by supervisor. logs will be in /var/log/supervisor. configure postfix in /etc/postfix



