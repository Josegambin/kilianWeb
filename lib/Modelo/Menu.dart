import '../Pages/Values/StringApp.dart';

class Menu {
  final String title, image;

  Menu({this.title = '', this.image = ''});
}

List<Menu> menu = [
  Menu(
    title: ajoTiernoString,
    image: "assets/images/ajoTiernoMenu.jpg",
  ),
  Menu(title: perejilString, image: "assets/images/ramoPerejilMenu.jpg"),
  Menu(title: alcachofaString, image: "assets/images/alcachofaMenu.jpg"),
  Menu(title: apioString, image: "assets/images/apioMenu.jpg"),
  Menu(title: berzaRizadaString, image: "assets/images/colRizadaMenu.jpg"),


];
