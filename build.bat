@echo off
git clone https://github.com/GalaxyGamingBoy/ts-db-manager-api.git
cd .\ts-db-manager-api
cmd /C "npm install"
cmd /C "npm run build"
cd ..\
copy .\ts-db-manager-api\server.js .
git clone https://github.com/GalaxyGamingBoy/vue-db-manager.git
cd vue-db-manager 
cmd /C "npm install"
cmd /C "npm run build"
cd ..
robocopy .\vue-db-manager\dist\ .\frontend\ /E
exit