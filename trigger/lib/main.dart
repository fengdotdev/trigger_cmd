import 'package:flutter/material.dart';
import 'package:trigger/gui/frames/sandbox.frame.dart';

import 'package:trigger/gui/theming/eva/eva.theme.dart';

void main() {
  runApp(const TriggerCommandApp());
}

class TriggerCommandApp extends StatelessWidget {
  const TriggerCommandApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Trigger Command',
      debugShowCheckedModeBanner: false,
      theme: EvangelionTheme.lightTheme,
      darkTheme: EvangelionTheme.darkTheme,
      themeMode: ThemeMode.system,

      home: const SandboxFrame(),
    );
  }
}
