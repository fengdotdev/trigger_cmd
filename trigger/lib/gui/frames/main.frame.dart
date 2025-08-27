import 'package:flutter/material.dart';
import 'package:trigger/gui/components/appbar/appbar.component.dart';
import 'package:trigger/gui/components/dialog/dialog.component.dart';
import 'package:trigger/gui/controllers/exec.controller.dart';
import 'package:trigger/gui/controllers/shell.controller.dart';
import 'package:trigger/gui/views/adder.view/adder.view.dart';
import 'package:trigger/gui/views/config.view/config.view.dart';
import 'package:trigger/gui/views/exec.view/exec.view.dart';
import 'package:trigger/gui/views/shell.output.view/shell.output.view.dart';

class MainFrame extends StatelessWidget {
  const MainFrame({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBarComponent(title: ""),
      body: Center(
        child: Column(
          children: [
            ExecView(ExecController.mock()),
            Spacer(flex: 2),
            ShellOutputView(ShellController.withMockHistory()),
            SizedBox(height: 100),
          ],
        ),
      ),

      floatingActionButton: FloatingActionButton(
        onPressed: () {
          showDialog(
            context: context,
            builder: (context) => DialogComponent(child: AdderView()),
          );
        },
        child: Icon(Icons.add),
      ),
    );
  }
}
