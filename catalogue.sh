dnf module list
dnf moduel disable nodejs -y
dnf module enable nodejs:20 -y
dnf install nodejs -y
cp catalogue.sevice /etc/systemd/system.catalogue.service
systemctl enable catalogue
systemctl start catalogue
useradd roboshop
rm -rf /app
mkdir /app
curl -o /tmp/catalogue.zip https://roboshop-artifacts.s3.amazonaws.com/catalogue-v3.zip
cd /app
unzip /tmp/catalogue.zip
cd /app
npm install
systemctl daemon-reload
dnf install mongodb-mongosh -y
mongosh --host 54.87.232.175 </app/db/master-data.js