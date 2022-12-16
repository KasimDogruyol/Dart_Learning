void main(List<String> args)async {
  print("Program Başladi") ;
   Future.delayed(Duration(seconds: 0), () => "0 saniye sonra") ;
  print("Program Bitti") ;

   Future<int> toplam =Future((){ // illa delay duration kullanmak zorunda değiliz
    int toplam = 0 ;
    for(int i = 0 ; i < 1000000000 ; i++){// başlatırsan göriceksin ki bu geç geliyor işlemleri yapamsı uzun sürüyor ve delay vermedim
      toplam += i ;
    }
    return toplam ;
    // throw new Exception("Hata Oluştu") ;
  });

  // toplam //then yapısı ile kulandık 
  // .then((int toplam) => print("Toplam: $toplam"))
  // .catchError((hata) => print(hata));
  //aynısını async await ile yapalım
  try{

    int forSonuc = await toplam ; //await kullandığım iççin yukarıya maindive ben async yazdım
  print("Toplam: $forSonuc") ;
  }catch(e){ //olası hata varsa catch ile yakaladık return toplam olan satırı yoruma alıp altındaki yorumda olan throwu devreye sokarsan bu çalışır
    print(e) ;
  }
  

  var f2 =Future.value('emre'); // Future.value() metodu ile direkt olarak future sınıfı oluşturabiliriz. //MOCK Datada kullanılabilir
  f2.then((value) => print(value)) ;
  var f3 =Future.error('hata'); // Future.error() metodu ile geriye hata döndürebiliyoruz
  f3.catchError((hata) => print(hata));
   
}