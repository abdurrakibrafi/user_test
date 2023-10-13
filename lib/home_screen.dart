import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  List<String> items = [
    'Item 1',
    'Item 2',
    'Item 3',
    'Item 4',
    'Item 5',
    'Item 6',
    'Item 7'
  ];
  Set<int> selectedIndices = Set<int>();

  void showSelectedItemsCount() {
    int TotalCount = selectedIndices.length;
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          title: Text('Selected Items'),
          content: Text('You have selected $TotalCount items.'),
          actions: <Widget>[
            TextButton(
              onPressed: () {
                Navigator.of(context).pop();
              },
              child: Text('Thank You'),
            ),
          ],
        );
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Selection Screens'),
      ),
      body: ListView.builder(
        itemCount: items.length,
        itemBuilder: (context, index) {
          return Card(
            child: ListTile(
              title: Text(items[index]),
              tileColor: selectedIndices.contains(index) ? Colors.blue : null,
              onTap: () {
                setState(() {
                  if (selectedIndices.contains(index)) {
                    selectedIndices.remove(index);
                  } else {
                    selectedIndices.add(index);
                  }
                });
              },
            ),
          );
        },
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          showSelectedItemsCount();
        },
        child: Icon(Icons.check),
      ),
    );
  }
}
