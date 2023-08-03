import 'dart:async';

Future<void> main() async {
  print("veri aktarımına başlaıyor...");

  var veri = await veritabani();
  print("veri alınıyor");
  print("Alınan veri: $veri");
}

Future<String> veritabani() async {
  for (var i = 0; i < 10; i++) {
    Future.delayed(Duration(seconds: i), () => print("Alınan veri: ${i * 10}"));
  }

  return Future.delayed(
      Duration(seconds: 10), () => "Veritabanı yüklenme oranı: ");
}
