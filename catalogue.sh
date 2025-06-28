source common.sh
component=catalogue
nodejs
dnf install mongodb-mongosh -y
mongosh --host MONGODB-SERVER-IPADDRESS </app/db/master-data.js