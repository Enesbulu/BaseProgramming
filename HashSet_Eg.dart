import 'dart:collection';

void main() {
  var sayilar = HashSet<int>();

  var isimler = HashSet.from(["Ali", "Ayşe"]);
  var meyveler = HashSet<String>();
  meyveler.add("Çilek");
  meyveler.add("Muz");
  meyveler.add("armut");
  print(meyveler);

  // meyveler.add("armut"); //HashSet özelliği gereği aynı değeri eklemez.
  meyveler.add("armutx"); //farklı bir değer olduğu için ekler.
  print(meyveler);

//hangi indiste hangi eleman olduğu belli olmamakla birlikte verilen indisteki veriyi döndürür.
  String gelenSonuc = meyveler.elementAt(0);
  print(gelenSonuc);

  print(meyveler
      .isEmpty); //koleksiyonun boş olma durumunu sorgular. boş ise true döndürür.
  print(meyveler
      .isNotEmpty); //benzer şekilde koleksiyonun boş olmama durumunu sorgular. Boş DEĞİLSE true döner.

  print(meyveler.length); //koleksiyonun boyutunu verir.

  print(meyveler.contains(
      "Muz")); //koleksiyonda verilen değerin varlığını sorgular. varsa true döndürür.

  for (var meyve in meyveler) {
    //koleksiyondaki bütün elemanları tek tek yazdırır.
    print("Sonuç: $meyve");
  }

  for (var i = 0; i < meyveler.length; i++) {
    print("$i. indisteki veri :${meyveler.elementAt(i)}");
  }

  //verilen değeri siler.
  meyveler.remove("armut");
  print(meyveler);

  meyveler.clear(); //koleksiyonu temizler.
  print(meyveler);
}
