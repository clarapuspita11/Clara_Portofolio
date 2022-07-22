create database interview;
use interview;

create table negara(
id int not null primary key auto_increment,
nama_negara char(25) not null unique,
aktif enum('Yes','No') default 'Yes'
);

insert into negara (nama_negara)values('Negara A'),('Negara B'),('Negara C');

create table propinsi(
id int not null primary key auto_increment,
negara_id int not null,
nama_propinsi char(25) not null unique,
aktif enum('Yes','No') default 'Yes',
foreign key (negara_id) references negara(id)
);

insert into propinsi (negara_id, nama_propinsi, aktif)values
(1, 'Propinsi A-1','Yes'),(1, 'Propinsi A-2','Yes'),(1, 'Propinsi A-3','Yes'),
(2, 'Propinsi B-1','No'),(2, 'Propinsi B-2','Yes'),
(3, 'Propinsi C-1','Yes'),(3, 'Propinsi C-2','Yes'),(3, 'Propinsi C-3','Yes'),(3, 'Propinsi C-4','No');

create table kota(
id int not null primary key auto_increment,
propinsi_id int not null,
nama_kota char(25) not null unique,
aktif enum('Yes','No') default 'Yes',
foreign key (propinsi_id) references propinsi(id)
);

insert into kota(propinsi_id, nama_kota, aktif)values
(1, 'Kota A-1-1','Yes'),(1, 'Kota A-1-2','Yes'),
(2, 'Kota A-2-1','No'),(2, 'Kota A-2-2','Yes'),
(3, 'Kota A-3-1','Yes'),(3, 'Kota A-3-2','Yes'),
(4, 'Kota A-4-1','No'),(4, 'Kota A-4-2','Yes'),
(5, 'Kota A-5-1','Yes'),
(6, 'Kota A-6-1','Yes'),
(7, 'Kota A-7-1','Yes'),
(8, 'Kota A-8-1','Yes'),
(9, 'Kota A-9-1','Yes');
