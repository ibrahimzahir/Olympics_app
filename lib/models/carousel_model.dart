class CarouselModel {
  final image;

  CarouselModel(this.image);
}

List<CarouselModel> carouseldta =
    carouselsCard.map((item) => CarouselModel(item['image'])).toList();

var carouselsCard = [
  {'image': 'assets/images/DaniAlvesjpg.jpeg'},
  {'image': 'assets/images/800.jpeg'},
  {'image': 'assets/images/canada.jpeg'},
  {'image': 'assets/images/football.jpeg'},
  {'image': 'assets/images/gymnatic.jpeg'},
  {'image': 'assets/images/longjump.jpeg'},
  {'image': 'assets/images/rhythmic.jpeg'},
  {'image': 'assets/images/running1.jpeg'},
  {'image': 'assets/images/shooting.jpeg'},
  {'image': 'assets/images/trackfeild.webp'},
  {'image': 'assets/images/usaaustralia.jpeg'},
  {'image': 'assets/images/volly.jpeg'},
  {'image': 'assets/images/womenfootball.webp'},
  {'image': 'assets/images/yang.png'},
  {'image': 'assets/images/masse.jpeg'},
  {'image': 'assets/images/felix-craousel.jpeg'},
  {'image': 'assets/images/biles.jpeg'},
];
