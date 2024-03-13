class Data {
  String? nombre;
  bool? gustoFlutter;
  int? califFlutter;
  String? comida;
  bool? helado;
  bool? chocoflan;

  Data(
      {required String nom,
      required bool flutter,
      required int calif,
      required String food,
      required bool icecream,
      required bool choco}) {
    nombre = nom;
    gustoFlutter = flutter;
    califFlutter = calif;
    comida = food;
    helado = icecream;
    chocoflan = choco;
  }
}
