# Note-Ansible
Ghi chép tìm hiểu về Ansible

Sử dụng ansible cài đặt wordpress cho Centos7 & Ubuntu

```
install-wp #folder chung
├── default #khai báo các biến dùng chung
│   ├── package.yml
│   ├── port.yml
│   └── var-db.yml #Khai báo các biến  cho Database.
├── handlers
│   └── main.yml
├── install.yml #File chình thực hiện để cài đặt WP
├── log
├── task
│   ├── Centos7 #Tasks cài đặt cho CentOS-7
│   │   ├── apache.yml
│   │   ├── create-db-user.yml
│   │   ├── db.yml
│   │   ├── linux.yml
│   │   ├── msg.yml
│   │   ├── php.yml
│   │   └── setup-wp.yml
│   └── Ubuntu20 #Tasks cài đặt cho Ubuntu
│       ├── apache.yml
│       ├── create-db-user.yml
│       ├── db.yml
│       ├── php.yml
│       └── setup-wp.yml
└── test.yml
```