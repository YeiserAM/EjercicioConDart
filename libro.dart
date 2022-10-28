import 'main.dart';
import 'padre.dart';

class Libro extends Padre {
  final String? np;
  Libro({
    required String? titulo,
    required String? precio,
    required this.np,
  }) : super(titulo, precio);

  @override
  String toString() {
    return '|${darformat(this.titulo.toString(), 22)} |  ${darformat(this.precio.toString(), 8)} | ${darformat(this.np.toString(), 8)} |';
  }
}
