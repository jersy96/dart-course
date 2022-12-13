import 'dart:io';

// Programe un cajero que tenga las funcionalidades de:
// 1. Consignar dinero
// 2. Retirar dinero
// 3. Ver historial de movimientos (Retiros y consignaciones)

void main() {
  Atm atm = Atm();
  Console con = Console(atm: atm);
  int option = 0;
  while (option <4){ 
  option = con.askMenuOption();
  switch (option) {
    case 1:
      con.deposit();
      break;
    case 2:
      // con.option2();
      break;
    default:
      // con.optionOther();
      break;
  }
  //---}
}
}
class Atm {
  double balance=100;

  void deposit(double amount) {
    balance = balance + amount;
  }
}

class Console {
  Atm atm;
  Console({ required Atm this.atm });

  int askMenuOption() {
    print('Digite la opcion deseada');
    print('1. Consignar dinero');
    print('2. Retirar dinero');
    print('3. Ver historial de movimientos (Retiros y consignaciones)');
    print('4. Salir');
    return readInt();
  }

  void deposit() {
    double amount = readDouble(message: 'Digite el valor a depositar');
    atm.deposit(amount);
    print('Consignando \$amount...');
  }

  int readInt({ String? message }) {
    if (message!=null) print(message);
    return int.parse( stdin.readLineSync().toString() );
  }

  double readDouble({ String? message }) {
    if (message!=null) print(message);
    return double.parse( stdin.readLineSync().toString() );
  }

}