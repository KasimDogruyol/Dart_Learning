void main(List<String> args) {
  //Generic Tipler Kavramı Ve Önemi
  List <String> liste = [] ;
  liste.add("cemre") ;
  liste.add("emre") ;
  liste.add("ebrar") ;
  liste.add("mehmet") ;
  liste.add("ali") ;
  
  yazdir(liste) ;

  //List<E> ==> Element
  //Map<K,V> ==> Key, Value
  //Set<E> ==> Element
  //R ==> Return Methodların geri dönüş tipi

  //Ogreci<T extends Insan> ==> T tipi Insan sınıfından türemiş olmalıdır. mutlaka Insan sınıfından türemiş olmalı.
}
yazdir (List liste){
  print(liste[0].length);
}