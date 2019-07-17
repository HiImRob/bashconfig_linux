# docker

> functions

- dps

`docker ps -a`

- dpslike

`docker ps -a --filter name=$1`

- dockerclean

`docker images | grep '<none>' | awk '{print $3}' | xargs docker rmi"`

- dstoprmall

`docker stop $(docker ps -a -q)`
`docker rm $(docker ps -a -q)`

- dstoprm

`docker rm $(docker stop $1)`

- dvolclean

`docker volume rm $(docker volume ls -qf dangling=true)`

- drmstopped

`docker ps -a | grep 'Exited' | awk '{print $1}' | xargs --no-run-if-empty docker rm`

- dimglike

`docker images | grep -i $1`

- dimglikerm

`dockerImageGrep $1 | awk '{print $3}' | xargs docker rmi`

- dstats

`docker stats $(docker ps --format '{{.Names}}')`

- dlogsclean

`sudo truncate -s 0 /var/lib/docker/containers/*/*-json.log`
