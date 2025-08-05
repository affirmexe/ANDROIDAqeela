// // // // // // import 'dart:io';

// // // // // // // void main() {
// // // // // // // print('Masukkan nama:');
// // // // // // // String? name = stdin.readLineSync();

// // // // // // // print('Masukkan umur:');
// // // // // // // int age = int.parse(stdin.readLineSync()!);

// // // // // // // print(
// // // // // // //   'Halo $name, umurmu tahun depan adalah ${age + 1} tahun. Tua Bangka 🫵😂',
// // // // // // // );

// // // // // // // int nilai = 100;

// // // // // // // if (nilai >= 90) {
// // // // // // //   print('Nilai A');
// // // // // // // } else if (nilai >= 80) {
// // // // // // //   print('Nilai B');
// // // // // // // } else if (nilai >= 70) {
// // // // // // //   print('Nilai C');
// // // // // // // } else {
// // // // // // //   print('Nilai D atau Nilai E');
// // // // // // // }

// // // // // // // print('Ini "for loop"');
// // // // // // // for (int i = 1; i <= 5; i++) {
// // // // // // //   print('Halo ke-$i');
// // // // // // // }

// // // // // // // print('Ini "while loop"');
// // // // // // // int i = 1;
// // // // // // // while (i <= 5) {
// // // // // // //   print('Halo ke-$i');
// // // // // // //   i++;
// // // // // // // }

// // // // // // // print('Ini "while loop"');
// // // // // // // int l = 1;
// // // // // // // do {
// // // // // // //   print('Halo ke-$l');
// // // // // // //   l++;
// // // // // // // } while (l <= 5);

// // // // // // // LATIHAN SOAL
// // // // // // // print('Panjang:');
// // // // // // // int panjang = int.parse(stdin.readLineSync()!);

// // // // // // // print('Lebar:');
// // // // // // // int lebar = int.parse(stdin.readLineSync()!);

// // // // // // // int luas = panjang * lebar;
// // // // // // // print('Luas Persegi Panjang: $luas cm²');

// // // // // // // int keliling = 2 * (panjang + lebar);
// // // // // // // print('Keliling Persegi Panjang: $keliling cm');

// // // // // // // LATIHAN SOAL 2
// // // // // // // print('Masukan bilangan bulat:');
// // // // // // // int bilangan = int.parse(stdin.readLineSync()!);
// // // // // // // if (bilangan % 2 == 0) {
// // // // // // //   print('$bilangan adalah bilangan genap');
// // // // // // // } else {
// // // // // // //   print('$bilangan adalah bilangan ganjil');
// // // // // // // }

// // // // // // // LATIHAN SOAL 3
// // // // // // //   print('Masukkan luas lingkaran jari (r)!');
// // // // // // //   double r = double.parse(stdin.readLineSync()!);
// // // // // // //   double luasLingkaran = 3.14 * r * r;
// // // // // // //   print('Luas Lingkaran: $luasLingkaran cm²');

// // // // // // class Kucing {
// // // // // //   String nama;
// // // // // //   String warna;
// // // // // //   // Kucing(this.nama, this.warna); // Field formal parameter
// // // // // //   Kucing(String nama, String warna) {
// // // // // //     this.nama = nama; // Inisialisasi field
// // // // // //     this.warna = warna; // Inisialisasi field
// // // // // //   }

// // // // // //   void perkenalan() {
// // // // // //     print('Nama kucingku adalah $nama dengan warna $warna.');
// // // // // //   }
// // // // // // }

// // // // // // void main() {
// // // // // //   var kucingA = Kucing('Kitty', 'putih');
// // // // // //   kucingA.perkenalan();
// // // // // // }

// // // // // // // }

// // // // // class Hewan {
// // // // //   void makan() {
// // // // //     print('Hewan sedang makan');
// // // // //   }
// // // // // }

// // // // // class Kucing extends Hewan {
// // // // //   void suara() {
// // // // //     print('Meong!');
// // // // //   }
// // // // // }

// // // // // void main() {
// // // // //   var kitty = Kucing();
// // // // //   kitty.makan();
// // // // //   kitty.suara();
// // // // // }

// // // // mixin Terbang {
// // // //   void terbang() {
// // // //     print('Aku bisa terbang tinggi di mimpi dan dunia nyata!');
// // // //   }
// // // // }

// // // // class Burung with Terbang {}

// // // // void main() {
// // // //   var b = Burung();
// // // //   b.terbang();
// // // // }

// // // class Hewan {
// // //   void hidup() {
// // //     print('Hewan ini masih hidup di dunia!');
// // //   }
// // // }

// // // mixin Terbang {
// // //   void terbang() {
// // //     print('AKu bisa terbang tinggi di langit!');
// // //   }
// // // }

// // // class Elang extends Hewan with Terbang {}

// // // void main() {
// // //   var e = Elang();
// // //   e.hidup();
// // //   e.terbang();
// // // }

// // enum Cuaca { cerah, hujan, berawan }

// // void main() {
// //   var hariIni = Cuaca.hujan;

// //   if (hariIni == Cuaca.hujan) {
// //     print('Makanya beli payung lebih awal, stuck kan di DC Cakung 😑');
// //   }
// // }

// enum StatusPengiriman { belumDikirim, dikirim, diterima }

// void main() {
//   StatusPengiriman status = StatusPengiriman.belumDikirim;
//   switch (status) {
//     case StatusPengiriman.belumDikirim:
//       print('Paket lom dikirim');
//       break;
//     case StatusPengiriman.dikirim:
//       print('Haket agi dalam perjalanan');
//       break;
//     case StatusPengiriman.diterima:
//       print('Haket udah diterima oleh dia');
//       break;
//   }
// }

class Siswa {
  String nama;
  Siswa(this.nama);
}

extension SapaSiswa on Siswa {
  void sapa() {
    print('Hallo, saya adalah $nama dari kelas ErPeEl!');
  }
}

void main() {
  var siswa = Siswa('Budiono Siregar');
  siswa.sapa();
}
