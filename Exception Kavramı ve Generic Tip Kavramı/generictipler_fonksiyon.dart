void main(List<String> args) {
  //Generic Tipleri Kullanarak Fonksiyon oluşturma
  double doubleOrtalama = ortalamaBul<double>(5, 5.14) ;
  double intOrtalama = ortalamaBul<int>(7, 5) ;
  print("Ortalama: ${doubleOrtalama.toStringAsFixed(2)}") ;
  print("Ortalama: ${intOrtalama.toStringAsFixed(2)}") ;
}

double ortalamaBul<T extends num>(T s1, T s2){ //Generic olucak diyoruz <T> yazdık. T tipinde s1 ve s2 parametreleri alacak.
  return (s1 + s2) / 2 ;
}