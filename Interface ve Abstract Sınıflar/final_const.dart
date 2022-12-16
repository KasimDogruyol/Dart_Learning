void main(List<String> args) {
  // final ve const Kavramı
  // final ve const kavramları değişkenlerin değerlerini değiştirmemek için kullanılır.
  // var isim = "Kasatura";
  // isim = "İsmet";

  // final soyisim = "Kasatura"; // final değişkenlerin değerleri değiştirilemez. sonradan değer atanamaz.
  //soyisim = "İsmet"; // hata verir

  // const String meslek = "Yayıncı"; // const değişkenlerin değerleri değiştirilemez. sonradan değer atanamaz.
  // meslek = "Yazar"; // hata verir

  //finalı ve constu hangi durumlarda kullanmalıyız?

  // const sayi = 5;

  // final sayi2 = 10;

  // final tarih = DateTime.now();
  // const tarih2 = DateTime.now(); // hata verir
  //contda runtime değerler kullanılamaz.

  final liste = [1,2,3];
  final liste2 = [1,2,3];
  liste.add(4);
  liste2.add(4);

  const liste3 = [1,2];
  const liste4 = [1,2];
  //liste3.add(3); // hata verir
  //liste4.add(3); // hata verir

  if(liste == liste2){
    print(" Final Listeler eşit");
  }else{
    print("Final Listeler eşit değil");
  }
  if(liste3 == liste4){
    print(" Const Listeler eşit");
  }else{
    print(" Const Listeler eşit değil");
  }


}