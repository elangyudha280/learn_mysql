

--! MATERI TIPE DATA MYSQL
/*
    ? TIPE DATA ADALAH SEBUAH JENIS DATA YG KITA BERIKAN KE KOLOM UNTUK MEMEBRITAHUKAN DATA APA YG AKAN KITA SIMPAN 
*/


--! 2. TIPE DATA NUMBER
/*

    --? INTEGER => BILANGAN BULAT
    /
        ?- TINYINT -> 1 BYTES
        ?- SMALLINT -> 2 BYTES
        ?- MEDIUMINT -> 3 BYTES
        ?- INT -> 4 BYTES
        ?- BIGINT -> 8 BYTES
    /

    --? FLOATING POINT =? BILANGAN PECAHAN
    /
        ?- float -> 4 bytes
        ?- double -> 8 bytes
    /

    --? DECIMAL => TIPE DATA NUMBER UNTUK MENENTUKAN PANJANG DIGIT SEBUAH ANGKA
    /
        ? DECIMAL(PANGJANG_ANGKA,PANJANG_ANGKA_SETELAH_KOMA)
        ||
        * MISAL DECIMA(5,2) => BERARTI AKANG MENJADI 000.00    /
*/


--! 3. TIPE DATA STRING
/*

    ? CHAR(PANGJANG_CARACTERNYA OPTIONAL)
    ? VARCHAR(PANGJANG_CARACTERNYA OPTIONAL)
    
    ? TEXT => sebuah tipe data string yg memiliki maksimum panjang datanya sendiri
    /
        ? tinyText -> 255 karakter
        ? text -> 65535 karakter
        ? mediumText  16777215 karakter
        ? longtext -> 4294967295 karakter
    / 
    ? ENUM => sebuah tipe data string untku menentukan pilihan atau opsi data apa saja yg hanya boleh di berikan ke kolom
    ? enum('value1',...)
    |
    * contoh enum('pria','wanita') -> ini artinya sebuah kolom hanya boleh di masukan data hanya pria atau wanita
*/

--! 4. TIPE DATA  DATE AND TIME
/*

    ? DATE -> TIPE DATA DATE HANYA MENYIMPAN DATA TANGGAL => YYYY-MMMM-DD -> 2020-10-10
    ? DATETIME -> TIPE DATA DATE HANYA MENYIMPAN DATA TANGGAL DAN WAKTU => YYYY-MMMM-DD HH-MM-DD -> 2020-10-10 10-00-00
    ? TIMESTAMP -> TIPE DATA HANYA MENYIMPAN DATA TANGGAL DAN WAKTU SAAT DATANYA DIMASUKAN KE DALAM TABLE
    ? TIME  -> TIPE DATA DATE HANYA MENYIMPAN DATA  WAKTU => HH-MM-DD -> 10-00-00
    ? YEAR -> TIPE DATA DATE HANYA MENYIMPAN DATA  TAHUN => YYYY -> 2020

*/

--! 4. TIPE DATA boolean
/*
    ? TIPE UNTUK MENENTUKAN KEBENARAN

    ? TRUE | FALSE  
*/