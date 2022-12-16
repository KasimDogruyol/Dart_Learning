void main(List<String> args) {
  // Listeler Arrayler
  List<int> sayilar = List.filled(5, 0,growable: false); // <int> yazmasakta olur bu şu demek bu listenin içinde int değerler olacak 5 burda uzunluğu 0 ise her elemanı 0 ile doldur demek
  sayilar[0] = 10; //1.elemana git 10 koy
  sayilar[1] = 20; //2.elemana git 20 koy
  sayilar[2] = 30; //3.elemana git 30 koy
  print(sayilar);
  print(sayilar.length); //uzunluk
  print(sayilar[0]); //1.elemanı yazdır

  List<String>isimler = List.filled(3, "");
  isimler[0] = "Ahmet";
  isimler[1] = 5.toString(); //5 sayısını stringe çevirip yazdır
  print(isimler);

  List karisik = List.filled(5, 0);
  karisik[0] = 10;
  karisik[1] = "Ahmet";
  karisik[2] = 3.14;
  karisik[3] = true;
  print(karisik);

  //liste elemanlarını tek tek gezmek

  for(int i=0; i<sayilar.length; i++){
    sayilar[i] +=2;
    print(sayilar[i]);
  }
print("*****************");
  for(int oankiEleman in sayilar){
    print(oankiEleman);
  }

}