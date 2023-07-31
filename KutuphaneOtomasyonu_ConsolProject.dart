import 'dart:html';
import 'dart:io';

void main() {
  print("Rehber uygulamasına hoş gelidniz.");
  List<String> asdSoyad = [];
  List<String> SilinenKisiler = [];
  bool durum = true;

  do {
    print(
        "\n\nE- Kişi Ekle\nL- Kişileri Listele\nS- Kişi Sil\nA- Kişi Ara\nT- Silinen Kişiler\nX- Programdan Çık");
    stdout.write("Yapmak İstediğiniz İşlemi Seçiniz: ");
    String islem;
    try {
      islem = stdin.readLineSync()!;
      if (islem.length > 0) {
        print("Hataı giriş yaptınız tekrar deneyiniz.");
        continue;
      }
    } catch (e) {
      print(e.toString());
    }
  } while (durum);
}
