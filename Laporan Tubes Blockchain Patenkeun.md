

Project Patenkeun (Patent Recording And Granting

Based On Etherum Network)

**1st Muhammad Aditya Hilmy**

Dept. of Information Systems and

Technology

**2nd I Kompiang Gede Wirahita P.**

Dept. Of Telecommunication

Engineering

**3rd Putu Priyana Pradipta**

Dept. Of Telecommunication

Engineering

School of Electrical and Informatics

Engineering, ITB

School Of Electrical and Informatics

Engineering, ITB

School Of Electrical and Informatics

Engineering, ITB

Bandung, Indonesia

Bandung, Indonesia

Bandung, Indonesia

18217025@std.stei.itb.ac.id

18117024@telecom.stei.itb.ac.id

18117005@telecom.stei.itb.ac.id

***Abstract*— Pendataan, rekognisi dan pemberian hak guna paten adalah suatu hal yang penting dalam dunia profesional maupun**

**ilmiah. Granting atau pemberian lisensi paten pada suatu produk selain memberikan payung hukum kepada pemilik produk untuk**

**secara legal dan resmi menggunakan Hak Atas Kekayaan Intelektual (HAKI) orang lain, juga dapat menjadi sarana pemberian**

**apresasi dan royalty pada pemilik HAKI. Namun sering ditemukan permasalahan, yaitu silsilah paten yang beredar kurang**

**terstuktur dan rawan fraud atau pelanggaran di balik layar. Guna meningkatkan tatanan dalam pencatatan paten dan silsilah**

**granting (pemberian lisensi) yang sistematis, teknologi Blockchain dirasa sangat layak menjadi teknologi backbhone dengan**

**Ethereum sebagia network yang dipilih. Adapun project patenkeun terdiri atas 5 buah smart contract utama untuk mempermudah**

**user dalam network untuk masing-masing menerbitkan paten, produk dan granting sesuai dengan perannya. Selain itu. Pada project**

**ini penulis membuat sebuah terobosan baru yaitu patent pooling, yang mempermudah konsolidasi antar beberapa paten bagi pemilik**

**paten dan proses pembelian lisensi paten secara kolektif bagi pemilik produk.**

***Keywords— Blockchain, Patent, Pooling, Ethereum***

I. INTRODUCTION

Memasuki era industri 4.0, kepemilikan akan paten khususnya paten dibidang teknologi merupakan suatu yang sangat

penting, mengingat paten atau kekayaan intelektual hasil riset nilainya bisa setara dengan aset - aset berharga yang umum saat

ini seperti properti, emas, maupun barang berharga lainnya.

Menurut data dari Kemenristek Republik Indonesia, Pertumbuhan paten domestik di Indonesia meningkat dalam 3 tahun

terakhir. Mulai dari tahun 2015 total 653 permohonan, tahun 2016 sebanyak 1307 permohonan, dan tahun 2017 berjumlah 2271.

Namun sayangnya, peningkatan paten tersebut malah dibarengi dengan peningkatan jumlah kasus pelanggaran paten. Dari

laporan yang dikutip di situs berita CNN Indonesia. Diketahui bahwa sepanjang 2019, Kementerian Hukum dan HAM

(Kemenkumham) mencatat pelanggaran merek sebagai hal yang paling banyak diadukan. Jumlah aduan yang masuk ke

Direktorat Jenderal Kekayaan Intelektual (DJKI) Kemenkumham adalah pelanggaran merek (34 aduan), disusul aduan

pelanggaran hak cipta (7 aduan), paten (2 aduan), dan desain industri (4 aduan).Total DJKI menerima 47 aduan pelanggaran

kekayaan intelektual sepanjang 2019, naik dibanding tahun lalu dengan 36 aduan. Dari 47 aduan tersebut, DJKI telah menangani

43 kasus, meningkat dibanding 12 aduan pada tahun lalu. "Tahun ini, 26 kasus telah dilakukan tindakan. Angka tersebut juga

naik jika dibandingkan tahun 2018 sejumlah 24 penindakan,"

Adapun beberapa faktor yang menjadi penyebab maraknya pelanggaran paten adalah perizinan paten yang terkadang tidak

