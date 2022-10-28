import 'main.dart';
import 'padre.dart';

class Cd extends Padre {
  final String? min;
  Cd({
    required String? titulo,
    required String? precio,
    required this.min,
  }) : super(titulo, precio);

  @override
  String toString() {
    return '|${darformat(this.titulo.toString(), 22)} |  ${darformat(this.precio.toString(), 8)} | ${darformat(this.min.toString(), 8)} |';
  }
}
