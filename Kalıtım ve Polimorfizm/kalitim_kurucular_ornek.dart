void main(List<String> args) {
  // Kalıtımda kurucu Methodların Kullanımı örneği ve özeti

  Kisi kasatura = Kisi("Kasatura", 24);
  kasatura.kendiniTanit();
  Calisan ismet = Calisan("İsmet", 42, 5000);
  ismet.kendiniTanit();


}

class Kisi {
  String isim;
  int yas;

  Kisi(this.isim, this.yas);

  void kendiniTanit() {
    print("Benim adım $isim ve yaşım $yas");
  }
}

class Calisan extends Kisi {
  int maas;

  Calisan(String isim, int yas, this.maas) : super(isim, yas);
  @override
  void kendiniTanit() {
    print("Benim adım $isim ve yaşım $yas ve maaşım  $maas TL");
  }
}

