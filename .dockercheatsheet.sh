#!/usr/bin/env bash

# for bash in OSX, source in ~/.bash_profile
dockerPsLike() {
  docker ps -a --filter name=$1
}

dockerPsLikeIdOnly() {
  docker ps -a -q --filter name=$1
}

dockerImageGrep() {
  docker images | grep -i $1
}

dockerImageGrepRm() {
  dockerImageGrep $1 | awk '{print $3}' | xargs docker rmi
}

dockerStopAndRm() {
    docker rm $(docker stop $1)
}

dockerStopAndRmAll() {
  docker stop $(docker ps -a -q)
  docker rm $(docker ps -a -q)
}

dockerContainerClean() {
   docker ps -a | grep 'Exited' | awk '{print $1}' | xargs --no-run-if-empty docker rm
}

dockerVolumeClean() {
  docker volume rm $(docker volume ls -qf dangling=true)
}

dockerStats() {
  docker stats $(docker ps --format '{{.Names}}')
}

dockerCleanLogs() {
  sudo truncate -s 0 /var/lib/docker/containers/*/*-json.log
}

dockerCheatHelp() {
  echo -e 'COMMAND\t\tEXECUTE CODE'
  echo -e 'dps\t\t"docker ps -a"'
  echo -e 'dpslike\t\t"docker ps -a --filter name=$1"'
  echo -e 'dockerclean\t"docker images | grep "<none>" | awk '{print $3}' | xargs docker rmi"'
  echo -e 'dstoprmall\t"docker stop $(docker ps -a -q)"'
  echo -e '\t\t"docker rm $(docker ps -a -q)"'
  echo -e 'dstoprm\t\t"docker rm $(docker stop $1)"'
  echo -e 'drmstopped\t\t"docker ps -a | grep 'Exited' | awk '{print $1}' | xargs --no-run-if-empty docker rm"'
  echo -e 'dvolclean\t"docker volume rm $(docker volume ls -qf dangling=true)"'
  echo -e 'dimglike\t"docker images | grep -i $1"'
  echo -e 'dimglikerm\t"dockerImageGrep $1 | awk '{print $3}' | xargs docker rmi"'
  echo -e 'dstats\t\t"docker stats $(docker ps --format '{{.Names}}')"'
  echo -e 'dLogsClean'
}

# connect to docker-machine (uncomment below lines if using docker-machine
#echo 'connecting to docker-machine'
#eval $(docker-machine env)

# handy alias
alias dps="docker ps -a"
alias dpslike=dockerPsLike
alias dockerclean="docker images | grep '<none>' | awk '{print $3}' | xargs docker rmi"
alias dstoprmall=dockerStopAndRmAll
alias dstoprm=dockerStopAndRm
alias dvolclean=dockerVolumeClean
alias drmstopped=dockerContainerClean
alias dimglike=dockerImageGrep
alias dimglikerm=dockerImageGrepRm
alias dstats=dockerStats
alias dlogsclean=dockerCleanLogs
alias dchelp=dockerCheatHelp
