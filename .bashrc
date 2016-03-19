#
# ~/.bashrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

alias ls='ls --color=auto'
PS1='[\u@\h \W]\$ '

export PATH="~/.composer/vendor/bin:/usr/local/p/versions/python:$PATH"

assignProxy(){
   PROXY_ENV="http_proxy ftp_proxy https_proxy all_proxy HTTP_PROXY HTTPS_PROXY FTP_PROXY ALL_PROXY"
   for envar in $PROXY_ENV
   do
     export $envar=$1
   done
   for envar in "no_proxy NO_PROXY"
   do
      export $envar=$2
   done
 }

 clrProxy(){
   assignProxy "" # This is what 'unset' does.
 }

 setProxy(){
   user=
   read -p "Password: " -s pass &&  echo -e " "
   proxy_value="http://gwice.ufrrj.br:3128"
   no_proxy_value="localhost,127.0.0.1,LocalAddress,LocalDomain.com"
   assignProxy $proxy_value $no_proxy_value
 }
