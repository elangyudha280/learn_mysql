

--! MATERI TABLE DI MYSQL


--! 1. APA ITU TABLE 
/*
    ? TABLE ADLAH KELOMPOK DATA DI DALAM SEBUAH DATABASE 
*/

--? NOTES: STORAGE ENGINES ADALAH SEBUAH MESIN UNTUK MENYIMPAN SEBUAH DATA
--? SHOW ENGINES -> PERINTAH UNTUK MELIHAN ENGINE APA SAJA YG ADA DI MYSQL

--! 2. CARA MEMBUAT TABLE
/*

    --? PERINTAH UNTUK BERINTERAKSI DENGAN TABLE
    * show tables; -> untuk melihat table
    * describe || desc nama_table -> untuk melihat struktur table
    * show create table nama_table untuk melihat strucktur table yg lebih lengkap
    * truncate table nama_table; -> perintah untuk menghapus semua data pada table sekaligus membuat ulang tablenya 
    * drop table nama_table;


    ? BUAT_TABLE    -> DEFINISIKAN_COLUMN_YG_ADA_DI_DALAM_TABLE
    * create table nama_table (
    * nama_column ...column_Definition (contoh kaya tipe data,constraint dll) ,
    * ...nama_Column column_Definition
    * ) ENGINE=NAMA_ENGINE (OPTIONAL DEFAULTNYA INNO DB)

    ? ALTER TABLE -> SEBUAH CARA UNTUK MEMODIFIKASI ATAU BERINTERAKSI DENGAN COLUMN PADA TABLE

    * ALTER TABLE NAMA_TABLE 
    * add column nama_column ...column_Definition, -> untuk menambahkan kolom ke table
    * drop column nama_column, -> utnuk menghapus column pada table
    * modify nama_column ..column_definition, -> untuk memodifikasi kolom
    * change column old_column  new_Column, ...column_definition

    todo: notes: null adalah nilai kosong yg kita berikan ke column
    todo: note: default value adlah nilai default yg kita berikan saat memberikan colomn tipenya not null 

    todo:notes: di column definition pada column saat membuat table  kita bisa berikan not null default default_valuenya -> artinya nanti column tesebut tidak boleh kosong dan default valuenya sesuai dengan yg kita tentukan tadi

    todo: kita bisa berikan default value current_timestamp pada column yg tipe datanya timestamp artinya data yg dimasukan nanti adalah waktu ketika datanya masuk ke database

*/


--! 3. MEMBUAT DATA COLUMN PADA TABLE
/*
    --? SYNTAX
    * INSERT INTO NAMA_TABLE(nama_column,...nama_column) values (value1,...value), ...(value1,...value)

    --? Example
    * INSERT INTO product(nama,deskripsi,harga) values ('barang1','barang1',10000),('barang2','barang2',20000)

*/

--! 4. SELECT DATA COLUMN PADA TABLE
/*

    --? SYNTAX
    --? * -> ARTINYA KITA AKAN MENGAMBIL SEMUA DATA PADA COLUMN TABLE
    * SELECT * || NAMA_COLUMN1,...NAMA_COLUMN FROM NAMA_TABLE

    --?EXAMPLE
    * SELECT * from barang;
    ||
    * select nama,description from barang

*/


--! 5. PRIMARY KEY
/*
    --? PRIMARY KET ADALAH SEBUAH CONSTRAINT ATAU ATRIBUTE UNTUK MEMBUAT COLUMN NILAINYA TIDAK BISA DUPLIKAT ATAU SAMA
    --? BIASNAYA UNTUK MEMBUAT COLUMN UNIK

    --? CARA MENGGUNAKAN PRIMARY KEY
    TODO: GUNAKAN SAAT BUAT TABLE
    * create table nama_table(
        * nama_column primary key,
        ...nama_column
    * )
    * ||
    * create table nama_table(
        * nama_column,
        * ...nama_column
        * primary key(nama_column)
    * )
    * || primary key name
    * create table nama_table(
        * nama_column,
        * ...nama_column
        * CONSTRAINT nama_constraint_PK PRIMARY KEY (nama_column,...nama_column)
    * )

    TODO: GUNAKAN di alter tables
    * alter table nama_table 
    * add primary key nama_column
    * DROP PRIMARY KEY; 
    * || 
    * alter table nama_table 
    *  ADD CONSTRAINT PK_Person PRIMARY KEY (nama_column,...nama_columns); 
    * DROP PRIMARY KEY; 
*/



