class AthletesModel {
  final name;
  final country;
  final sports;
  final medals;

  AthletesModel(
    this.name,
    this.country,
    this.sports,
    this.medals,
  );
}

List<AthletesModel> athletes = athleteList
    .map(
      (item) => AthletesModel(
        item['name'],
        item['country'],
        item['sports'],
        item['medals'],
      ),
    )
    .toList();

final athleteList = const [
  {
    'name': 'Yang Qian',
    'country': 'China',
    'sports': 'Cycling',
    'medals': 'Gold'
  },
];
