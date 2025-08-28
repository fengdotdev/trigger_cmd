import 'package:flutter/material.dart';
import 'package:trigger/gui/components/code.tile/code.tile.component.dart';
import 'package:trigger/gui/components/code.tile/example.list.code.tile.dart';


class SandboxFrame extends StatelessWidget {
  const SandboxFrame({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Sandbox')),
      body: Center(child: CodeTileComponent(
        iconData: Icons.code,
        name: 'Example Code',
        showBadge: true,
        onPressed: () {},
        description: 'This is an example code tile.',
        code: 'print("Hello, World!");',
      )),
    );
  }
}
