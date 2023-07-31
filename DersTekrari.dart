// import 'dart:math';

import 'dart:io';

void main() {
  //Değişken tanımlama
  /* var ogrenciAdi = "Ahmet";
  var ogrenciYasi = 23;
  var ogrenciBoyu = 1.78;
  var OgrenciBasHarfi = "A";
  print(ogrenciAdi);
  print(ogrenciBoyu);
  print(ogrenciYasi);
  print(OgrenciBasHarfi);
*/

  //değişken yazdırma
  /*int urun_id = 3416;
  String urun_adi = "Kol saati";
  int urunAdet = 100;
  double urunFiyat = 177.99;
  String urunTedarikci = "Rolex";
  print("Urun Id: " + (urun_id.toString()));
  print("Urun Adi: " + urun_adi.toString());
  print("Urun Adedi" + urunAdet.toString());
  print("Urun Fiyati: " + urunFiyat.toString());
  print("Ürün tedarikçi: " + urunTedarikci.toString());
  */

  //print özelliği
  /*var ad = "ahmet";
  int yas = 17;

  print("$ad bursada $yas yıldır yaşamaktadır.");

  int a = 10;
  int B = 20;
  print("$a ile $B nin toplamı = ${a + B} dir");
*/

//Tek seferde birden fazla değişken oluşturma.
  /*var s1, s2, s3;
  s1 = 23;
  s2 = 22.3;
  s3 = "elma";

  print(s1.toString() + " -  " + s2.toString() + " - " + s3.toString());
*/

  //constant-Sabitler
  /*final ve const genel olarak aynı işlemde kullnılır.
  *final değişken oluşturulduktan sonra kod çalıştırıldığında hafızada oluşur.  (C# da readonly anahtar kelimesi oluyor.)
  *const değişken oluşturduğumuz anda hafızada oluşur.  (C# da da anlı şekilde kullanılır.)
  */
  /* int sayi = 30;
  sayi = 40;
  final sonuc = 23;
  const y = 34;
  // y = 23;
*/

  //Operatörler
  ////Dairenin formülü
  /*final double piValue = pi;  //math kütüphanesi üzerinden kullanılan sabit pi sayısı.
  var yariCap = 2.0;
  var alan = piValue * yariCap * yariCap;
  print(alan);*/
  ////Kuvvetin formülü
  /* double m = 12.5;
  var a = 10.0;
  var f = m * a;
  print(f);*/

  ////Başka bir formül
  /*Ax */
  /* var a = 11.0;
  double v = 12.7;
  double v0 = 15.78;
  double t = 35.5;
  double x1 = ((v + v0) / 2) * t;
  double x2 = (v0 + t) + ((1 / 2) * a * t * t);
  print(x1);
  print(x2);*/

  //tür dönüşümü
  ////Sayıssaldan sayısala
  /*int i = 42;
  double d = 42.45;
  int sonuc1 = d.toInt();
  double sonuc = i.toDouble();
  print(sonuc1);
  print(sonuc);
  */

  print("Adınızı giriniz: ");
  String isim = stdin
      .readLineSync()!; //Null safety özelliği ile input okuma işlemlerinde '!' ile null olmamaz kullanılarak olası hata durumları engellenmiştir. Bunun dışında '?' ile null olabilir olarak kullanılır.
  print("Adınız: $isim");

  print("Birinci sayıyı giriniz");
  int sayi1 = int.parse(stdin.readLineSync()!);
  print(sayi1);
}
/*
class Deneme{
  void toplam(){

  }

  void carpma(){

  }
}
*/