

create database toko_buku_camakara;

use toko_buku_camakara;

show ENGINES;
show tables;


create table buku (
	id int  primary key auto_increment,
	judul varchar(255) not null,
	id_penulis int not null,
	id_category int not null,
	harga int,
	tahun_terbit year not null,
	stock int,
	
	constraint fk_id_penulis FOREIGN KEY  (id_penulis) references penulis(id),
	constraint fk_id_kategori FOREIGN KEY  (id_category) references kategori_buku(id)
)

create table penulis (
	id int primary key auto_increment,
	nama_penulis varchar(255) not null,
	negara_asal varchar(255)
)

create table kategori_buku (
	id int primary key auto_increment,
	nama_kategori varchar(255) not null
)

insert into kategori_buku (nama_kategori) values ('fiksi'), ('non-fiksi')

insert into penulis (nama_penulis) values ('test')

insert into buku (judul,id_penulis,id_category,harga,tahun_terbit,stock) values ('test',3,2,100000,'1943',50)

update buku set id_penulis = 2 where id = 4

-- delete from penulis where id = 5

truncate buku

show tables

desc kategori_buku

desc buku

select * from kategori_buku

select * from penulis

select * from buku;


delete from buku where judul = 'test'

-- SELECT buku WITH IF CONDITION FUNCTION
-- select judul, if(harga > 100000,'elite',if(harga < 50000,'murah','mid')) as 'type harga' from buku 

-- SELECT buku WITH case CONDITION FUNCTION
select judul,tahun_terbit , case 
	when tahun_terbit < 2010 then 'under_2010'
	when tahun_terbit < 2020 then 'under_2020'
	else 'above_2020'
end as 'bookyear'
from buku

-- select count(judul) from buku
-- select min(harga) from buku
-- select max(id_penulis) from buku
-- select sum(harga) as'total_harga_semua_buku' from  buku
-- select avg(judul) as'rata-rata-harga-buku' from buku


-- aggreate function with group and having 
-- select count(id) as 'total buku', id_penulis from buku group by id_penulis order by id asc;
-- select sum(harga) as 'total_harga_buku_perpenulis', id_penulis from buku group by id_penulis

-- select sum(harga) as total_harga_buku_perpenulis , id_penulis from buku group by id_penulis  having total_harga_buku_perpenulis > 50000

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


-- truncate pelangga
insert into penulis (nama_penulis) values ('test')

insert into buku (judul,id_penulis,id_category,harga,tahun_terbit,stock) values ('test3',6,
2,2000,2020,1)

delete from buku where judul = 'test2' or judul ='test3';

alter table buku 
add constraint  fk_id_penulis foreign key (id_penulis) references penulis(id) on delete cascade on update cascade;

-- drop constraint fk_id_penulis
desc buku;
desc kategori_buku;
desc penulis

select * from kategori_buku

select * from penulis

select * from buku;


-- JOIN
-- get all data

select * from buku join penulis on (buku.id_penulis = penulis.id) left join kategori_buku  on (buku.id_category = kategori_buku.nama_kategori)


-- sub query

select judul,harga, harga div 1000 as 'price in K'  from buku where harga <  (select max(harga) from buku)



select judul,harga, harga div 1000 as 'price in K'  from buku where id_penulis s (select id from penulis)