sempat tercatat atau tumpang tindih klaim paten (sesorang mengklain paten untuk suatu penemuan yang ternyata sudah pernah

ditemukan oleh pihak lain sebelumnya). Selain faktor - faktor tersebut, pencatatan paten saat ini khususnya di indonesia yang

bersifat tersentralisasi (satu database besar yang diatur oleh satu pihak) juga rentan dengan kegagalan sistem yang dapat

menyebabkan hilangnya data - data di database pusat. Oleh karena itu pada project tugas besar matakuliah infrastruktur

blockchain ini, kelompok kami mengembangkan Patenkeun, yaitu suatu sistem paten berbasis smart contract blockchain dengan

fitur “publish patent, grant patent, dan patent pooling” sebagai suatu prototipe alternatif sistem pencatatan paten yang bersifat

terdesentralisasi (tanpa adanya pihak ketiga yang mengatur keterpusatan data) sehingga integritas dan immutability data lebih

terjamin

II. LITERARY STUDY

*A.*

*Birokrasi Paten di Indonesia*

. Istilah "paten" sering kita dengar banyak dipakai oleh masyarakat luas; dan bahkan tak jarang disalahpahami sebagai

padanan dari istilah "hak kekayaan intelektual" itu sendiri. Namun sesungguhnya, paten hanyalah salah-satu dari sekian banyak

1

