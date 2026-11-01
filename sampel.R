# Instal library jika belum ada
library(readxl)

# Baca file Excel (pastikan path file sesuai)
file_path <- "C:/Users/HP/Documents/Kuliah Semester 5/SURVEY/TA/surpei.xlsx"
data <- read_excel(file_path, sheet = "populasi target")  # Sesuaikan nama sheet

# Pilih kolom yang relevan untuk analisis
# Ganti "Kolom1", "Kolom2", ... dengan nama kolom skor Likert
selected_data <- data[, 11:ncol(data)]

# Hitung rata-rata setiap responden (baris) jika ada beberapa indikator
mean_scores <- rowMeans(selected_data, na.rm = TRUE)

# Hitung varians populasi (σ^2)
sigma_squared <- var(mean_scores)  # Varians populasi

# Parameter populasi dan margin of error
N <- nrow(data)      # Total populasi
D <- 0.05^2          # Margin of error (5%)

# Hitung ukuran sampel (n)
n <- (N * sigma_squared) / ((N - 1) * D + sigma_squared)

# Tampilkan hasil
cat("Ukuran sampel:", n)
