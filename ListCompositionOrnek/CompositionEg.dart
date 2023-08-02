import 'dart:io';

import 'Adress.dart';
import 'Personel.dart';

void main() {
  var personels = <Personel>[];
  for (var i = 1; i < 3; i++) {
    stdout.write("Personel adını giriniz: ");
    String isim = stdin.readLineSync()!;

    stdout.write("personel adres ilini giriniz: ");
    String il = stdin.readLineSync()!;

    stdout.write("Prsonel adres ilçeyi giriniz: ");
    String ilce = stdin.readLineSync()!;

    var adress = Adres(il, ilce);
    var personel = Personel(i, isim, adress);

    personels.add(personel);
  }
  Process.runSync("clear", [], runInShell: true); //Konsol temizleme için.
  Process.run("clear", []);
  for (var per in personels) {
    print("Personel no: ${per.no}");
    print("Personel ad: ${per.isim}");
    print("Personel il: ${per.adres.il}");
    print("Personel ilçe: ${per.adres.ilce}");

    if (personels.last != per) {
      print("--------------------");
    }
  }
}
