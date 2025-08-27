import 'package:flutter/material.dart';
import 'package:trigger/gui/components/card/card.component.dart';
import 'package:trigger/gui/controllers/shell.controller.dart';

class ShellOutputView extends StatelessWidget {
  final ShellController _shellController;

  const ShellOutputView(this._shellController, {super.key});

  @override
  Widget build(BuildContext context) {
    return CardComponent(
      child: StreamBuilder<String>(
        stream: _shellController.commandStream,
        builder: (context, snapshot) {
          if (snapshot.connectionState == ConnectionState.waiting) {
            return TextField(
              style: const TextStyle(
                fontFamily: 'monospace',
                fontSize: 13,
                height: 1.3,
              ),
              readOnly: true,
              controller: TextEditingController(
                text: _shellController.initialOutput,
              ),
              decoration: InputDecoration(border: OutlineInputBorder()),
              maxLines: 6,
            );
          } else if (snapshot.hasError) {
            return Text('Error: ${snapshot.error}');
          } else {
            return Text('Output: ${snapshot.data}');
          }
        },
      ),
    );
  }
}
