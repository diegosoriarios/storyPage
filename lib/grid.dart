import 'package:flutter/material.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';

List<StaggeredTile> _staggeredTiles = const <StaggeredTile>[
  const StaggeredTile.count(2, 2),
  const StaggeredTile.count(2, 1),
  const StaggeredTile.count(1, 2),
  const StaggeredTile.count(1, 1),
  const StaggeredTile.count(2, 2),
  const StaggeredTile.count(1, 2),
  const StaggeredTile.count(1, 1),
  const StaggeredTile.count(3, 1),
  const StaggeredTile.count(1, 1),
  const StaggeredTile.count(4, 1),
];

List<Widget> _tiles = const <Widget>[
  const _Example01Tile('https://picsum.photos/id/278/200/300'),
  const _Example01Tile('https://picsum.photos/id/278/200/300'),
  const _Example01Tile('https://picsum.photos/id/278/200/300'),
  const _Example01Tile('https://picsum.photos/id/278/200/300'),
  const _Example01Tile('https://picsum.photos/id/278/200/300'),
  const _Example01Tile('https://picsum.photos/id/278/200/300'),
  const _Example01Tile('https://picsum.photos/id/278/200/300'),
  const _Example01Tile('https://picsum.photos/id/278/200/300'),
  const _Example01Tile('https://picsum.photos/id/278/200/300'),
  const _Example01Tile('https://picsum.photos/id/278/200/300'),
];

class Grid extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
        appBar: new AppBar(
          title: new Text('example 01'),
        ),
        body: new Padding(
            padding: const EdgeInsets.only(top: 12.0),
            child: new StaggeredGridView.count(
              crossAxisCount: 4,
              staggeredTiles: _staggeredTiles,
              children: _tiles,
              mainAxisSpacing: 4.0,
              crossAxisSpacing: 4.0,
              padding: const EdgeInsets.all(4.0),
            )));
  }
}

class _Example01Tile extends StatelessWidget {
  const _Example01Tile(imageUrl);

  @override
  Widget build(BuildContext context) {
    return new Card(
      child: Image.network(imageUrl),
    );
  }
}