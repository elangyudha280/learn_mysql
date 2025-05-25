

--! MATERI CONSTRAINT DI MYSQL

--! 1. APA ITU CONSTRAINT 
/*
    --? CONSTRAINT ADALAH SEBUAH CARA UNTUK MEMBUAT ATURAN PADA SEBUAH COLUMN TABLE AGAR TETAP AMAN KETIKA DIMASUKAN DATA
*/
--TODO: JADI NANTI DENGAN CONSTRAINT KITA BISA MEMBUAT COLUMN NILAINYA TIDAK BOLEH DUPLIKAT ATAU SEBELUM MEMASUKAN DATA KE COLUMN ITU DILAKUKAN PENGECEKAN ATAU BAHKAN KITA KITA BISA MEMBUAT SEBUAH COLUMN DATANYA REFERENCE ATAU BERSUMVER DARI COLUMN PADA TABLE LAIN



--! 2. JENIS-JENIS CONSTRAOMT
/*  

    --! UNIQUE KEY
    /
        ? SEBUAH CONSTRAINT YG DIGUNAKAN UNTUK MEMBUAT SEBUAH COLUYMN TABLE NILAINYA TIDAK  BOLEH DUPLIKAT ATAU SAMA

        --? SYNTAX
       *  CREATE TABLE Persons (
       *     nama_Column ...column_Defintion || constraint,
        *     ...nama_column   
        *    UNIQUE KEY nama_constraint (nama_column,...nama_column)
        *    ||
        *    constraint nama_constraint unique key (nama_column,...nama_column)
        *  ); 

        --? SYNTAX IN ALTER TABLE
        * ALTER TABLE nama_table ADD UNIQUE (nama_column,...nama_column); 
        ||
        * ALTER TABLE nama_table ADD CONSTRAINT nama_constraint UNIQUE(nama_column,...nama_column)

        --? sytax delete constraint unique
        * ALTER TABLE nama_table DROP CONSTRAINT nama_constraint ;  
    /


    
    --! CHECK
    /
        ? CHECK ADALAH SEBUAH CONSTRAINT YG DIGUNAKAN UNTUK MENGECEK DATA SEBELUM DATANYA DI MASUKAN KE COLUMN TABLE

        --? SYNTAX
        * CREATE TABLE Persons (
        *    nama_column ...column_Definition || ...constraint
        *    ...nama_column
        *    CHECK (...condition)
        * ||
        *  CONSTRAINT nama_constraint CHECK (...condition)
        * ; 

        --? SYNTAX IN ALTER TABLE
        * ALTER TABLE nama_table ADD CHECK (...CONDITION); 
        ||
        * ALTER TABLE nama_table ADD CONSTRAINT nama_constraint CHECK (...CONDITION)

        --? sytax delete constraint unique
        * ALTER TABLE nama_table DROP CONSTRAINT nama_constraint ;  
    /   


    --? INDEX 
    /*
        --? INDEX ADALAH SALAH SATU CONTRAINT YG DIGUNAKAN UNTUK MEMPERCEPAT PENCARIAN DATA PADA COLUMN TABLE

        ? SYNTAX
        * CREATE TABLE NAMNA_TABLE (
        *    nama_column ...column_Definition || ...constraint
        *    ...nama_column
        *    index nama_constraint_index (...column)
        * ||
        *  CONSTRAINT nama_constraint_index index (...column)
        * ;

        --? SYNTAX IN ALTER TABLE
        * ALTER TABLE nama_table ADD INDEX nama_index (...COLUMNS); 

        --? sytax delete constraint INDEX
        * ALTER TABLE nama_table DROP INDEX nama_constraint ;  

        --TODO: NOTES: SAAT KTIA MENGGUNAKAN UNIQUE ATAU PRIMARY KEY PADA SEBUAH COLUMN, OTOMATIS COLUMN TERSEBUT AKAN MENGGUNAKAN INDEXX SEHINGGA KETIKA PENCARIAN DATA BERDASARKAN COLUMN TERSEBUT MAKA HASILNYA NANTI CEPAT
        

        --TODO: NOTES KEKURANGAN DARI INDEX ADALAH INDEX INI MEMPERLAMBAT KETIKA KITA MEMANIPULASI DATA PADA TABLENYA  (KARENA DIA BAKALAN NGEUPDATE SEMUA DATANYA)
    */

*/