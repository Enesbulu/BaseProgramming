import 'DersNotlari.dart';
import 'dart:io';

main() {
  var dersNotListesi = <DersNotlari>[];
  int toplam = 0;
  while (true) {
    print("Ders adi girini: ");
    String ders = stdin.readLineSync()!;
    print("Not giriniz:");
    bool durum = true;
    late int nots;
    do {
      try {
        nots = int.parse(stdin.readLineSync()!);
        durum = false;
      } catch (e) {
        print("Hatalı giriş yaptınız lütfen sadece sayi giriniz.");
      }
    } while (durum);

    var yeniNot = DersNotlari(ders, nots);
    dersNotListesi.add(yeniNot);
    print(
        "Çıkmak için lütfen (x)'e basınız- Devam etmek için başka bir tuşa basınız.");
    if ('x' == stdin.readLineSync()!) break;
  }

  for (var dn in dersNotListesi) {
    print("${dn.ders} : ${dn.not}");
    toplam = toplam + dn.not; //toplam=toplam+dn.not;
  }
  double ort = toplam / dersNotListesi.length;
  print("**************");
  print("Ortalama: $ort");
  print("****************");
  if (ort >= 50) {
    print("Geçtiniz!");
  } else {
    print("Kaldınız!");
  }
  return ort;
}
