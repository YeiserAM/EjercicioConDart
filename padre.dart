class Padre {
  final String? titulo;
  final String? precio;

  Padre(this.titulo, this.precio);

  @override
  String toString() {
    return 'PAPA: titulo: ${this.titulo}, precio: ${this.precio}';
  }
}
