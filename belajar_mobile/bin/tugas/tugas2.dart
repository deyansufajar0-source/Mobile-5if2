// Import library untuk Input/Output
import 'dart:io';

void main() {
  // Menampilkan pesan untuk meminta input dari pengguna
  // stdout.write tidak menambahkan baris baru, jadi kursor akan berada di sebelah teks
  stdout.write('Masukkan skor mahasiswa (0 - 100): ');

  // Membaca input dari terminal. Hasilnya selalu berupa String.
  String? inputSkor = stdin.readLineSync();

  // Menggunakan blok try-catch untuk menangani error jika input bukan angka
  try {
    // Mengecek apakah input tidak kosong
    if (inputSkor != null && inputSkor.isNotEmpty) {
      // Mengubah (parse) input dari String menjadi integer (angka)
      int skor = int.parse(inputSkor);
      String grade;

      // --- PROSES DENGAN CONDITIONAL STATEMENT (logika tetap sama) ---
      if (skor >= 85 && skor <= 100) {
        grade = 'A';
      } else if (skor >= 70 && skor <= 84) {
        grade = 'B';
      } else if (skor >= 60 && skor <= 69) {
        grade = 'C';
      } else if (skor >= 50 && skor <= 59) {
        grade = 'D';
      } else if (skor >= 0 && skor < 50) {
        grade = 'E';
      } else {
        // Kondisi jika skor di luar rentang 0-100
        grade = 'Skor Tidak Valid';
      }

      // --- OUTPUT ---
      print('Grade Anda adalah: $grade');
    } else {
      print('Input tidak boleh kosong.');
    }
  } on FormatException {
    // Blok ini akan dieksekusi jika int.parse() gagal (misal, inputnya "abc")
    print('Input tidak valid. Harap masukkan angka.');
  }
}
