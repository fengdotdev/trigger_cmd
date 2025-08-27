import 'package:flutter/material.dart';
import 'package:trigger/gui/components/appbar/appbar.component.dart';
import 'package:trigger/gui/primitives/colors.dart';
import 'package:trigger/gui/theming/eva/eva.dark.dart';

class DemoGuiView extends StatelessWidget {
  const DemoGuiView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBarComponent(title: "demo gui eva"),
      body: Center(child: Text('This is a demo GUI view')),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          // Action for the floating button
        },
        child: Icon(Icons.add),
      ),
    );
  }
}
