


// ! MATERI TABLE RELATIONSHIP DI MYSQL


//! 1. APA ITU TABLE RELATIONSHIP 
/*
    TABLE RELATIONSHIP ADALAH SEBUAH TEKNIK ATAU CARA UNTUK MENGHUBUNG TABLE KE TABLE LAIN
*/
//TODO: JADI KITA BISA MEMBUAT SEBUAH TABLE BISA SALING TERHUBUNG


//! 2. FOREIGN KEY
/*
    TODO:  FOREIGN KEY ADALAH SEBUAH KEY ATAU CONSTRAINT YG DIGUNAKAN UNTUK MENGHUBUNGKAN SEBUAH COLUMN KE COLUMN PADA TABLE LAIN

    todo: jadi kita bisa membuat sebuah colum pada table datanya ngambil atau referensi dari column pada table lain

    ! syntax
    TODO: NOTE: CARA SAAT MEMBUAT TABLE
    * create table nama_table {
        ...nama_colum  column definiton

        * versi 1
        * FOREIGN KEY (nama_column) REFERENCES nama_table_lain(nama_column_pada_table) behavior(optional) -> on delete (behavior) on update (behavior)
        * ||
        * (MULTIPLE)
        * CONSTRAINT NAMA_CONSTRAINT FOREIGN KEY (nama_columng) REFERENCES nama_table_lain(nama_column_pada_table) behavior(optional) -> on delete (behavior) on update (behavior)
    *}

    TODO: NOTE: CARA MENGGUNAKAN ALTER TABLE
    * alter table nama_table
    * ADD FOREIGN KEY (nama_columng) REFERENCES nama_table_lain(nama_column_pada_table) behavior(optional) -> on delete (behavior) on update (behavior)
    * ||
    * (MULTIPLE)
    * ADD CONSTRAINT NAMA_CONSTRAINT FOREIGN KEY (nama_columng) REFERENCES nama_table_lain(nama_column_pada_table) behavior(optional) -> on delete (behavior) on update (behavior)
    
    TODO: DELETE FOREIGN KEY
    * alter table  DROP FOREIGN KEY nama_constraintnya; 
*/



//!3. JOIN
/*
    TODO: JOIN ADALAH SEBUAH TEKNIK ATAU CARA UNTUK MENGAMBIL DATA DARI 2 ATAU LEBIH TABLE

    TODO: NOTE: DISARANKAN JANGAN MELALUKAN JOIN LEBIH DARI 5 TABLE KARENA BISA MEMPENGARUHI PERFORMANCE

    * SYNTAX
    /
      *  SELECT * OR NAMA_COLUMN FROM NAMA_TABLE_PARENT JOIN ON NAMA_TABLE_CHILD (table1.column_name = table2.column_name)
    /

*/