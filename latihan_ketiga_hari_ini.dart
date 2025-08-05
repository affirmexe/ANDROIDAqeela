mixin Lembur {
  void lemburJam(int jam) {
    if (jam > 2) {
      print("Lembur: Tambahan gaji");
    } else {
      print("Lembur: Tidak cukup lama");
    }
  }
}

class Staff with Lembur {}

void main() {
  var staff = Staff();
  staff.lemburJam(3); // Output: Lembur: Tambahan gaji
  staff.lemburJam(1); // Output: Lembur: Tidak cukup lama
}
