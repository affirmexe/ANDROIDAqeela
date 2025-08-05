enum JenjangPendidikan { sd, smp, sma, smk, kuliah }

void main() {
  JenjangPendidikan jenjang = JenjangPendidikan.smp;

  switch (jenjang) {
    case JenjangPendidikan.sd:
      print("Jenjang Pendidikan: SD");
      break;
    case JenjangPendidikan.smp:
      print("Jenjang Pendidikan: SMP");
      break;
    case JenjangPendidikan.sma:
      print("Jenjang Pendidikan: SMA");
      break;
    case JenjangPendidikan.smk:
      print("Jenjang Pendidikan: SMK");
      break;
    case JenjangPendidikan.kuliah:
      print("Jenjang Pendidikan: Kuliah");
      break;
  }
}
