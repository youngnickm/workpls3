// Automatic FlutterFlow imports
import '/backend/backend.dart';
import '/backend/schema/structs/index.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'index.dart'; // Imports other custom actions
import 'package:flutter/material.dart';
// Begin custom action code
// DO NOT REMOVE OR MODIFY THE CODE ABOVE!

import 'package:flutter_blue_plus/flutter_blue_plus.dart';

Future<List<BTDeviceStruct>> getConnectedDevices() async {
  final connectedDevices = await FlutterBluePlus.connectedDevices;
  List<BTDeviceStruct> devices = [];
  try {
    for (int i = 0; i < connectedDevices.length; i++) {
      final deviceResult = connectedDevices[i];
      final deviceState = await deviceResult.state.first;
      if (deviceState == BluetoothDeviceState.connected) {
        devices.add(BTDeviceStruct(
          name: deviceResult.name,
          id: deviceResult.id.toString(),
          rssi: 0,
        ));
      }
    }
  } catch (e) {
    debugPrint(e.toString());
  }
  return devices;
}
