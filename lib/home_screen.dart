import 'package:flutter/material.dart';

class ButtonColorChangeScreen extends StatefulWidget {
  @override
  _ButtonColorChangeScreenState createState() =>
      _ButtonColorChangeScreenState();
}

class _ButtonColorChangeScreenState extends State<ButtonColorChangeScreen> {
  String selectedSize = "";
  int selectedIndex = -1;

  final List<String> sizes = ["S", "M", "L", "XL", "XXL", "XXL"];

  void changeButtonColor(int index) {
    setState(() {
      selectedIndex = index;
    });
  }

  void showSnackbar(String size) {
    ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(
        content: Text("Selected Size: $size"),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Size Selector"),
        centerTitle: true,
        backgroundColor: Colors.green,
      ),
      body: Center(
        child: Expanded(
          child: GridView.builder(
            gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 4,
            ),
            itemBuilder: (BuildContext context, index) {
              return Padding(
                padding: const EdgeInsets.all(8.0),
                child: ElevatedButton(
                  onPressed: () {
                    changeButtonColor(index);
                    showSnackbar(sizes[index]);
                  },
                  style: ElevatedButton.styleFrom(
                    primary:
                        selectedIndex == index ? Colors.green : Colors.grey,
                  ),
                  child: Text(
                    sizes[index],
                    style: TextStyle(
                      fontSize: 20,
                      color: Colors.white,
                    ),
                  ),
                ),
              );
            },
            itemCount: sizes.length,
          ),
        ),
      ),
    );
  }
}
