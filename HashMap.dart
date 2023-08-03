import 'dart:collection';

void main() {
  var iller = HashMap<int, String>();

  iller[06] = "Ankara";
  iller[34] = "İstanbul";
  iller[01] = "Adana";

  print(iller); //iller HasMAp yapısını ekrana basar.
  iller[06] = "Samsun"; //6 numaralı indisdeki değeri değiştirme.
  print(iller);

  String? veri = iller[34]; //verilen indisdeki değerin karşılığını döndürür.
  print(veri); //
  print(iller.length); //iller collection yapsının uzunluğunu verir.
  print(iller.isEmpty); //collection boş mu sorgusu. buş ise true döner.

  print(iller.containsKey(
      01)); //koleksiyon içerisinde verilen indis varlığını kontorl eder.
  print(iller.containsValue(
      "İstanbul")); //koleksiyon içerisinde verilen değer varlığını kontrol eder değer döndürür.

  var anahtarlar = iller.keys; //koleksiyon içerisinde keyleri verir.
  for (var anahtar in anahtarlar) {
    print(
        "Sonuç: ${iller[anahtar]}"); //aldığımız keylere göre bütün değerleri yazdırır.
  }

  iller.remove(01); //verilen key değerindeki değeri siler.
  print(iller);
}
