

--! MATERI SUB QUERY DI MYSQL


--! 1.  APA ITU SUB QUERY
/*
    ? sebuah cara untuk membuat query yg bersarang atau sebuah query yang dijalankan di dalam query lain.
*/ -- todo: jadi nanti di dalam sebuah query kita bisa melakukan query


--! 2. cara menggungakan sub query
/*
    --TODO: SUB QUERY HANYA BISA DIGUNAKAN DI SELECT , FROM DAN WHERE CLAUSE, 

    --! SUB QUERY DI SELECT
    /

    * Select ( sub_query ) as nama_column,...nama_column

    * example
        * SELECT 
        * nama_produk, harga,
        * (SELECT AVG(harga) FROM produk) AS rata_rata_harga
        * FROM produk; -> ini artinya kita akan mengambil data nama_product , harga dan melakukan sub query untuk data rata-rata harga 
    /

    --! SUB QUERY DI FROM
    /
        * SELECT kolom1, kolom2 FROM (SUB_QUERY) AS nama_alias; -> NOTE WAJIB ALIAS

        ? EXAMPLE
        * SELECT *
        *    FROM (
        *        SELECT produk, jumlah * harga_satuan AS total_harga
        *        FROM penjualan
        *    ) AS penjualan_total
        *    WHERE total_harga > 20000;

    /


    --! sub query di where 
    /   

        * select * from nama_table where price > (sub_Qquery)

        * example
        * SELECT nama, harga
        *    FROM produk
        *    WHERE harga > (
        *     SELECT AVG(harga) FROM produk
        * ); ->  artinya kita akan mengambil data nama danharga di column product yg harga rata ratanya terbesar
    / 
*/