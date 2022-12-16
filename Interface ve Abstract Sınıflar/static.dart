void main(List<String> args) {
  // Static Sınıflar ve Methodlar
  // Static Sınıflar ve Methodlar nesne oluşturmadan kullanılabilir.
  //Sınıfa bağlı değişken ve methodlaru oluştutuken kullandığımız yapı static olarak tanımlanır.
  Matematik matematik = Matematik(5, 10);
  matematik.topla();
  matematik.cikar();
  

  Matematik matematik2 = Matematik(15, 10);
  matematik2.topla();
  matematik2.cikar();
  print(Matematik.pi);
  Matematik.sinifAdiYazdir();

  print("Toplam İşlem Sayısı: ${Matematik.toplamIslemSayisi}");
}

class Matematik {
  // static int topla(int s1, int s2) {
  //   return s1 + s2;
  // }
  //instance variable
  int s1 = 0;
  int s2 = 0;
  static int toplamIslemSayisi = 0;

  //class variable,sınıf değişkeni
  static double pi = 3.14;
  static void sinifAdiYazdir() {
    print("Matematik Sınıfıyım");
  }

  Matematik(this.s1, this.s2);

  void topla() {
    toplamIslemSayisi++;
    print(s1 + s2);
  }
  void cikar() {
    toplamIslemSayisi++;
    print(s1 - s2);
  }
}