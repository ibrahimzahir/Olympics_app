class AthletesModel {
  final name;
  final country;
  final sports;
  final medals;
  final image;

  AthletesModel(
    this.name,
    this.country,
    this.sports,
    this.medals,
    this.image,
  );
}

List<AthletesModel> athletes = athleteList
    .map(
      (item) => AthletesModel(
        item['name'],
        item['country'],
        item['sports'],
        item['medals'],
        item['image'],
      ),
    )
    .toList();

final athleteList = const [
  {
    'name': 'Yang Qian',
    'country': 'China',
    'sports': 'Cycling',
    'medals': 'Gold',
    'image': 'assets/images/yang-qian.jpeg',
  },
  {
    'name': 'Emma McKeon',
    'country': 'Australia',
    'sports': 'Swimming',
    'medals': {'Gold', 'Bronze'},
    'image': 'assets/images/Emma-McKeon.jpeg',
  },
  {
    'name': 'Andre De Grasse',
    'country': 'Canada',
    'sports': 'Swimming',
    'medals': 'Gold',
    'image': 'assets/images/Andre-De-Grasse.jpeg',
  },
  {
    'name': 'Andre De Grasse',
    'country': 'Canada',
    'sports': 'Swimming',
    'medals': 'Gold',
    'image': 'assets/images/Andre-De-Grasse.jpeg',
  },
];
