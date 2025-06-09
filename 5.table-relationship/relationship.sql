

--! MATERI TABLE RELATIONSHIP DI MYSQL

-- --! 1. APA ITU TABLE RELATIONSHIP
/*
    --? TABLE RELATIONSHIP ADALAH SEBUAH CARA UNTUK MENGHUBUNGKAN 2 ATAU LEBIH TABLE SUPAYA DATANYA BISA SALING TERHUBUNG
*/


-- --! 2. MACAM-MACAM CARA MELAKUKAN TABLE RELATIONSHIP
/*

    --! FOREIGN KEY
    /
        --? FOREIGN ADALAH SEBUAH KUNCI ATAU CONSTRAINT YG DIGUNAKAN UNTUK MENGHUBUNGKAN COLUMN KE COLUMN PADA TABLE LAIN

        -- TODO: JADI KITA BISA MEMBUAT ATAU MENGATUR SEBUAH COLUMN ITU SEBAGAI REFERENSI ATAU ACUAN DATA PADA COLUMN PADA LAIN 

        --? syntax
        * CREATE TABLE nama_table (
        *    nama_column ...column_definition,
        *    ...nama_column,
        *    FOREIGN KEY (nama_column) REFERENCES nama_table_lain(nama_column_lain) ...behavior
        *    ||
        *    CONSTRAINT nama_fk FOREIGN KEY (nama_column) nama_table_lain Persons(nama_column_lain) ...behavior
        *); 

        ? example
        * CREATE TABLE Orders (
        *    OrderID int NOT NULL,
        *    OrderNumber int NOT NULL,
        *    PersonID int,
        *    PRIMARY KEY (OrderID),
        *    FOREIGN KEY (PersonID) REFERENCES Persons(PersonID) on DELETE CASCADE on UPDATE CASCADE
        * );  -> ini artinya column PersonID pada table Person itu di jadikan referensi atau acuan data dari column PersonID yg ada di table Orders
    
        --? SYNTAX IN ALTER TABLE
        * ALTER TABLE nama_table 
        * ADD FOREIGN KEY (nama_column) REFERENCES nama_table_lain(nama_column_lain) on DELETE CASCADE on UPDATE CASCADE;
        *||
        * ALTER TABLE Orders
        * ADD CONSTRAINT nama_constraint FOREIGN KEY (nama_column) REFERENCES nama_table(nama_column_lain) on DELETE CASCADE on UPDATE CASCADE ;


        --? behavior foreign key
        * RESTRIC (DEFAULT) = artinya data column referensi tidak boleh di hapus atau update ketika datanya digunakan oleh column pada table lain

        * CASCADE = artinya data column referensi boleh di hapus atau update ketika datanya digunakan oleh column pada table lain (data pada column yg mengacu akan ikut di hapus atau di update)

        * NO ACTION =a rtinya data column referensi akan dibiarkan jadi boleh di hapus atau update ketika datanya digunakan oleh column pada table lain (data pada column yg mengacu akan ikut dibiarkan jadi tetep ada)

        * SET NULL =  artinya data column referensi boleh di hapus atau update ketika datanya digunakan oleh column pada table lain (data pada column yg mengacu akan di set null)
    /

*/


--! 4. JOIN 
/*

    --? JOIN adalah sebuah cara untuk mengambil data dari dua atau lebih tabel yang saling berhubungan, dengan mencocokkan data antar kolom yang memiliki relasi.


    ? SYNTAX
    * SELECT *,nama_table.* FROM NAMA_COLUMN (alias(optional)) JOIN NAMA_TABLE_YG_LAIN (alias(optional)) ON (...CONDITION_MENCOCOKAN_DATA) ...join ...where_clase(optional) ...order_clause(optional) ...limt_clause(optional) 
    ||
    ?EXAMPLE
    * select * from buku join penulis on (buku.id_penulis = penulis.id)
    *-> ini artinya kita akan mengambil data dari table buku dan penulis dengan menjadikan id_Penulis buku dan  column id di table penulis sebagai pencocokan data 
    -- todo:notes sehingga semisal data nya ga match maka data penulisnya ga akan keambil

*/

--! 5. jenis-jenis table relationship
/*

    --? 1. one-to-one relationship
    /
        ? yaitu relatiopship yg mana sebuah column yg dijadikan referensi atau acuan data hanya boleh digunakan  1 kali di column pada table lain
        
        --TODO: CONTOHNYA FITUR WALLET USER YG DIMANA USER HANYA BOLEH MEMILIKI 1 DOMPET DI SATU AKUN, NAH INI CONTOH PENERAPAN DARI ONE-TO-ONE KARENA NANTI ID_USER HANYA BOLEH ADA 1 DI TABLE WALLET


        --todo: cara untuk melakukan jenis relationship ini kita bisa atur column yg menggunakan referensi datanya itu unique key supaya datanya tidak boleh duplikat

    /


    --? one-to-many relationshp
    /
        ? yaitu jenis relationship yg mana sebuah  column yg dijadikan referensi atau acuan data hanya bisa digunakan lebih dari 1 kali pada column table lain

        --TODO: CONTOHNYA fitur category dari makanan yg dimana kategori bisa digunakan berkali-kali oleh makanan 

        --todo: caranya cukup tidak menambahkan constraint unique atau primary key di column yg menggunakan referensi atau acuan datanya 
    /

    --? many-to-many
    /   
        ? Many-to-Many adalah jenis relationship di mana satu data pada suatu tabel bisa terhubung ke banyak data di tabel lain, dan sebaliknya. 
    
        --todo: contoh kasunya misal ada table user dan buku dimana user bisa meminjam banyak buku dan buku bisa di pinjam oleh banyak user

        --todo: cara menerapkan many-to-many kita bisa membuat table pivot atau table penghubung yg digunakan untuk menampung kedua data tersebut
    /


*/