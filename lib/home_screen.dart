import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  HomeScreen({Key? key}) : super(key: key);

  List<String> items = ['Shirt', 'T-shirt', 'Suiter', 'Sarree', 'Formal Drees'];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.green,
        centerTitle: true,
        title: Text(
          'My Shopping List',
          style: TextStyle(color: Colors.white, fontSize: 20),
        ),
        actions: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Icon(
              Icons.shopping_cart,
              size: 30,
            ),
          )
        ],
      ),
      body: ListView.builder(
          itemCount: 5,
          itemBuilder: (BuildContext context, int index) {
            return ListTile(
                leading: const Icon(
                  Icons.card_travel,
                  size: 35,
                ),
                title: Padding(
                  padding: const EdgeInsets.all(10),
                  child: Text(
                    items[index],
                    style: TextStyle(fontSize: 20, fontWeight: FontWeight.w500),
                  ),
                ));
          }),
    );
  }
}
