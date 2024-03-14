class Carousel {
  int index;
  String title;
  String image;
  bool isSelected;

  Carousel(
      {required this.index,
      this.title = '',
      this.image = '',
      this.isSelected = true}) {
    // TODO: implement Carousel
  }
}

//Lista de imagenes del carrousel
List<Carousel> carousel = [
  Carousel(
      index: 0,
      title: 'Perejil',
      image: 'assets/images/perejilCarrousel1.jpg',
      isSelected: true),
  Carousel(
      index: 0,
      title: 'Perejil',
      image: 'assets/images/perejilCarrousel2.jpg',
      isSelected: true),
  Carousel(
      index: 0,
      title: 'Perejil',
      image: 'assets/images/perejilCarrousel3.jpg',
      isSelected: true),

];
