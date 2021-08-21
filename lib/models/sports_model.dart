class SportsModel {
  final name;
  final image;

  SportsModel(
    this.name,
    this.image,
  );
}

List<SportsModel> sports = sportsList
    .map(
      (item) => SportsModel(
        item['name'],
        item['image'],
      ),
    )
    .toList();

final sportsList = const [
  {
    'name': 'Gymnastic',
    'image': 'assets/images/rhythmic.jpeg',
  },
  {
    'name': 'Running',
    'image': 'assets/images/felix-craousel.jpeg',
  },
  {
    'name': 'Swimming',
    'image': 'assets/images/tokyo-aquatics.jpeg',
  },
];
