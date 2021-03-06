#!/bin/bash

## Define as cores ue serão usadas
verm="\033[1;31m"
verde="\033[1;32m"
amarelo="\033[1;33m"
azul="\033[1;34m"
branco="\033[0;37m"
NORMAL="\033[m"
ciano="\033[01;36m"

## Obtém o diretório home do usuário que não é root
usr=`users`
usuario=`echo ${usr##* }`
homeUser=`cat /etc/passwd |grep ^$usuario | cut -d : -f 6`
versaoKS="3.6"

## Obter o horário atual para gerar logs
horarioAtual=`date +%H_%M_%S`
pastaLogs="/var/log/KnifeSystem"

## Verifica a arquitetura do sistema
arch=`uname -m`

## Variáveis de programas online que não
## estão disponíveis nos repositórios oficiais
conky64="https://www.dropbox.com/s/of4pehd4ky4v418/conky-manager_2.4-136-ubuntu16.04.1_amd64.deb?dl=0"
conky32="https://www.dropbox.com/s/gl7fboel7p622xz/conky-manager_2.4-136-ubuntu16.04.1_i386.deb?dl=0"
skype32="https://www.dropbox.com/s/1akgb1bivoblz7g/skype-debian_4.3.0.37-1_i386.deb?dl=0"
chrome64="https://www.dropbox.com/s/61tpxbl9eacfll9/google-chrome-stable_current_amd64.deb?dl=0"
atom64="https://www.dropbox.com/s/s2otjos45sigrp5/atom-amd64.deb?dl=0"
teamViewer="https://www.dropbox.com/s/ndetirgopzc4vcj/teamviewer_12.0.76279_i386.deb?dl=0"
video32="https://www.dropbox.com/s/lo6yaqztq9e6hy8/4kvideodownloader_4.1-1_i386.deb?dl=0"
video64="https://www.dropbox.com/s/3ha6d9tjhus6x9a/4kvideodownloader_4.1-1_amd64.deb?dl=0"
sublime64="https://www.dropbox.com/s/89jqnnessefbjn6/sublime-text_build-3126_amd64.deb?dl=0"
sublime32="https://www.dropbox.com/s/m7dzmfzfut8wb7y/sublime-text_build-3126_i386.deb?dl=0"
pycharmPro="https://www.dropbox.com/s/8qg98lz1ls8ipo4/pycharm-professional-2016.2.3.tar.gz?dl=0"
pycharmCom="https://www.dropbox.com/s/ddhhq3lmqjqo5sv/pycharm-community-2016.2.3.tar.gz?dl=0"
earth64="https://www.dropbox.com/s/lm88k992eto51vw/google-earth-stable_current_amd64.deb?dl=0"
earth32="https://www.dropbox.com/s/d0zubhqb322ys2v/google-earth-stable_current_i386.deb?dl=0"
