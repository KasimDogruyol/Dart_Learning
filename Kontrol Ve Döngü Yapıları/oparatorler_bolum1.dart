void main(List<String> args) {
  double sayi1 = 12;
  double sayi2 = 14;

//Aritmetik Operatörler
  print("$sayi1 + $sayi2 = ${sayi1 + sayi2}");
  print("$sayi1 - $sayi2 = ${sayi1 - sayi2}");
  print("$sayi1 * $sayi2 = ${sayi1 * sayi2}");
  print("$sayi1 / $sayi2 = ${sayi1 / sayi2}");
  print("$sayi1 % $sayi2 bölümünden kalan = ${sayi1 % sayi2}");


  // atama ve karşılaştırma operatörleri
  double sayi3 = 5;
  sayi3 += 5; // sayi3 = sayi3 + 5;
  print(sayi3);
  sayi3 -= 5; // sayi3 = sayi3 - 5;
  print(sayi3);
  sayi3 *= 5; // sayi3 = sayi3 * 5;
  print(sayi3);
  sayi3 /= 5; // sayi3 = sayi3 / 5;
  print(sayi3);
  sayi3 %= 4; // sayi3 = sayi3 % 4;
  print(sayi3);

  // karşılaştırma operatörleri
  // == eşit mi, != eşit değil mi, > büyük mü, < küçük mü, >= büyük eşit mi, <= küçük eşit mi
  double sayi4 = 9;
  double sayi5 = 10;
  if (sayi4 == sayi5) {
    print("sayi4 ve sayi5 eşittir");
  }
   else {
    print("sayi4 ve sayi5 eşit değildir");
  }
  String ad = "İsmet";
  String soyad = "İbrahim";

  if (ad != soyad) {
    print("ad ve soyad eşit değildir");
  }
  else {
    print("ad ve soyad eşittir");
  }

  // mantıksal operatörler
  // && ve, || veya, ! değil
  // mesela java ve kotlin bile iş ilanı  => java && kotlin => java ve kotlin bilenler
  // mesela java veya kotlin bile iş ilanı => java || kotlin => java veya kotlin bilenler


  bool kosul1 = true;
  bool kosul2 = false;
  print(kosul1 && kosul2); // true && true => true
  print(kosul1 || kosul2); // true || false => true
  print(!kosul2); // !true => false , tersini alır



}