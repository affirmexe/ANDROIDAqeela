class Produk {
  String nama;
  int harga;

  Produk(this.nama, this.harga);

  void info() {
    print('Produk: $nama, Harga: $harga');
  }
}

  void main() {
    var produkA = Produk('Laptop', 5000000);
    produkA.info();
  }

