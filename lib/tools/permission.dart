
import 'package:flutter/material.dart';
import 'package:permission_handler/permission_handler.dart';

Future<void> requestStoragePermission(BuildContext context) async {
  var status = await Permission.storage.status;
  debugPrint("status: $status");
  if (status.isGranted) {
    // Permission already granted
    ScaffoldMessenger.of(context).showSnackBar(
      const SnackBar(content: Text('Storage permission already granted')),
    );
  } else {
    var result = await Permission.storage.request();
    if (result.isGranted) {
      ScaffoldMessenger.of(context).showSnackBar(
        const SnackBar(content: Text('Storage permission granted')),
      );
    } else {
      ScaffoldMessenger.of(context).showSnackBar(
        const SnackBar(content: Text('Storage permission denied')),
      );
    }
  }
}
//
// Future<void> requestPermission() async {
//   final permission = Permission.camera;
//
//   if (await permission.isDenied) {
//     final result = await permission.request();
//
//     if (result.isGranted) {
//       // Permission is granted
//     } else if (result.isDenied) {
//       // Permission is denied
//     } else if (result.isPermanentlyDenied) {
//       // Permission is permanently denied
//     }
//   }
// }

