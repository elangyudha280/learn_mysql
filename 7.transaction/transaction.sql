


--! MATERI TRANSACTION DI RDBMS ATAU MYSQL

--! 1. APA ITU TRANSACTION
/*
    ? Transaction adalah cara untuk membuat sekumpulan perintah SQL yang dijalankan secara bersama-sama sebagai satu kesatuan.
*/ 
--todo: jadi jika Kalau ada salah satu perintah sql atau query di dalam transaction gagal , maka semuanya bisa dibatalkan — seperti "tidak pernah terjadi."

--todo analoginya 
/*
  todo: Kalau saya transfer uang ke kamu, maka saldo saya harus besrkurang dan saldo kamu harus bertambah. Kalau salah satu gagal, dua-duanya dibatalkan supaya datanya tetap aman
*/

--todo: NOTES: TRANSACTION HANYA BISA DIGUNAKAN UNTUK QUERY SQL YG BERSIFAT DML (data manipulation languange) atau perintah yg berhubungan untuk mengubah data di database tidak bisa untuk query yg bersifat DDL ( DATA DEFINITION LANGUAGE ) ATAU perintah yg berhubungan mendifinisikan data kaya create database, table atau column di dalam table

--! 2. Mengapa Transaction Penting 
/*
    * Konsistensi data

    * Keamanan saat terjadi error

    * Integritas data saat banyak query dijalankan bersama
 */

--! 3. ciri-ciri transaction 
/*
   todo: Bersifat atomik (semuanya berhasil, atau tidak ada yang dijalankan).

   todo: Dijalankan dalam blok : START → QUERY → COMMIT atau ROLLBACK
*/

--! 4. PERINTAH DASAR TRANSACTION DI MYSQL 
/*
    
    * START TRANSACTION ATAU BEGIN= SEBUAH PERINTAH YG DIGUNAKANA UNTUK MEMULAI TRANSACTION
    * COMMIT = SEBUAH PERINTAH UNTUK MENGAKHIRI ATAU MENYIMPAN PERUBAHAN PERMANEN KE DATABASE
    * ROLLBACK = SEBUAH PERINTAH UNTUK MEMBATALKAN SEMUA PERUBAHAN DI TRANSACTION jika gagals


    !! CONTOH SYNTAX KONDISI BERHASIL
    * START TRANSACTION;

    * UPDATE rekening SET saldo = saldo - 30000 WHERE nama = 'Andi';
    * UPDATE rekening SET saldo = saldo + 30000 WHERE nama = 'Budi';

    * COMMIT; -> ini artinya jika kedua query sqlnya berhasil maka transaction akan berhasil dan menyimpan data ke database

    !! CONTOH SYNTAX KONDISI GAGAL  
    * START TRANSACTION;

   *  UPDATE rekening SET saldo = saldo - 30000 WHERE nama = 'Andi';
     z! Misal ini gagal karena tabel budi terkunci atau error
   *  UPDATE rekening SET saldo = saldo + 30000 WHERE nama = 'Budi';

    * ROLLBACK; -- ini artinya jika SALAH SATU QUERY SQL NYA GAGA  maka transaction akan gagal dan tidak akan menyimpan data ke database
*/