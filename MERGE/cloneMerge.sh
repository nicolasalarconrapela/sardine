# !/bin/bash

echo 'Elimininando'
rm -rf Sardine_Origin Sardine_Propio_01 Sardine_Propio_Master

echo 'Clonando'
# git clone https://github.com/lookfirst/sardine.git Sardine_Origin
# git clone -b DevOps_NAR_01 https://github.com/nicolasalarconrapela/sardine.git Sardine_Propio_01
git clone -b master https://github.com/nicolasalarconrapela/sardine.git Sardine_Propio_Master

echo 'Actualizando'
cd Sardine_Propio_Master/
git remote add upstream https://github.com/lookfirst/sardine.git
git fetch upstream
git rebase upstream/master

echo 'Mergeando'
git co DevOps_NAR_01
git merge master
git co master