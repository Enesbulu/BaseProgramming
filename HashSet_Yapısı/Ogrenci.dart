class Ogrenci {
  late int no;
  late String ad;
  late String sinif;
  Ogrenci(this.no, this.ad, this.sinif);

  @override //no özelliğine göre kontrol işlemi sağlamasını sağlıyorum.
  int get hashCode => this.no;

  @override
  bool operator ==(Object other) {
    if (no == (other as Ogrenci).no)
      return true;
    else
      return false;
  }
}
