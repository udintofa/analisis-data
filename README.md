# 📊 Analisis Data Penjualan – Food & Beverage

## 📌 Gambaran Proyek
Proyek ini bertujuan untuk melakukan **Exploratory Data Analysis (EDA)** pada data transaksi penjualan makanan dan minuman.  
Analisis dilakukan untuk memahami pola penjualan, mengidentifikasi produk terlaris, melihat tren penjualan berdasarkan waktu, serta menggali insight bisnis yang dapat digunakan sebagai dasar pengambilan keputusan.

Proses analisis dilakukan menggunakan **Python (Pandas & Matplotlib)** dengan pendekatan analisis yang selaras dengan **workflow SQL**.

---

## 🗂 Deskripsi Dataset
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
- Membuat fitur tambahan berbasis waktu (misalnya kolom `month`) untuk analisis tren

---

## 🔍 Exploratory Data Analysis (EDA)

### 1️⃣ Gambaran Umum Penjualan
- Jumlah total transaksi
- Total pendapatan
- Rentang waktu transaksi

### 2️⃣ Analisis Produk
- Produk dengan jumlah transaksi terbanyak
- Produk dengan total pendapatan tertinggi
- Perbandingan performa Fastfood dan Beverages

### 3️⃣ Analisis Waktu
- Pola penjualan berdasarkan waktu transaksi
- Tren penjualan bulanan menggunakan agregasi total transaksi

### 4️⃣ Analisis Metode Pembayaran
- Distribusi transaksi Cash dan Online
- Kontribusi pendapatan berdasarkan metode pembayaran

### 5️⃣ Perilaku Pembelian
- Distribusi jumlah pembelian per transaksi
- Hubungan antara harga produk, kuantitas, dan total transaksi

---

## 📈 Insight Utama
- Beberapa produk memiliki kontribusi pendapatan yang tinggi meskipun jumlah transaksinya tidak paling banyak
- Penjualan cenderung lebih tinggi pada malam hari dibandingkan waktu lainnya
- Metode pembayaran online memberikan kontribusi signifikan terhadap total pendapatan
- Produk Fastfood mendominasi jumlah transaksi, sedangkan Beverages memiliki harga rata-rata yang lebih tinggi

---

## 🛠 Tools & Teknologi
- **Python**: Pandas, Matplotlib
- **Jupyter Notebook** untuk analisis dan visualisasi
- **Pendekatan SQL** untuk logika agregasi dan analisis data
- **Excel-ready output** untuk keperluan dashboard

---

## 📁 Struktur Proyek
├── data/
│ └── sales_data.csv
├── notebook/
│ └── sales_eda.ipynb
├── README.md


---

## 🚀 Pengembangan Selanjutnya
- Menambahkan analisis berbasis SQL untuk replikasi EDA
- Membuat dashboard interaktif menggunakan Excel atau Power BI
- Analisis tren dan musiman yang lebih mendalam

---

## 👤 Penulis
**Muchammad Udin Mustofa**
