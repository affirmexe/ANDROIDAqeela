import 'dart:io';

void main() {
  // print('Masukkan nama:');
  // String? name = stdin.readLineSync();

  // print('Masukkan umur:');
  // int age = int.parse(stdin.readLineSync()!);

  // print(
  //   'Halo $name, umurmu tahun depan adalah ${age + 1} tahun. Tua Bangka 🫵😂',
  // );

  // int nilai = 100;

  // if (nilai >= 90) {
  //   print('Nilai A');
  // } else if (nilai >= 80) {
  //   print('Nilai B');
  // } else if (nilai >= 70) {
  //   print('Nilai C');
  // } else {
  //   print('Nilai D atau Nilai E');
  // }

  // print('Ini "for loop"');
  // for (int i = 1; i <= 5; i++) {
  //   print('Halo ke-$i');
  // }

  // print('Ini "while loop"');
  // int i = 1;
  // while (i <= 5) {
  //   print('Halo ke-$i');
  //   i++;
  // }

  // print('Ini "while loop"');
  // int l = 1;
  // do {
  //   print('Halo ke-$l');
  //   l++;
  // } while (l <= 5);

  // LATIHAN SOAL
  // print('Panjang:');
  // int panjang = int.parse(stdin.readLineSync()!);

  // print('Lebar:');
  // int lebar = int.parse(stdin.readLineSync()!);

  // int luas = panjang * lebar;
  // print('Luas Persegi Panjang: $luas cm²');

  // int keliling = 2 * (panjang + lebar);
  // print('Keliling Persegi Panjang: $keliling cm');

  // LATIHAN SOAL 2
  // print('Masukan bilangan bulat:');
  // int bilangan = int.parse(stdin.readLineSync()!);
  // if (bilangan % 2 == 0) {
  //   print('$bilangan adalah bilangan genap');
  // } else {
  //   print('$bilangan adalah bilangan ganjil');
  // }

  // LATIHAN SOAL 3
  print('Masukkan luas lingkaran jari (r)!');
  double r = double.parse(stdin.readLineSync()!);
  double luasLingkaran = 3.14 * r * r;
  print('Luas Lingkaran: $luasLingkaran cm²');
}
