import 'dart:collection';
import 'Ogrenci.dart';

void main() {
  var o1 = Ogrenci(10, "Ali", "9a");
  var o2 = Ogrenci(11, "Neşe", "9b");
  var o3 = Ogrenci(12, "Veli", "10a");

  var o4 =
      Ogrenci(12, "Aysun", "10B"); //HasSet özelliğinden dolayı ekleme yapılaz.
  var o5 = Ogrenci(
      13, "Veli", "10a"); //Nesnesi eklenir çünkü no değerleri farklıdır.

  var ogrenciler = HashSet<Ogrenci>();
  ogrenciler.add(o1);
  ogrenciler.add(o2);
  ogrenciler.add(o3);
  ogrenciler.add(o4);
  ogrenciler.add(o5);

  for (var ogr in ogrenciler) {
    print("ogrenci no: ${ogr.no}");
    print("ogrenci ad: ${ogr.ad}");
    print("ogrenci sınıf: ${ogr.sinif}");

    if (ogr != ogrenciler.last) {
      print("-----------");
    }
  }
}