--! 6. WHERE CLAUSE
/*
    --? SEBUAH CARA ATAU OPERATOR UNTUK MENCARI SEBUAH DATA COLUMN PADA TABLE
    --? where operator adalah sebuah simbol untuk melakukan aksi atau operasi saat mencari data
    TODO: CARA PENGGUNAAN DI LAKUKAN SAAT SELECT DATA

    ? SYNTAX
    * select * from nama_tables WHERE condition (where_operator)

    ? example
    * select * from buku where id = 1 -> ini artinya akan mengambil data buku yg id nya 1 

    ? WHERE OPERATOR adalah sebuah simbol untuk melakukan operasi pencarian data column pada table
    todo: ada banyak where operator lebih lengkap bisa cek di dokumentasinya atau w3c
    --? syntax
    * SELECT column1, column2, ... FROM table_name WHERE condition; 
    ? example
    * Select * from buku where stock <= 50  -> ini artinya kita akan ngambil data buku yg stocknya di bawah atau sama dengan 50

*/


--! 7. UPDATE DATA
/*
    --? UPDATE DATA ADALAH SEBUAH CARA UNTUK MENGUBAH DATA COLUMN PADA TABLE

    ? SYNTAX
     * UPDATE NAMA_TABLE SET NAMA_COLUMNS='value_baru',...NAMA_COLUMNS=value WHERE condition (where_operator)
    ? example
    * update buku set nama = 'buku2', tahun_terbit = '2022' where id = 1 -> ini artinya akan mengupdate data nama dan tahun penerbit pada data yg idnya 1

    TODO: NOTES UNTK WHERE OPERTAOR SEBENERNYA OPTIONAL CMN KLO TIDAK MEMAKAI WHERE OPERATOR ITU BISA MENYEBABKAN UPDATE SEMUA DATA YG ADA DI TABLE 
*/

--! 8. DELETE DATA
/*
    ? DELETE DATA ADALAH SEBUAH CARA UNTUK MENGHAPUS DATA COLUMN PADA TABLE

    --? SYNTAX
    * DELETE FROM table_name WHERE condition (where_operator);
    ? EXAMPLE
    * delete from buku where id = 1 -> ini artinya akan menghapus data buku yg idnya 1

    TODO: NOTES UNTK WHERE OPERATOR SEBENERNYA OPTIONAL CMN KLO TIDAK MEMAKAI WHERE OPERATOR ITU BISA MENYEBABKAN DELETE SEMUA DATA YG ADA DI TABLE 
*/


--! 9. ALIAS
/*
    --? ALIAS ADLAAH SEBUAH CARA UNTUK MENGUBAH NAMA_COLUMN ATAU TABLE KETIKA KITA SELECT DATA

    --? ALIAS COLUMN SYNTAX
    * SELECT column_name AS alias_name FROM table_name;

    --? ALIAS TABLE SYNTAX 
    * SELECT alias_table_name.column_name FROM table_name AS alias_table_name;
*/


--! 10. ORDER BY CLAUSE 
/*

    --? order by clause adalah sebuah teknik atau cara untuk mengurutkan sebuah data ketika di select atau di ambil

    --? syntax
    * select * from nama_table order by nama_column ASC|DESC, ...nama_column ASC/DESC

    --? EXAMPLE
    * select *  from buku order by id asc -> ini artinya kita mengambil semua data dari table buku dan diurutkan berdasarkan id yg terkecil hingga yg terbesar  

*/

--! 11. limit clause
/*
    ? limit clause adalah sebuah cara untuk meng-skip dan membatasi sebuah data ketika di select atau di ambil

    --? syntax
    * select * from nama_table limit berapa_banyak_data_di_skip(number), berapa_banyak_data_diambil(number)

    --? example 
    * select * from buku limit 5,5 -> ini artinya kita akan mengskip 5 data dan kita hanya akan mengambil hanya 5 data aja 


    todo: notes: limits ini bisa digunakan berbarengan dengan order by clause
    --* example -> select * from nama_table order by nama_column asc||desc limit jumlah_skip(number),jumlah_data(number) 
*/

