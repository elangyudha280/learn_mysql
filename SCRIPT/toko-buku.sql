

create database toko_buku_camakara;

use toko_buku_camakara;
show ENGINES;

create table buku (
	id int  primary key auto_increment,
	judul varchar(255) not null,
	penulis varchar(255) not null,
	harga int,
	stock int
)

create table pelanggan (
	id int  primary key auto_increment,
	nama varchar(255) not null,
	email varchar(255) not null,
	noHP int
)

alter table buku 
--  add column tahun_terbit year not null
-- change column testing2  testing varchar(255) not null default ''
modify column tahun_terbit YEAR not null after penulis
-- drop column testing

alter table pelanggan 
--  add column created_at timestamp not null default current_timestamp
modify noHP int after email

show tables;
show create table buku;
desc buku
desc pelanggan

insert into buku (judul,tahun_terbit,penulis,harga,stock) values  ('filosofi teras','2018','Henry Manampiring',60000,100),
('anatomic habit','2018','James Clear',70000,50),
('Madilog','1943','Tan Malaka',100000,30),
('The Psychology of Money','2020','Morgan Housel',90000,30),
('Aksi Massa','1926','Tan Malaka',100000,30)

truncate buku

select * from buku


insert into pelanggan(nama,email) values ('elang yudha','elang@gmail.com'), ('helmi','helmi@gmail.com'),
('pram','pram@gmail.com'),
('raihan','raihan@gmail.com'),
('raka','raka@gmail.com'),
('azka','azka@gmail.com'),
('reja','reja@gmail.com'),
('ajung','ajun@gmail.com'),
('nopal','nopal@gmail.com')


truncate pelangga

select * from pelanggan
-- select id as idPelanggan, nama as 'nama pelanggan'  from pelanggan

update pelanggan set noHP = null  where id =1 

delete from pelanggan where nama = 'reja'