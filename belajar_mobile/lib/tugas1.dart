void main() {
  // 1. Menyimpan data karyawan menggunakan variabel dengan tipe data yang sesuai
  String namaKaryawan = "Deyan Sufajar";
  int jamKerja = 40; // Jumlah jam kerja dalam seminggu
  double upahPerJam = 187000.0;
  bool isKaryawanTetap = true; // true = tetap, false = kontrak

  // 2. Menghitung gaji kotor
  double gajiKotor = jamKerja * upahPerJam;

  // Variabel untuk menyimpan nilai pajak dan gaji bersih
  double pajak;
  double gajiBersih;

  // 3. Menghitung pajak berdasarkan status karyawan
  if (isKaryawanTetap) {
    // Jika karyawan tetap (true), potong pajak 10%
    pajak = gajiKotor * 0.10;
  } else {
    // Jika karyawan kontrak (false), potong pajak 5%
    pajak = gajiKotor * 0.05;
  }

  // Menghitung gaji bersih
  gajiBersih = gajiKotor - pajak;

  // 4. Menampilkan nama karyawan, gaji kotor, pajak, dan gaji bersih
  print("===== Rincian Gaji Karyawan =====");
  print("Nama Karyawan: $namaKaryawan");
  print("Gaji Kotor: Rp ${gajiKotor.toStringAsFixed(0)}");
  print("Pajak: Rp ${pajak.toStringAsFixed(0)}");
  print("Gaji Bersih: Rp ${gajiBersih.toStringAsFixed(0)}");
  print("=================================");
}
