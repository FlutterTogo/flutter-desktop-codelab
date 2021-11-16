import 'package:flutter/material.dart';
import 'package:window_manager/window_manager.dart';

import 'src/app.dart';
import 'src/constants.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  // Must add this line.
  await windowManager.ensureInitialized();

  // Use it only after calling `hiddenWindowAtLaunch`
  windowManager.waitUntilReadyToShow().then((_) async {
    // Set to frameless window
    await windowManager.setMinimumSize(const Size(1152, 736));
    await windowManager.setPosition(Offset.zero);
    await windowManager.setTitle(appName);
    windowManager.show();
  });

  runApp(const YoProApp());
}
