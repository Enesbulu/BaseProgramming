import 'dart:collection';

import 'Kisiler.dart';

void main() {
  var k1 = Kisiler(1111111111, "Ali");
  var k2 = Kisiler(2222222222, "Selim");
  var k3 = Kisiler(3333333333, "Nuran");

  var _kisiler = HashMap<int, Kisiler>();

  _kisiler[k1.tcNo] = k1;
  _kisiler[k2.tcNo] = k2;
  _kisiler[k3.tcNo] = k3;

  var _keys = _kisiler.keys;

  for (var ky in _keys) {
    var kisi = _kisiler[ky];

    if (kisi != null) {
      print("Kisi tcNo: ${kisi.tcNo}");
      print("Kişi Adı: ${kisi.ad}");
    }
    if (_keys.last != ky) print("---------");
  }
}
