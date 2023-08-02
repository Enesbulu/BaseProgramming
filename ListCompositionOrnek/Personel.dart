import 'Adress.dart';

class Personel {
  late int no;
  late String isim;
  late Adres adres;

  Personel(this.no, this.isim,
      this.adres); //Burada, bir nesnenin içerisinde başka bir nesne referans edilme işlemi yapılmıştır. (Compozition). Personel classında Adres classı kullanıldı.
}
