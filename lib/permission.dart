
import 'package:flutter/material.dart';
import 'package:permission_handler/permission_handler.dart';

Future<void> requestStoragePermission(BuildContext context) async {
  var status = await Permission.microphone.status;
  print("status: $status");
  if (status.isGranted) {
    // Permission already granted
    ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(content: Text('Storage permission already granted')),
    );
  } else {
    var result = await Permission.storage.request();
    if (result.isGranted) {
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(content: Text('Storage permission granted')),
      );
    } else {
      // Permission denied
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(content: Text('Storage permission denied')),
      );
    }
  }
}

