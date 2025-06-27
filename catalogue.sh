source common.sh
component = catalogue
nodejs
dnf install mongodb-mongosh -y
mongosh --host 54.87.232.175 </app/db/master-data.js