--! 12. select distinct data
/*
    --? select distinc data adalah sebuah cara untuk mencegah duplikasi data ketika kita select sebuah data

    --? syntax
    * select distict nama_column from nama_table
    
    --? example
    * select distinct category from buku -> ini artinya kita akan mengambil data category buku pada table buku dan menghilangkan duplikasinya
*/

--! 13. numeric function
/*
    ? numeric function adalah sebuah fungsi yg di sediakan oleh mysql untuk berinteraksi dengan data angka
    
    --? ada macam-macam fungsi yg bisa digunakan lebih lengkap bisa cek di dokumentasinya
    
    *|| * = fungsi atau operator untuk mengkalikan sebuah data yg kita punya
    *||  + = fungsi atau operator untuk menambahkan data yg kita punya
    *|| - = fungsi atau operator untuk mengurangi data yg kita punya
    *|| / = fungsi atau operator untuk membagi data yg kita punya
    *||  DIV = fungsi atau operator untuk membagi dan mengubah nya menjadi decimal data yg kita punya
    *|| % fungsi atau operator untuk mengambil sisa bagi dari data yg kita punya

    --? example
    * Select price div 1000 from buku
    * select price +5000 from buku
*/


--! 14. auto increment
/*
        ? sebuah cara untku membuat column pada table nilainya bisa bertambah secara otomatis ketika kita menambahkan data ke table

    todo: last_insert_id() sebuah fungsi untuk mengetahui nilai akhir dari auuto_increment column pada sebuah table

    todo: notes auto_increment hanya bisa digunakan oleh column yg tipedatanya int dan dia primary key
*/

--! 15. flow control function
/*
    ? flow control function adalah sebuah cara unutk melakukan penkondisian ketika select data

    --todo: notes ada beberapaa fflow control function lebih lengkapnya bisa cek di dokumentasinya

    --? beberapa
    *1.  CASE
    --? SYNTAX
    * SELECT NAMA_COLUMN_WHEN_CONDITION THEN VALUE_JIKA_KONDISI_TERPENUHI
    -- ? EXAMPLE
    *  SELECT OrderID, Quantity,
    * CASE
    *    WHEN Quantity > 30 THEN 'The quantity is greater than 30'
    *    WHEN Quantity = 30 THEN 'The quantity is 30'
    *    ELSE 'The quantity is under 30'
    * END AS QuantityText
    * FROM OrderDetails;

    * 2. IF
    --? SYNTAX
    * SELECT IF(CONDITION,TRUE,FALSE)

    * 3. IFNULL
    --? SYNTAX
    * SELECT IFNULL(CONDITION,TRUE,FALSE)

*/

--! 16. aggregate functionn
/*
    --? aggregate function adalah fungsi yang digunakan untuk menghitung nilai dari sekumpulan data dan mengembalikan satu nilai saja sebagai hasilnya.

    --todo: contoh kita ingin ambil harga termahal atau terendah dari sebuah buku atau rata rata harga dari semua buku atau total buku dll

    --? ada banyak fungsi aggregate lebih lengkap bisa cek di dokumentasinya
    --? beberapa yg bisa digunakan

    --* 1.avg(column)
    *  untuk melihat rata" data dari sebuah column
    --?  syntax 
    * select avg(nama_columm) from nama_Table
    --? example
    * select avg(harga) from buku

    --* 2.count(column)
    *  untuk melihat jumlah data dari sebuah column
    --?  syntax 
    * select count(nama_columm) from nama_Table
    --? example
    * select count(harga) from buku

    --* 3.min(column)
    *  untuk melihat  data terendah dari sebuah column
    --?  syntax 
    * select min(nama_columm) from nama_Table
    --? example
    * select min(harga) from buku

    --* 4.max(column)
    *  untuk melihat  data tertinggi dari sebuah column
    --?  syntax 
    * select max(nama_columm) from nama_Table
    --? example
    * select max(harga) from buku

    --* 5.sum(column)
    *  untuk melihat  menjumlahkan data dari dari masing" sebuah column
    --?  syntax 
    * select sum(nama_columm) from nama_Table
    --? example
    * select sum(harga) from buku

    todo: notes ketika kita menggunakan aggregate pada sebuha column kita cmn bisa select 1 column, klo ingin supaya tetep bisa select lebih dari 1 column kita bisa gunakan grouping atau  having
*/