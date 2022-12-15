Nama: Alvin Valencia
NIM: 03081190020

1. Tambahkan satu buah table pada web aplikasi kemudian buatlah halaman CRUD dengan menggunakan CRUD generator, serta tambahkan menu untuk mengakses table tersebut pada sidebar.
- Pada tahap awal saya membuat folder laravel baru dikarenakan saya ingin membedakan folder project dengan folder UAS, maka dari itu saya membuat folder laravel "UAS-BAP", oleh karena itu saya membuat ulang CRUD generator untuk setiap bagian yang di perlukan sesuai dengan skripsi yang kami pakai, lalu menambahkan menu pada sidebar. 
Folder personal yang saya tambahan adalah "Usage History" dimana terdapat data pemakaian lounge UPH.

2.  Buatlah sebuah view untuk melakukan analisis data yang relevan dengan topik final project anda, simpan query view tersebut kedalam file queryUAS.sql.
- Sesuai dengan final project, view analisis data tersebut adalah data-data mahasiswa dari final project.

3.  Buatlah sebuah antarmuka untuk menampilkan view pada soal 2, kemudian tambahkan tombol untuk mencetaknyakedalam format laporan pdf. Sertakan logo UPH dan nama berserta studentID anda pada header laporan.
- Untuk DompPDF, saya membuat codingnya pada bagian config/app.php dengan code "Barryvdh\DomPDF\ServiceProvider::class," serta memberikan "'PDF'=> Barryvdh\DomPDF\Facade::class," pada bagian aliases, untuk nama dan studentID saya, saya membuatnya pada folder resources/views/Laporan.

4.  Buat validasi data untuk halaman insert dan update soal nomor 1.
- Setelah revisi semua halaman CRUD sudah benar.

5.  Simpan kode program beserta queryUAS.sql ke public repository github, tambahkan file readme.md yang berisikan:
o   Nama dan StudentID.
o   Soal dan penjelasan solusi untuk setiap soal beserta nama file yang berubah.
- Telah saya jelaskan no.1 samapai dengan no.5., file queryUAS.sql saya upload ke github UAS saya.
