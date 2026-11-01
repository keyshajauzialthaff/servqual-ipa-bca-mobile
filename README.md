# servqual-ipa-bca-mobile
# Evaluasi Kualitas Layanan BCA Mobile dan Kepuasan Nasabah (SERVQUAL & IPA)

Repositori ini berisi kode dan dokumentasi proyek penelitian untuk mengevaluasi kualitas layanan aplikasi **BCA Mobile** menggunakan pendekatan **SERVQUAL** (Service Quality) dan metode **Importance-Performance Analysis (IPA)**. Studi kasus dilakukan di lingkungan mahasiswa aktif Program Studi Statistika Universitas Islam Bandung (UNISBA).

---

## Struktur Repositori
├── deskripsi.xlsx/                       # Folder data kuesioner (raw & cleaned)
├── R/                                    # Kumpulan script bahasa R
│   ├── 01_sampel.R                       # Perhitungan ukuran sampel penelitian[cite: 1]
│   ├── 02_Variabel_harapan.R             # Uji validitas & reliabilitas variabel Harapan[cite: 2]
│   └── 03_Variabel_kinerja.R             # Uji validitas & reliabilitas variabel Kinerja[cite: 3]
├── infografis bca.pdf/                   # Hasil visualisasi dan diagram kartesius IPA
└── Keysha Jauzi Althaff_A_LapSurvei.pdf/ # Laporan lengkap penelitian (PDF)

## Tentang Penelitian
# Objek Penelitian: 
Pengguna aktif aplikasi BCA Mobile di kalangan Mahasiswa Statistika UNISBA.
# Dimensi SERVQUAL:
1. Tangible (Tampilan visual & desain)   
2. Efficiency (Kecepatan & kemudahan)   
3. Fulfilment (Ketersediaan fitur)   
4. Reliability (Keandalan transaksi)
5. Privacy (Keamanan data)
# Metode Analisis:
1. Uji Validitas (Product Moment Pearson)
2. Uji Reliabilitas (Cronbach's Alpha)
3. Importance-Performance Analysis (IPA) / Analisis Kuadran

## Libraries (R)
Pastikan Anda telah menginstal beberapa package R berikut sebelum menjalankan script:R
install.packages("readxl")
install.packages("psych")
install.packages("knitr")
