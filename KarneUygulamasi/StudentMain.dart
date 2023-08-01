import 'dart:io';
import 'Ogrenciler.dart';
import 'KarneUygulamasi.dart' as karneapp;

//Uygulamanın çalıştığı asıl dart dosyasıdır
void main() {
  int num = 1;
  var ogrenciler = <Ogrenci>[];

  while (true) {
    print("Öğrencinin adını giriniz:");
    String name = stdin.readLineSync()!;

    print("Öğrencinin sınıfını giriniz:");
    String _class = stdin.readLineSync()!;
    var notBil = karneapp.main();
    var newStudent = Ogrenci(num, name, _class, notBil.toInt());
    num++;
    ogrenciler.add(newStudent);

    print("Çıkmak için (x)'e basın- devam etmek için başka bir tuşa basınız.");
    if ('x' == stdin.readLineSync()!) break;
  }
  for (var ogr in ogrenciler) {
    print("Ogrenci No: ${ogr.ogrNo}");
    print("Öğrenci Adi: ${ogr.Name} ");
    print("Öğrencinin Sınıfı: ${ogr.Sinif}");
    if (ogrenciler.last != ogr) print("**********");
  }
}
