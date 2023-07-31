// import 'dart:html' as html;
// import 'dart:ffi
import 'dart:io';

void main() {
  print("Rehber uygulamasına hoş gelidniz.");
  List<String> adSoyad = [];
  List<String> SilinenKisiler = [];
  bool durum = true;

  do {
    print(
        "\n\nE- Kişi Ekle\nL- Kişileri Listele\nS- Kişi Sil\nA- Kişi Ara\nT- Silinen Kişiler\nX- Programdan Çık");
    stdout.write("Yapmak İstediğiniz İşlemi Seçiniz: ");
    String? islem;
    try {
      islem = stdin.readLineSync()!;
      if (islem.length > 0) {
        print("Hataı giriş yaptınız tekrar deneyiniz.");
        continue;
      }
    } catch (e) {
      print("Hata!!>>" + e.toString());
    }

    switch (islem) {
      case 'e': //Kişi Ekleme
      case 'E':
        ConsolClear(); //consol temizleme
        print("--Bir üst menüye dönmek için (x) e basınız--");
        for (;;) {
          print("İsim-Soyisim giriniz:");
          String temp = stdin.readLineSync()!;
          if (temp == 'x' || temp == 'X')
            break; //üst menüye dönmek için break kullanılır.
          adSoyad.add(temp);
        }
        adSoyad.sort();
        break;
      case 'l': //Kişi Kisteleme
      case 'L':
        ConsolClear();
        adSoyad.forEach((person) {
          print(person);
        });
        break;

      case 's':
      case 'S':
        ConsolClear();
        do {
          //Kişi silme
          for (int i = 0; i <= adSoyad.length; i++) {
            print("#(i+1) - $adSoyad[i]");
          }
          late int sira;
          stdout.write("Silmek istediğiniz kişinin numarasını giriniz:  ");
          do {
            //dönüşün için hata kontrolü yapıldı.
            try {
              sira = int.parse(stdin.readLineSync()!);
            } catch (e) {
              print("Hatalı giriş yaptını tekrar giriniz!");
              continue;
            }
            break;
          } while (true);

          SilinenKisiler.add(adSoyad[sira - 1]);
          adSoyad.remove(sira - 1);
          print("Kayıt Başarı ile silinmiştir.");
          stdout.write("Başka kayıt silmek istiyor musunuz?(e/h)");
          String istek = stdin.readLineSync()!;
          if (istek == 'e' || istek == 'E') {
            continue;
          } else if (istek == 'h' || istek == 'H') {
            break;
          } else {
            print("Hatalı giriş yaptınız!");
            throw ArgumentError(ArgumentError.value(istek).message);
          }
        } while (true);
        break;

      case 'a':
      case 'A':
        ConsolClear();
        do {
          //Kişi Arama
          print("Aramak istediğiniz Kişiyi yazınız: ");
          late String isim = stdin.readLineSync()!;
          int sirasi = (adSoyad.indexOf(isim));
          if (sirasi >= 0) {
            print("Aranan kişi bulundu.\n" +
                "${sirasi + 1} - ${adSoyad[sirasi]} ");
          } else if (sirasi < 0) {
            print("Aradığınız isim bulunamadı.");
          }
          print("Başka bir arama yapmak ister misiniz? (e/h)");
          String temp = stdin.readLineSync()!;
          if (temp == 'e') {
            break;
          } else {
            continue;
          }
        } while (true);
        break;

      case 't':
      case 'T': //Silinen Kişileri Listeleme
        ConsolClear();
        print("Silinen Kişiler\n----------------------------------\n");
        SilinenKisiler.forEach((kisi) {
          print(kisi);
        });

        break;

      default:
        print("Hatalı giriş yaptınız tekrar giriniz!");
        break;
    }
  } while (durum);
}

//consol temizleme için metod
void ConsolClear() {
  if (Platform.isWindows) {
    Process.runSync("cls", [], runInShell: true);
  }
}