[Kemenristekdikti:](https://risbang.ristekdikti.go.id/publikasi/berita-kegiatan/kemenristekdikti-pertumbuhan-paten-terdaftar-indonesia-meningkat-pesat/)[ ](https://risbang.ristekdikti.go.id/publikasi/berita-kegiatan/kemenristekdikti-pertumbuhan-paten-terdaftar-indonesia-meningkat-pesat/)[Pertumbuhan](https://risbang.ristekdikti.go.id/publikasi/berita-kegiatan/kemenristekdikti-pertumbuhan-paten-terdaftar-indonesia-meningkat-pesat/)[ ](https://risbang.ristekdikti.go.id/publikasi/berita-kegiatan/kemenristekdikti-pertumbuhan-paten-terdaftar-indonesia-meningkat-pesat/)[Paten](https://risbang.ristekdikti.go.id/publikasi/berita-kegiatan/kemenristekdikti-pertumbuhan-paten-terdaftar-indonesia-meningkat-pesat/)[ ](https://risbang.ristekdikti.go.id/publikasi/berita-kegiatan/kemenristekdikti-pertumbuhan-paten-terdaftar-indonesia-meningkat-pesat/)[Terdaftar](https://risbang.ristekdikti.go.id/publikasi/berita-kegiatan/kemenristekdikti-pertumbuhan-paten-terdaftar-indonesia-meningkat-pesat/)[ ](https://risbang.ristekdikti.go.id/publikasi/berita-kegiatan/kemenristekdikti-pertumbuhan-paten-terdaftar-indonesia-meningkat-pesat/)[Indonesia](https://risbang.ristekdikti.go.id/publikasi/berita-kegiatan/kemenristekdikti-pertumbuhan-paten-terdaftar-indonesia-meningkat-pesat/)[ ](https://risbang.ristekdikti.go.id/publikasi/berita-kegiatan/kemenristekdikti-pertumbuhan-paten-terdaftar-indonesia-meningkat-pesat/)[Meningkat](https://risbang.ristekdikti.go.id/publikasi/berita-kegiatan/kemenristekdikti-pertumbuhan-paten-terdaftar-indonesia-meningkat-pesat/)[ ](https://risbang.ristekdikti.go.id/publikasi/berita-kegiatan/kemenristekdikti-pertumbuhan-paten-terdaftar-indonesia-meningkat-pesat/)[Pesat](https://risbang.ristekdikti.go.id/publikasi/berita-kegiatan/kemenristekdikti-pertumbuhan-paten-terdaftar-indonesia-meningkat-pesat/)[ ](https://risbang.ristekdikti.go.id/publikasi/berita-kegiatan/kemenristekdikti-pertumbuhan-paten-terdaftar-indonesia-meningkat-pesat/)[–](https://risbang.ristekdikti.go.id/publikasi/berita-kegiatan/kemenristekdikti-pertumbuhan-paten-terdaftar-indonesia-meningkat-pesat/)[ ](https://risbang.ristekdikti.go.id/publikasi/berita-kegiatan/kemenristekdikti-pertumbuhan-paten-terdaftar-indonesia-meningkat-pesat/)[Deputi](https://risbang.ristekdikti.go.id/publikasi/berita-kegiatan/kemenristekdikti-pertumbuhan-paten-terdaftar-indonesia-meningkat-pesat/)[ ](https://risbang.ristekdikti.go.id/publikasi/berita-kegiatan/kemenristekdikti-pertumbuhan-paten-terdaftar-indonesia-meningkat-pesat/)[Bidang](https://risbang.ristekdikti.go.id/publikasi/berita-kegiatan/kemenristekdikti-pertumbuhan-paten-terdaftar-indonesia-meningkat-pesat/)[ ](https://risbang.ristekdikti.go.id/publikasi/berita-kegiatan/kemenristekdikti-pertumbuhan-paten-terdaftar-indonesia-meningkat-pesat/)[Penguatan](https://risbang.ristekdikti.go.id/publikasi/berita-kegiatan/kemenristekdikti-pertumbuhan-paten-terdaftar-indonesia-meningkat-pesat/)[ ](https://risbang.ristekdikti.go.id/publikasi/berita-kegiatan/kemenristekdikti-pertumbuhan-paten-terdaftar-indonesia-meningkat-pesat/)[Riset](https://risbang.ristekdikti.go.id/publikasi/berita-kegiatan/kemenristekdikti-pertumbuhan-paten-terdaftar-indonesia-meningkat-pesat/)[ ](https://risbang.ristekdikti.go.id/publikasi/berita-kegiatan/kemenristekdikti-pertumbuhan-paten-terdaftar-indonesia-meningkat-pesat/)[dan](https://risbang.ristekdikti.go.id/publikasi/berita-kegiatan/kemenristekdikti-pertumbuhan-paten-terdaftar-indonesia-meningkat-pesat/)[ ](https://risbang.ristekdikti.go.id/publikasi/berita-kegiatan/kemenristekdikti-pertumbuhan-paten-terdaftar-indonesia-meningkat-pesat/)[Pengembangan](https://risbang.ristekdikti.go.id/publikasi/berita-kegiatan/kemenristekdikti-pertumbuhan-paten-terdaftar-indonesia-meningkat-pesat/)

2 [Pelanggaran](https://www.cnnindonesia.com/teknologi/20191231141341-185-461331/pelanggaran-merek-paling-banyak-diadukan-ke-kemenkumham)[ ](https://www.cnnindonesia.com/teknologi/20191231141341-185-461331/pelanggaran-merek-paling-banyak-diadukan-ke-kemenkumham)[Merek](https://www.cnnindonesia.com/teknologi/20191231141341-185-461331/pelanggaran-merek-paling-banyak-diadukan-ke-kemenkumham)[ ](https://www.cnnindonesia.com/teknologi/20191231141341-185-461331/pelanggaran-merek-paling-banyak-diadukan-ke-kemenkumham)[Paling](https://www.cnnindonesia.com/teknologi/20191231141341-185-461331/pelanggaran-merek-paling-banyak-diadukan-ke-kemenkumham)[ ](https://www.cnnindonesia.com/teknologi/20191231141341-185-461331/pelanggaran-merek-paling-banyak-diadukan-ke-kemenkumham)[Banyak](https://www.cnnindonesia.com/teknologi/20191231141341-185-461331/pelanggaran-merek-paling-banyak-diadukan-ke-kemenkumham)[ ](https://www.cnnindonesia.com/teknologi/20191231141341-185-461331/pelanggaran-merek-paling-banyak-diadukan-ke-kemenkumham)[Diadukan](https://www.cnnindonesia.com/teknologi/20191231141341-185-461331/pelanggaran-merek-paling-banyak-diadukan-ke-kemenkumham)[ ](https://www.cnnindonesia.com/teknologi/20191231141341-185-461331/pelanggaran-merek-paling-banyak-diadukan-ke-kemenkumham)[ke](https://www.cnnindonesia.com/teknologi/20191231141341-185-461331/pelanggaran-merek-paling-banyak-diadukan-ke-kemenkumham)[ ](https://www.cnnindonesia.com/teknologi/20191231141341-185-461331/pelanggaran-merek-paling-banyak-diadukan-ke-kemenkumham)[Kemenkumham](https://www.cnnindonesia.com/teknologi/20191231141341-185-461331/pelanggaran-merek-paling-banyak-diadukan-ke-kemenkumham)





bentuk perlindungan HKI.Paten adalah perlindungan HKI bagi karya intelektual yang bersifat teknologi, atau dikenal juga

dengan istilah invensi, dan mengandung pemecahan/solusi teknis terhadap masalah yang terdapat pada teknologi yang telah ada

sebelumnya. Sebagai contoh, paku kecil temuan Levi Strauss untuk dipasang di ujung-ujung saku celana jeans, misalnya, yang

kemudian dianugerahi hak paten di Amerika Serikat tahun 1873, mengandung solusi teknis terhadap persoalan mudah

lepas/robeknya jahitan saku celana berbahan denim ketika itu, mengingat pemakaian luar ruangan dengan intensitas yang cukup

tinggi.

Invensi paten dapat berupa produk maupun proses. Contohnya pembakaran pada mesin kendaraan bermotor yang bertujuan

untuk menghasilkan emisi gas buang yang lebih ramah lingkungan. Baik metode dan proses bagaimana pembakaran tersebut

dilakukan, dan mesin yang menerapkan metode dan proses pembakaran itu, keduanya dapat dipatenkan masing-masing sebagai

paten proses dan paten produk.

Proses pengajuan paten sampai mendapat suatu sertifikat resmi yang menandakan bahwa invensi telah terdaftar di database

pusat berlangsung selama minimal 6 bulan, karena untuk di indonesia sendiri, terdapat tahap pengumuman selama 6 bulan,

dimana dalam tahap ini, badan pengurus dan pemeriksa paten mengumumkan secara luas ke publik tentang adanya pengajuan

paten atau klaim untuk suatu invensi. Sehingga masyarakat dapat mengajukan gugatan apabila ditemukan indikasi duplikasi

invensi lain yang sudah eksis sebelumnya

*B.*

*Blockchain dan Ethereum*

Blockchain merupakan suatu sistem terdistribusi yang terdiri dari dua komponen dasar, yakni blok/kelompok (block) dan

rantai (chain). Segala informasi yang terdapat dalam jaringan dibagi menjadi beberapa blok dan saling terhubung oleh ‘rantai’.

Secara teknis, blockchain adalah serangkaian blok berisikan informasi digital. Setiap blok ini memiliki komponen yang disebut

hash. Hash adalah suatu set karakter yang menyusun berbagai informasi pada blok.Misalnya, blok negara ‘Indonesia’ memiliki

informasi berupa ‘Jakarta’, ‘Surabaya’, dan ‘Denpasar’. Komponen hash-nya adalah karakter yang terdapat pada ketiga

informasi tersebut, misalnya JASBDP. Setiap blok berturut-turut akan berisikan hash blok sebelumnya. Jika blok berikutnya

berisikan informasi baru, misalnya ‘Bandung’, maka hash-nya berubah menjadi JASBDPG. Namun, blok-blok sebelumnya

tetap memiliki hash lama berupa JASBDP. Pada jaringan blockchain, semua data maupun program tereplikasi ke seluruh

jaringan. Komputer yang terhubung dalam jaringan ini kemudian mengeksekusi program tersebut bersama-sama. Jika salah

satu komputer dalam blockchain dimatikan, maka semua pengguna yang terhubung juga terkena dampaknya. Dengan kata lain,

blockchain adalah komputer skala besar yang dibentuk dari komunikasi antara beberapa komputer.

Ethereum adalah sebuah world’s programmable blockchain atau lingkungan blockchain yang dapat diprogram. Seperti

bitcoin maupun sistem blockchain lain, Ethereum mempunya mata uang digital untuk lingkupnya sendiri yang disebut sebagai

Ether (ETH). Namun tidak seperti bitcoin atau blockchain lainnya, Ethereum bisa dimanfaatkan untuk hal yang lebih luas karena

berbasis “smart contract”. Smart contract secara sederhananya adalah sekumpulan kode dengan fungsi - fungsi tertentu yang

berjalan diatas blockchain Ethereum. Kode tersebut disebut “contract” karena kode - kode tersebut bisa mengontrol aset atau

hal hal berharga.

*C.*

*Penelitian atau Paper Terkait*

Untuk project Patenkeun ini, kelompok kami merangkum tiga paper terkait dengan pemanfaatan blockchain dalam

permasalah paten. Paper pertama berjudul “Intellectual-Property Blockchain-Based Protection Model for Microfilms” memuat

dokumentasi pemanfaatan blockchain sebagai sistem pencatatan atau pengakuan kepemilikan paten. Pada jurnal pertama ini

fokus kasus yang dibahas adalah pelanggaran hak cipta atau paten microfilm di china dan solusinya terfokus dalam aplikasi

blockchain yang berfungsi hanya untuk pendaftaran/publish paten ke blockchain.

Paper kedua, yang berjudul “The Survey on Intellectual Property Based on Blockchain Technology” memuat hasil survey

keefektifan blockchain sebagai salah satu alternatif solusi intellectual property protection. Penulis paper kedua ini sangat

merekomendasikan pengembangan teknologi perlindungan paten berbasis blockchain ini karena menurut analisis hasil survey

yang didapat penulis, alternatif solusi tersebut diperkirakan akan menjadi sesuatu yang populer di era mendatang.

Paper ketiga berjudul “A Blockchain-based Traceable IP Copyright Protection Algorithm ” memuat dokumentasi

pengembangan sistem paten yang tidak hanya berfokus pada pencatatan/publishing patent ke blockchain, tetapi juga mencakup

sistem trading dan jual beli lisensi (granting) untuk paten - paten yang sudah terdaftar di blockchain

III. SYSTEM DESIGN

Sistem Patenkeun memiliki lima jenis smart contract yang di-publish ke Ethereum network. Dengan detail penjelasan dalam

diagram sebagai berikut,





*Gambar 1. Diagram Rancangan Sistem Patenkeun*

*A.*

*Smart Contract Product*

Kontrak Product menyimpan informasi produk yang akan diberikan lisensi paten. Kontrak Product dibuat dan di-*publish*

oleh akun Ethereum milik *Product Owner*. Kontrak ini bersifat sederhana dan hanya menyimpan informasi nama produk serta

*address* akun Ethereum *Product Owner*.

*Gambar 2. Smart Contract Product*

*B.*

*Smart Contract Patent*

Kontrak Patent menyimpan informasi terkait hak paten yang dimiliki oleh *Patent Owner*. Kontrak ini dibuat dan di-*publish*

oleh akun Ethereum milik *Patent Owner*. Kontrak ini menyimpan informasi:

a. Nama hak paten (PatentName, string)

b. Ethereum address pemilik paten (PatentOwner, address)

c. Harga paten dalam wei yang harus dibayarkan untuk mendapatkan lisensi paten

Selain itu, kontrak ini juga memiliki *method* create yang dijalankan oleh *Product Owner* dan menerima *address* dari kontrak

Product serta pembayaran dalam bentuk wei. *Method* ini pertama akan melakukan pengecekan untuk memastikan bahwa yang

menjalankan *method* tersebut merupakan pemilik dari kontrak Product yang akan diberikan lisensi. Kemudian, apabila nilai wei

yang dikirimkan mencukupi, *method* ini akan membuat dan mem-*publish* kontrak Grant yang menghubungkan antara kontrak

Patent yang dimaksud dan kontrak Product. Terakhir, *method* ini akan mengembalikan nilai *address* dari kontrak Grant yang

baru dibuat.





*Gambar 3. Smart Contract Patent*

*C.*

*Smart Contract Grant*

Kontrak Grant menyimpan informasi tentang pemberian lisensi suatu paten terhadap produk. Kontrak ini

menyimpan informasi:

a. Address dari kontrak Patent (PatentAddress, address)

b. Address dari kontrak Product (ProductAddress, product)

c. Nilai pembelian lisensi paten dalam ukuran wei (GrantPrice, uint256)

Kontrak ini dibuat dan di-*publish* oleh kontrak Patent.

*Gambar 4. Smart Contract Grant*

*D.*

*Smart Contract PatentPool*

Kontrak PatentPool merupakan gabungan dari beberapa kontrak Patent yang bertujuan untuk mempermudah pembelian

banyak lisensi hak paten. Kontrak ini dapat dibuat dan di-*publish* oleh siapapun, namun kontrak ini baru dapat digunakan setelah

semua *Patent Owner* yang patennya tercantum dalam kontrak ini melakukan validasi. Kontrak ini menyimpan informasi:

a. Address dari kontrak Patent (PatentAddresses, address[])

b. Address dari pemilik kontrak Patent (PatentOwners, address[])

c. Status validasi dari masing-masing kontrak Patent (PatentApprovals, bool[])

d. Harga lisensi dari masing-masing kontrak Patent dalam bentuk wei (PatentPrices, uint256[])

e. Total harga dari semua kontrak Patent (TotalPrice, uint256)

Selain itu, kontrak ini juga memiliki method:

a. validatePool() yang dijalankan oleh masing-masing *Patent Owners* yang tercatat di PatentOwners. Apabila semua

*owners* sudah melakukan validasi, kontrak dinyatakan valid.





b. create() yang dijalankan oleh *Product Owners* untuk membeli lisensi hak paten yang ada pada *pool*. *Method* ini hanya

bisa dijalankan apabila kontrak PatentPool sudah dinyatakan valid. *Method* ini membuat dan mem-*publish* kontrak

PooledPatentGrant dan memanggil *method* create() pada kontrak Patent.

*Gambar 5. Smart Contract PatentPool*

*E.*

*Smart Contract PooledPatentGrant*

Kontrak PooledPatentGrant menyimpan informasi tentang pemberian lisensi suatu *patent pool* terhadap produk. Kontrak ini

menyimpan informasi:

a. Address dari kontrak PatentGrant (PatentGrantAddresses, address)

b. Address dari kontrak Product (ProductAddress, product)

Kontrak ini dibuat dan di-*publish* oleh kontrak PatentPool.





*Gambar 6. Smart Contract PooledPatentGrant*

*Tabel 1. Business Canvas Project Patenkeun*

*F.*

*Business Canvas*

**KEY PARTNERS**

**KEY ACTIVITIES**

**VALUE**

**PROPOSITION**

**CUSTOMER**

**RELATIONSHIPS**

**CUSTOMER**

**SEGMENTS**

World Researchers

Associations

Smart Contract

dev & maint.

terdesentralisasi

Transactional

Produsen Produk

Researcher

**KEY RESOURCE**

Smart contract

Ether

**CHANNELS**

World Intellectual

Property Organization

immutability

Website

Mobile process

Inventor

Sosial Media

Lembaga Paten

Researcher Partner

University Partner

**COST STRUCTURE**

Fixed cost

**REVENUE STREAMS**

Grant process

Independet cost

Publikasi Paten atau Produk

Patent Pooling





IV. SIMULATION RESULTS

Saat melakukan demo Patenkeun, terdapat beberapa jenis aktivitas yang dijalankan. Agar seluruh aktivitas dapat teramati

dengan baik, proses demo Patenkeun membutuhkan paling sedikit dua akun ethereum berbeda dengan jumlah initial Ether

default yaitu 100 Ether. Adapun hasil simulasi yang didapat, tertera pada tabel berikut ini,

*Tabel 2. Simulation Result (Consumed Gas)*

**No**

1

**Activity**

**Transaction Cost**

693795 gas

693859 gas

265715 gas

205782 gas

1688298 gas

53784 gas

**Execution Cost**

474719 gas

474719 gas

145571 gas

183102 gas

1216786 gas

32512 gas

Publish Patent 1

2

Publish Patent 2

3

Publish Product 1

4

Product 1 grant Patent 1

Create Patent Pool 1

Validate Pool - Patent Owner 1

Validate Pool - Patent Owner 2

Product 1 grant Patent Pool 1

5

6

7

59720 gas

38448 gas

8

821483 gas

798803 gas

Satu gas adalah satu wei, dan dapat diamati bahwa aktivitas dengan cost terbesar adalah create Patent Pool 1. Teori yang

menyatakan bahwa semakin komplek contract dan semakin banyak data yang di unggah ke blockchain, maka semakin besar

cost. Sehingga hasil simulasi sudah sesuai dengan teori karena contract yang paling kompleks dan menampung data terbanyak

di sistem Patenkeun adalah smart contract Patent Pool

V. ANALYSIS

Berdasarkan hasil simulasi dapat disimpulkan skenario yang digunakan telah berhasil mewujudkan konsep project dengan

serangkaian langkah langkah dari rancangan atau skema sistem sebagai berikut,

\1. Pemilik paten menerbitkan paten dengan menyertakan nama paten dan harga paten yang diinginkan melalui eksekusi

smart contract patent (sebagaimana yang dijelaskan point 3).

\2. Pemilik produk menerbitkan produk dengan menyertakan nama produk yang diinginkan melalui eksekusi smart

contract product..

\3. Pemilik produk memetakan (membeli lisensi) paten dengan mengakses smart contract paten dengan menyertakan

alamat product address yang dimaksud dan sejumlah ether yang diperlukan (sesuai harga paten yang dimaksud). (Note: Hanya

product owner yang bersesuaian dengan produknya yang dapat menambahkan paten ke produk tersebut)

\4. Setelah proses pembelian lisensi paten selesai, maka transaction output akan menghasilkan sebuah hash address. Hash

address ini adalah alamat dari grant (ibarat nota pembelian lisensi yang di dalamnya terdapat data penjual, pembeli dan yang

diperjual belikan).

\5. Untuk validasi, address yang sudah di output dapat dilacak melalui copy paste pada kolom fitur “At Address” dengan

terlebih dahulu merubah smart contract menjadi grant.

\6. Pada tahap ini, validator dapat mengecek kelengkapan seperti alamat dari paten dan alamat dari produk untuk

keabsahan bukti transaksi tersebut.





\7. Untuk pembuatan patent pool, proses kurang lebih serupa yaitu dengan terlebih dahulu pemilik paten tertentu (bisa

jadi orang yang sama atau berbeda) menerbitkan sebuah paten. Sehingga di dalam network sudah terdapat minimal 2 paten.

\8. Dengan mengeksekusi smart contract patent pool, maka secara otomatis total harga paten akan terakumulasi. Namun

terlebih dahulu harus mendapatkan konfirmasi dari pemilik paten yang patennya akan digabungkan (menjadi paten pool).

\9. Proses validasi dapat dimulai dengan mengganti akun dengan akun pemilik paten (misal A) lalu memilih tombol

Validate pada Smart Contract pool patent. Lakukan hal serupa untuk pemilik paten lain yang tergabung.

\10. Setelah tervalidasi maka pemilik produk yang hendak membeli paten pool ini hanya perlu mengakses alamat paten

pool dengan menyertakan alamat produk nya dan sejumlah ether yang diperlukan untuk menuntaskan transaksi. Sehingga

setelah berhasil, smart contract ini akan menghasilkan transaction output berupa hash address dari pooled patent grant.

\11. Untuk validasi, address yang sudah di output dapat dilacak melalui copy paste pada kolom fitur “At Address” dengan

terlebih dahulu merubah smart contract menjadi pooled patent grant.

VI. CONCLUSION

Project patenkeun secara umum telah berhasil merealisasikan proses transaksi dan recording silsilah paten sebagaimana

skema yang diharapkan di awal. Harapan awal dari project ini adalah mampu menciptakan suatu sistem yang terintegrasi antara

penerbit paten dan calon pengguna hak atau lisensi paten tersebut. Melalui smart contract patent, pemilik paten mampu

menerbitkan paten dengan mudah dengan menyertakan nama paten dan harga sewa paten tersebut. Dari sudut pandang pemilik

product, sangat mudah untuk menerbitkan produk dengan hanya menyertakan nama produk. Untuk proses pembelian paten,

produk owner hanya perlu mengakses paten, menyertakan alamat produk dan ether. Selain itu patenkeun sendiri memungkinkan

terbentuknya konsolidasi antara beberapa pemilik paten dalam fitur paten pool. Selain menguntungkan dari sisi penggiat paten,

hal ini juga tentunya menguntungkan pemilik produk yang semakin dimudahkan dalam membeli hak paten bagi produknya

secara kolektif.

REFERENCES

[1] https://aippi.org/download/commitees/97/RS97English.pdf

[2] “Intellectual-Property Blockchain-Based Protection Model for Microfilms” https://ieeexplore.ieee.org/document/7943309

[3] “The Survey on Intellectual Property Based on Blockchain Technology” https://ieeexplore.ieee.org/document/8780125

[4] A Blockchain-based Traceable IP Copyright Protection Algorithm : https://ieeexplore.ieee.org/document/8972355


