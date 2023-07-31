import 'dart:async';
import 'dart:io';

void main() {
  // bool devam = true;
  List<String> operators = ['+', '-', '*', '/'];
  do {
    print("Yapmak istediğiniz işlem nedir?" +
        '\n1. Toplama (+)' +
        "\n2. Çıkarma (-)" +
        "\n3. Çarpma (*)" +
        "\n4.Bölme (/)" +
        "\nExit (x)");
    String choise = stdin.readLineSync()!;
    if (choise == 'x') break;
    if (!operators.contains(choise)) {
      print("Hatalı giriş yaptınız Lütfen tekrar giriş yapınız.");
      continue;
    }
    Calculate(choise);
    Process.run('clear', []);
  } while (true);
  print("Çıkış yapıldı!");
}

void Calculate(String operator) {
  stdout.write("İlk sayıyı giriniz: ");
  double num1 = double.parse(stdin.readLineSync()!);

  stdout.write("2. sayıyı giriniz: ");
  double num2 = double.parse(stdin.readLineSync()!);

  late double result;
  switch (operator) {
    case '+':
      result = num2 + num1;
      break;
    case '-':
      result = num1 - num2;
      break;
    case '*':
      result = num1 * num2;
      break;
    case '/':
      if (num2 != 0)
        result = num1 / num2;
      else
        print("Sayı sıfıra bölünemez!!");
      return null;
    default:
      print("Geçersiz giriş lütfen tekrar deneyiniz!");
  }
  print("Sonuc: $result");
  Future.delayed(Duration(seconds: 2))
      .then((value) => print("\n\n--------------------\n\n"));
}
