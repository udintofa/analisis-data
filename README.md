# 📊 Analisis Data Penjualan – Food & Beverage

## 📌 Gambaran Proyek
Proyek ini bertujuan untuk melakukan analisis data dan Exploratory Data Analysis (EDA) pada data transaksi penjualan makanan dan minuman di Rumah Makan Balaji Food. Dataset diperoleh dari Kaggle dan digunakan untuk memahami pola penjualan, mengidentifikasi produk terlaris, serta menganalisis tren penjualan sebagai dasar pengambilan keputusan bisnis.

Proses analisis meliputi data assessment, data cleaning, dan preprocessing menggunakan Python (Jupyter Notebook). Dataset yang telah dibersihkan kemudian disimpan ke dalam database MySQL agar dapat diakses secara terstruktur.

Selanjutnya, dilakukan EDA dengan mengambil data langsung dari MySQL menggunakan pymysql dan sqlalchemy. Hasil analisis diekspor ke format Excel dan digunakan untuk membuat dashboard interaktif yang memudahkan visualisasi dan pemahaman insight penjualan.

---

## 🗂 Deskripsi Dataset
Dataset yang digunakan dalam proyek ini merupakan data transaksi penjualan Balaji Fast Food yang diperoleh dari Kaggle. Dataset berisi informasi penjualan makanan dan minuman, seperti nama produk, kategori, harga, jumlah terjual, serta waktu transaksi, yang digunakan untuk analisis pola dan tren penjualan.

