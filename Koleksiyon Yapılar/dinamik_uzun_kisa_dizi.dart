void main(List<String> args) {
  //Dinamik uzunluğu büyüyüp küçülebilen listeleri oluşturma yöntemi
  List<int> sayilar = [];
  sayilar.add(10);
  sayilar.add(20);
  sayilar.add(30);
  print(sayilar);
  
  List<int> sayilar2 = [1,2,3,4,5];
  sayilar2.add(6);
  print(sayilar2);

  List<int> sayilar3 = List.filled(10,10,growable: true); // growable: true olursa büyüyebilir küçülebilir liste demek oluyor
  sayilar3.add(20);
  print(sayilar3);

  List<int> sayilar4 = List.empty(growable: true); // şu alttaki gibi de oluşturulabilir
  List<int> sayilar5 = [];
}