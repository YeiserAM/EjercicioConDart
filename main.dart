import 'dart:io';

import 'Cd.dart';
import 'libro.dart';
import 'padre.dart';

void main() {
  var books = [];
  var CD = [];

  String? titulogeneral = "";
  String? preciogeneral = "";
  String? npz = "";
  int m = 0;
  int l = 0;
  int c = 0;

  while (m == 0) {
    print('========================');
    print("   MENU PRINCIPAL     ");
    print('========================');
    print("                      ");
    print("   [1]   LIBROS       ");
    print("   [2]   CDs         ");
    print("   [3]   SALIR        ");
    print('========================');
    print("");
    print("  Digite la opción: ");
    String? a = stdin.readLineSync();

    switch (a) {
      case "1":
        {
          l = 0;
          while (l == 0) {
            print('========================');
            print("      MENU LIBRO      ");
            print('========================');
            print("                      ");
            print("   [1]  REGISTRAR     ");
            print("   [2]  LISTAR        ");
            print("   [3]  SALIR         ");
            print('========================');
            print("");
            print("  Digite la opción: ");
            String? b = stdin.readLineSync();

            switch (b) {
              case "1":
                {
                  print('========================');
                  print("   REGISTRAR LIBRO    ");
                  print('========================');
                  print(" TITULO :");
                  titulogeneral = stdin.readLineSync();
                  print(" PRECIO :");
                  preciogeneral = stdin.readLineSync();
                  print(" NUMEROS DE PAGINA :");
                  npz = stdin.readLineSync();
                  books.add(Libro(
                      titulo: titulogeneral, precio: preciogeneral, np: npz));
                  print("");
                  print(" LIBRO RESGISTRADO ...");
                }
                break;
              case "2":
                {
                  listarBook(books);
                }
                break;
              case "3":
                {
                  l = 1;
                }
                break;

              default:
                {
                  print("OPCION ERRONEA");
                }
                break;
            }
          }
        }
        break;
      case "2":
        {
          c = 0;
          while (c == 0) {
            print('========================');
            print("      MENU  CDs      ");
            print('========================');
            print("                      ");
            print("   [1]  REGISTRAR     ");
            print("   [2]  LISTAR        ");
            print("   [3]  SALIR         ");
            print('========================');
            print("");
            print("  Digite la opción: ");
            String? v = stdin.readLineSync();

            switch (v) {
              case "1":
                {
                  print('========================');
                  print("   REGISTRAR CD's     ");
                  print('========================');
                  print(" TITULO :");
                  titulogeneral = stdin.readLineSync();
                  print(" PRECIO :");
                  preciogeneral = stdin.readLineSync();
                  print(" MINUTOS :");
                  npz = stdin.readLineSync();
                  CD.add(Cd(
                      titulo: titulogeneral, precio: preciogeneral, min: npz));
                  print("");
                  print(" LIBRO RESGISTRADO ...");
                }
                break;
              case "2":
                {
                  listarCds(CD);
                }
                break;
              case "3":
                {
                  c = 1;
                }
                break;

              default:
                {
                  print("OPCION ERRONEA");
                }
                break;
            }
          }
        }
        break;
      case "3":
        {
          print("");
          print("MUCHAS GRACIAS POR SU VISITA");
          m = 1;
        }
        break;

      default:
        {
          print("OPCION ERRONEA");
        }
        break;
    }
  }
}

void listarBook(var books) {
  print("");
  print("------------------------------------------------");
  print("               LISTA DE LIBROS                ");
  print("-----------------------------------------------");

  print("|    TITULO             |  PRECIO   | PAGINAS  |");
  print("-----------------------------------------------");

  for (var n in books) {
    print(n);
    print("________________________________________________");
  }
  print("");
}

void listarCds(var books) {
  print("");
  print("-----------------------------------------------");
  print("|                LISTA DE CD's                 |");
  print("-----------------------------------------------");

  print("|    TITULO             |  PRECIO   | MINUTOS  |");
  print("-----------------------------------------------");

  for (var n in books) {
    print(n);
    print("-----------------------------------------------");
  }
  print("");
}

darformat(String text, int cant) {
  String textfinal = "";
  int len = text.length;
  if (len >= cant) {
    textfinal = text.substring(0, cant - 3);
    textfinal = textfinal + "...";
  } else {
    textfinal = text;
    for (var i = len; i < cant; i++) {
      textfinal = textfinal + " ";
    }
  }
  return textfinal;
}
