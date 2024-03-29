import 'package:file_type_check/permission.dart';
import 'package:flutter/material.dart';

class MainPage extends StatelessWidget {
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
            Padding(
              padding: const EdgeInsets.fromLTRB(160.0, 550.0, 140.0, 0.0),
              child: FloatingActionButton(
                onPressed: () {
                  // Call a function to request storage permission
                  requestStoragePermission(context);
                },
                child: const Icon(Icons.add),
              ),
            ),
          ],
        ),
      ),
    );
  }
}