// ignore_for_file: public_member_api_docs, sort_constructors_first
class BasicTile {
  final String title;
  final List<BasicTile> tiles;
  BasicTile({
    required this.title,
    this.tiles = const [],
  });
}

final basicTiles = <BasicTile>[
  BasicTile(
    title: 'Fruits',
    tiles: [
      BasicTile(title: 'Apple'),
      BasicTile(title: 'Orange'),
      BasicTile(title: 'Banana'),
      BasicTile(title: 'Watermelon'),
    ],
  ),
  BasicTile(
    title: 'Contient',
    tiles: [
      BasicTile(title: 'Asia', tiles: [
        BasicTile(
          title: 'Afghanistan',
        ),
        BasicTile(
          title: 'Iran',
        ),
      ]),
      BasicTile(title: 'Orange'),
      BasicTile(title: 'Banana'),
      BasicTile(title: 'Watermelon'),
    ],
  ),
];
