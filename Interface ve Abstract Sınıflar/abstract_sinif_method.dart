void main(List<String> args) {
  // Abstract Sınıflar ve Methodlar
  Sekil kare = Kare(5);
  kare.yazdir();
  Sekil dikdortgen = Dikdortgen(5, 10);
  dikdortgen.yazdir();

}
abstract class Sekil {
  double alanHesapla();
  double cevreHesapla();
  void yazdir() {
    print(" Alanı ${alanHesapla()} Çevre: ${cevreHesapla()}");
  }
}
class Kare extends Sekil {
  int kenar;

  Kare(this.kenar);
  @override
  double alanHesapla() {
    return kenar * kenar.toDouble();
  }
  
  
  double cevreHesapla() {
    return kenar * 4;
  }
  void yazdir() {
    print("Kare Alanı: ${alanHesapla()} Çevre: ${cevreHesapla()}");
  }
}
class Dikdortgen extends Sekil{
  int kisakenar;
  int uzunkenar;

  Dikdortgen(this.kisakenar, this.uzunkenar);
  @override
  double alanHesapla() {
    return kisakenar * uzunkenar.toDouble();
  }
  double cevreHesapla() {
    return (kisakenar + uzunkenar) * 2;
  }
  void yazdir() {
    print("Dikdörtgen Alanı: ${alanHesapla()} Çevre: ${cevreHesapla()}");
  }
}
