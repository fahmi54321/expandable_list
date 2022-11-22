import 'package:expandable_list/basic_tile.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatelessWidget {
  const MyHomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: basicTiles.map(buildTile).toList(),
      ),
    );
  }

  Widget buildTile(BasicTile tile, {double leftPadding = 16}) {
    if (tile.tiles.isEmpty) {
      return ListTile(
        contentPadding: EdgeInsets.only(
          left: leftPadding,
        ),
        title: Text(tile.title),
      );
    } else {
      return ExpansionTile(
        tilePadding: EdgeInsets.only(left: leftPadding),
        trailing: const SizedBox.shrink(),
        leading: const Icon(
          Icons.keyboard_arrow_right_outlined,
        ),
        title: Text(
          tile.title,
        ),
        children: tile.tiles
            .map((tile) => buildTile(tile, leftPadding: 16 + leftPadding))
            .toList(),
      );
    }
  }
}
