import 'package:file_type_check/tools/permission.dart';
import 'package:flutter/material.dart';

class MainPage extends StatefulWidget {
  @override
  State<MainPage> createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {

  Color _pressed = Colors.grey;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SizedBox(
              height: 24,
              width: 50,
              child: Container(
                color: Colors.pink,
                child: const Text("Fedchyk Pidar"),
              ),
            ),
            const Spacer(flex: 1,),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Expanded(
                child: FloatingActionButton(
                  onPressed: () {
                    // Call a function to request storage permission
                    requestStoragePermission(context);
                    },
                  child: const Icon(Icons.add),
                ),
              ),
            ),
            Expanded(
              child: Padding(
                padding: const EdgeInsets.fromLTRB(4.0, 20.0, 4.0, 2.0),
                child: Container(
                  color: _pressed,
                  child: GestureDetector(
                    onTap: () {
                      setState(() {
                        _pressed == Colors.yellow
                            ? _pressed = Colors.grey
                            : _pressed = Colors.yellow;
                      });
                    },
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}