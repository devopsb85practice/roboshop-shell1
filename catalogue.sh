dnf module list
dnf moduel disable nodejs -y
dnf module enable nodejs:20 -y
dnf install nodejs -y
cp catalogue.sevice /etc/systemd/system.catalogue.service
useradd roboshop
mkdir /app
curl -o /tmp/catalogue.zip https://roboshop-artifacts.s3.amazonaws.com/catalogue-v3.zip
cd /app
unzip /tmp/catalogue.zip
cd /app
npm install
systemctl daemon-reload
cd ~
systemctl enable catalogue
systemctl start catalogue
dnf install mongodb-mongosh -y
mongosh --host 54.87.232.175 </app/db/master-data.js