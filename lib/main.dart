import 'package:flutter/material.dart';
import 'permission.dart';
void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData.dark(),
      debugShowCheckedModeBanner: false,
      home: const HomePage(),
    );
  }
}

class HomePage extends StatefulWidget {
  const HomePage({Key? key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {

  int _selectedIndex = 0;

  // final List<Color> _itemColors = [
  //   Colors.blue, // Color for item 0
  //   Colors.green, // Color for item 1
  //   Colors.red, // Color for item 2
  // ];

  // Color _getItemColor(int index) {
  //   return _selectedIndex == index ? Colors.black : _itemColors[index];
  // }

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("File Type Check"),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          SizedBox(
            height: 24,
            width: 50,
            child: Container(
              color: Colors.pink,
              child: const Text(""),
            ),
          ),
          Padding(
            padding: const EdgeInsets.fromLTRB(160.0, 550.0, 140.0, 0.0),
            child: FloatingActionButton(
              onPressed: () {
                requestStoragePermission(context);
              },
              child: const Icon(Icons.add),
            ),
          ),
        ],
      ),
      bottomNavigationBar: BottomNavigationBar(
        items:  const [
          BottomNavigationBarItem(
              icon: Icon(Icons.home),
              label: "Home",
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.settings),
            label: 'Settings',
          ),
        ],
        currentIndex: _selectedIndex,
        selectedItemColor: Colors.white,
        onTap: _onItemTapped,
        unselectedItemColor: Colors.grey,
        //backgroundColor: Colors.white,
        type: BottomNavigationBarType.fixed,
      ),
    );
    }
  }