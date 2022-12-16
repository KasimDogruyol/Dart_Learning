void main(List<String> args) {
  // Lexical Closure Kavramı
  //lexical variable scope
  var mainDegiskeni = 1;

  void a(){
    var aDegiskeni = 2;

    void b(){
      var bDegiskeni = 3;
      print(mainDegiskeni);
      print(aDegiskeni);
      print(bDegiskeni);
      
    }
  }
  // var d = topla();
  // print(d(5));
  var dondurulenFonksiyon = topla(5);
   var sonuc =dondurulenFonksiyon(4);
    print(sonuc);
}

Function topla (int eleman){
  return (int deger) => deger * eleman;
}