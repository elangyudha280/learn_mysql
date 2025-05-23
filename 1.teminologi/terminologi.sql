

--! MATERI BELAJAR MYSQL ATAU MARIADB


--?! 1. APA ITU DBMS
/*
    ? DBMS ADALAH SINGKATAN DARI DATABASE MANAGEMENT SYSTEM YG MERUPAKAN SISTEM ATAU APLIKASI UNTUK MEMBUAT, MENGELOLA DAN MENGAMANKAN SEBUAH DATA DI KOMPUTER

    ? CONTOH: MYSQL,MARIADB,POSTGREE CASANDRA MONGODB MICROSOFT ACCESS, ORACLE
*/

--! 2. JENIS-JENIS DBMS (DATABASE MANAGEMENT SYSTEM)
/*
    ? 2.1 RDBMS ( RELATIONAL DATABASE MANAGEMENT SYSTEM )
    /? SEBUAH DATABASE YG DIBUAT DALAM BENTUK TABLE , JADI ADA COLUMN DAN JUGA BARIS
    ? CONTOHNYA: MYSQL, MARIADB, POSGREE

    ? 2.2 NON-RDBMS ( NON RELATIONAL DATABASE MANAGEMENT SYSTEM)
    /? SEBUAH DATABASE YG DIBUAT DENGAN PASANGAN KEY DAN JUGA VALUE ATAU BISA DIBILANG OBJECT DAN FORMAT FILENYA DALAM BENTUK JSON
    ? CONTOHNYA: MONGODB, CASANDRA 
    
*/

-- ?! 3. APA ITU SQL
/*
    ? SQL ADALAH SINGKATAN DARI STRUCTURE QUERY LANGUAGE SEBUAH PERINTAH ATAU BAHASA UNTUK BERINTERAKSI DENGAN DBMS

    --? NANTI FORMAT FILE PERINTAH SQLNYA ITU .SQL
*/

-- ! 4. APA ITU QUERY
/*
    ? QUERY ADALAH SEKUMPULAN PERINTAH SQL UNTUK BERINTERAKSI DENGAN DBMS SEPERTI MENGAMBIL,MEMANIPULASI DATA 
*/

--! 5. ALUR DARI DBMS 
/*
    ?                    SQL        DATA
    ? DABATABSE CLIENT  ----> DBMS ----> FILE
    
    ? JADI DARI DATABASE CLIENT YAITU ENTAH APLIKASI MOBILE, WEB ATAU DLL NGIRIM PENRINTAH SQL KE DBMS DAN NANTI KITA AKAN DAPAT DATANYA DALAM BENTUK FILE

*/

--! 6. PERINTAH SEDERHANA SQL
/*
    ? CREATE DATABASE NAMA_DATABASE; --> UNTUK MEMEBUAT DATABASE
    ? SHOW DATABASES; --> UNTUK MELIHAT DATABASE APA AJA YG ADA
    ? USE NAMA_dATABASE; ---> UNUTK MENGGUNAKAN SEBUAH DATABASE
    ? DROP DATABASE NAMA_DATABASE --> UNTUK MENGHAPUS DATABASE
*/