Dataset dapat diunduh melalui tautan berikut:
👉 [dataset](https://www.kaggle.com/datasets/ahmedhalimo/balaji-fast-food-sales)

Dataset terdiri dari **1.000 data transaksi** dengan kolom sebagai berikut:

| Kolom | Deskripsi |
|------|----------|
| order_id | ID unik transaksi |
| order_date | Tanggal transaksi |
| item_name | Nama produk |
| item_type | Kategori produk (Fastfood / Beverages) |
| item_price | Harga per item |
| quantity | Jumlah item yang dibeli |
| transaction_amount | Total nilai transaksi |
| transaction_type | Metode pembayaran (Cash / Online) |
| received_by | Petugas yang menerima transaksi |
| time_of_sale | Waktu transaksi (Morning / Afternoon / Evening / Night) |

---

## 🧹 Pembersihan & Persiapan Data
Beberapa langkah pembersihan data yang dilakukan:
- Mengonversi kolom `order_date` ke format datetime
- Menstandarkan data teks dengan menghapus spasi berlebih
- Menangani nilai kosong pada kolom `transaction_type` dengan label **"Unknown"**

---

## Input Data ke Database Relasional (MySQL)
Dilakukan input data ke database relasional yaitu MySQL.
- Membuat database baru sebagai wadah untuk projek dan menyiapkan tabel dengan query pada file `\input-data-toSQL\query_create_database.sql`
- Membuat engine untuk koneksi ke database server menggunakan library `pymsql` & `sqlalchemy`
- Menginput dataset menggunakan engine

---

## 🔍 Exploratory Data Analysis (EDA)
  Melakukan Exploratory Data Analysis pada file `/use-data-fromSQL/EDA.ipynb`

### Menginput Dataset dari Database MySQL
- Membuat engine untuk koneksi ke database server menggunakan library `pymsql` & `sqlalchemy`
- Mengambil data menggunakan engine

### Menilai Data dan Membersihkan Data
- Menilai data seperti data duplikasi, data kosong, dll
- Transformasi data pada kolom `order_date` ke tipe data datetime karena bentuk tipe data datetime pada pandas dan MySQL berbeda

### Gambaran Umum Penjualan
- Jumlah total transaksi
- Total pendapatan
- Rata-rata pendapatan per order

### Analisis Produk
- Produk dengan jumlah transaksi terbanyak
- Produk dengan total pendapatan tertinggi
- Perbandingan performa Fastfood dan Beverages

### Analisis Waktu
- Pola penjualan berdasarkan waktu transaksi
- Tren penjualan bulanan menggunakan agregasi total transaksi

### Analisis Metode Pembayaran
- Distribusi transaksi Cash dan Online
- Kontribusi pendapatan berdasarkan metode pembayaran

### Export Data ke Excel
- Melakukan export data dalam bentuk excel menggunakan library pandas pada lokasi `data-cleaned/sales.xlsx`

---

## 📈 Insight Utama
- Jumlah order yang dimiliki oleh keenam produk cukup berimbang, tidak memiliki berbedaan signifikan, bisa disimpulkan penjualan per produknya cukup merata
- Pembelian pada pembagian jenis waktu juga cukup berimbang, baik pagi, siang, sore, malam, dan tengah malam tidak terdapat perbedaan signifikan antara mereka
- Penjualan jenis fastfood cenderung lebih tinggi dari pada beverage dengan total 68% dibanding 32%
- Tren pendapatan cenderung naik dari bulan ke bulan, walaupun terdapat beberapa bulan dimana pendapatan mengalami penurunan yaitu bulan Juni, September, Novermber 2022 dan Februari, Maret 2023
- Penerimaan dengan metode tunai sedikit lebih tinggi daripada penerimaan dengan metode pembayaran online

---

## Melakukan Pembuatan Dashboard dengan Microsoft Excel
- Membuat `pivot table` untuk informasi yang diperlukan
- Membuat `pivot chart` untuk memperjelas informasi dalam data
- Menggabungkan semua `chart` dalam satu dashboard
- Menambahkan `slicer` dan `timeline` untuk membuat dashboard lebih interaktif

---

## 🛠 Tools & Teknologi
- **Python**: Pandas, Matplotlib, sqlalchemy, pymysql, dan seaborn
- **Jupyter Notebook** untuk koneksi database, cleaning, analisis, dan visualisasi data
- **MySQL** untuk menyimpan data dalam bentuk database server dan menggunakan MySQL Workbench sebagai client database
- **Excel** untuk membuat tabel pivot dan keperluan dashboard interaktif

---

## 📁 Struktur Proyek
```
├── data/
│ └── sales.csv
├── data-cleaned/
│ └── sales.xlsx
├── excel-analysis/
│ └── sales.xlsx
├── input-data-toSQL/
│ ├── input_data.ipynb
│ └── query_create_database.sql
├── screenshoot-image/
│ ├── dashboard.png
│ ├── dashboard2.png
│ └── dashboard3.png
├── use-data-fromSQL/
│ └── EDA.ipynb
├── .env
├── .gitignore
└── README.md
```

---

## 📂 Penjelasan Folder & File

- `data/`  
  Berisi **data mentah (raw data)** dalam format CSV yang belum dilakukan pembersihan.

- `data-cleaned/`  
  Berisi data yang sudah melalui proses **cleaning dan penyesuaian format**, disimpan dalam bentuk Excel.

- `excel-analysis/`  
  Berisi analisis dan ringkasan data menggunakan **Excel**, termasuk pivot table atau dashboard sederhana.

- `input-data-toSQL/`  
  Berisi proses **memasukkan data ke database SQL**, terdiri dari:
  - `input_data.ipynb` → notebook untuk upload data ke database
  - `query_create_database.sql` → query pembuatan database dan tabel

- `screenshoot-image/`
  Berisi screenshoot hasil dashboard excel yang sudah jadi.

- `use-data-fromSQL/`  
  Berisi **analisis data (EDA)** menggunakan data yang diambil langsung dari database SQL.

- `.env`  
  Menyimpan konfigurasi sensitif seperti **credential database**. (tidak diupload ke github)

- `.gitignore`  
  Mengatur file atau folder yang tidak diikutkan ke repository.(tidak diupload ke github)

- `README.md`  
  Dokumentasi proyek.

---

## Screenshoot Dashboard Excel
![Screenshoot 1](/screenshoot-image/dashboard.png)
![Screenshoot 2](/screenshoot-image/dashboard2.png)
![Screenshoot 3](/screenshoot-image/dashboard3.png)


## 👤 Penulis
**Muchammad Udin Mustofa**