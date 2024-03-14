import '../Pages/Values/StringApp.dart';

class Menu {
  final String title, image;

  Menu({this.title = '', this.image = ''});
}

List<Menu> menu = [
  Menu(
    title: coffeeStr,
    image: "assets/images/ajoTiernoMenu.jpg",
  ),
  Menu(title: cakeStr, image: "assets/images/ramoPerejilMenu.jpg"),
  Menu(title: coffeeStr, image: "assets/images/alcachofaMenu.jpg"),
  Menu(title: coffeeStr, image: "assets/images/apioMenu.jpg"),
  Menu(title: coffeeStr, image: "assets/images/colRizadaMenu.jpg"),


];
