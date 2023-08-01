import 'dart:io';
import 'Ogrenciler.dart';

void main() {
  int num = 1;
  var ogrenciler = <Ogrenciler>[];

  while (true) {
    print("Öğrencinin adını giriniz:");
    String name = stdin.readLineSync()!;

    print("Öğrencinin sınıfını giriniz:");
    String _class = stdin.readLineSync()!;

    var newStudent = Ogrenciler(num, name, _class);
    num++;
    ogrenciler.add(newStudent);

    print("Çıkmak için (x)'e basın- devam etmek için başka bir tuşa basınız.");
    if ('x' == stdin.readLineSync()!) break;
  }
  for (var ogr in ogrenciler) {
    print("Ogrenci No: ${ogr.no}");
    print("Öğrenci Adi: ${ogr.ad} ");
    print("Öğrencinin Sınıfı: ${ogr.sinif}");
    if (ogrenciler.last != ogr) print("**********");
  }
}
