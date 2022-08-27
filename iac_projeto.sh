#!/bin/bash

echo "Diretórios sendo criados."

mkdir /publico
mkdir /adm
mkdir /ven
mkdir /sec

echo "Diretórios criados."

echo "Grupos de usuários sendo criados."

groupadd GRP_ADM
groupadd GRP_VEN
groupadd GRP_SEC

echo "Grupos criados."

echo "Usuários sendo criadose designados aos seus grupo."

useradd carlos -m -s /bin/bash -p $(openssl passwd -crypt 123) -G GRP_ADM
useradd maria -m -s /bin/bash -p $(openssl passwd -crypt 123) -G GRP_ADM
useradd joao -m -s /bin/bash -p $(openssl passwd -crypt 123) -G GRP_ADM
useradd denora -m -s /bin/bash -p $(openssl passwd -crypt 123) -G GRP_VEN
useradd sebastiana -m -s /bin/bash -p $(openssl passwd -crypt 123) -G GRP_VEN
useradd roberto -m -s /bin/bash -p $(openssl passwd -crypt 123) -G GRP_VEN
useradd josefina -m -s /bin/bash -p $(openssl passwd -crypt 123) -G GRP_SEC
useradd amanda -m -s /bin/bash -p $(openssl passwd -crypt 123) -G GRP_SEC
useradd rogerio -m -s /bin/bash -p $(openssl passwd -crypt 123) -G GRP_SEC

echo "Usuários criados."

echo "Permissões dos diretórios."

chown root:GRP_ADM /adm
chown root:GRP_VEN /ven
chown root:GRP_SEC /sec

chmod 777 /publico
chmod 770 /adm
chmod 770 /ven
chmod 770 /sec

echo "execução finalizada"
