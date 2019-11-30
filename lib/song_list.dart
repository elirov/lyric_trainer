import 'package:flutter/material.dart';

class SongList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final numItems = 20;

    Widget _buildRow(int idx) {
      return ListTile(
        leading: CircleAvatar(child: Text('$idx')),
        title: Text('Item $idx'),
        trailing: Icon(Icons.dashboard),
      );
    }

    return ListView.builder(
      itemCount: numItems*2,
      padding: const EdgeInsets.all(16.0),
      itemBuilder: (BuildContext context, int i) {
        if (i.isOdd) return Divider();
        final index = i ~/ 2 + 1;
        return _buildRow(index);
      }
    );
  }
}
