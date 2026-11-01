# Jika data sudah diimport ke R, misalnya dari Excel
library(readxl)
data_kuesioner <- read_excel("data_kuesioner.xlsx", sheet = "Harapan")  # Sesuaikan nama file dan sheet
# Pastikan data memiliki 9 kolom (item 1-9)
data_kuesioner$total_score <- rowSums(data_kuesioner[, 1:19])
# Tentukan jumlah responden dan item
n_responden <- nrow(data_kuesioner)
n_item <- 19

# Derajat kebebasan
df <- n_responden - 2

# Hitung t-value untuk alpha = 0.05
t_value <- qt(1 - 0.05 / 2, df)

# Hitung R Tabel
r_tabel <- sqrt(t_value^2 / (t_value^2 + df))

# Hitung validitas tiap item
validitas <- sapply(1:n_item, function(i) {
  cor(data_kuesioner[[i]], data_kuesioner$total_score - data_kuesioner[[i]], method = "pearson")
})

# Kategorikan validitas
validitas_kategori <- ifelse(validitas > r_tabel, "Valid", "Tidak Valid")

# Gabungkan hasil
validitas_hasil <- data.frame(
  Item = paste0("Item", 1:n_item),
  Korelasi = validitas,
  R_Tabel = r_tabel,
  Kategori = validitas_kategori
)

# Tampilkan tabel validitas
library(knitr)
kable(validitas_hasil, caption = "Tabel Validitas (Item-Total Correlation)")

# Hitung Cronbach's Alpha
library(psych)
cronbach_alpha <- alpha(data_kuesioner[, 1:19])

# Hasil Cronbach's Alpha
cronbach_result <- data.frame(
  Alpha_Value = cronbach_alpha$total$raw_alpha,
  Reliability = ifelse(cronbach_alpha$total$raw_alpha > 0.7, "Reliabilitas Tinggi", "Reliabilitas Rendah")
)

# Tampilkan hasil Cronbach's Alpha
kable(cronbach_result, caption = "Tabel Cronbach's Alpha (Reliabilitas)")

