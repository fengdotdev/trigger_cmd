import 'package:flutter/material.dart';
import 'package:trigger/gui/components/code.tile/code.tile.component.dart';
import 'package:trigger/gui/mockdata/cmds.dart';

class ExampleListCodeTile extends StatelessWidget {
  const ExampleListCodeTile({super.key});

  @override
  Widget build(BuildContext context) {
    final listdata = mockCommandsSet.commandList;

    return ListView.builder(
      itemCount: listdata.length,
      itemBuilder: (context, index) {
        final command = listdata[index];
        return CodeTileComponent(
          iconData: Icons.play_arrow,
          name: command.name,
          showBadge: command.sudo,
          onPressed: () => print('Execute ${command.name}'),
          description: command.description,
          code: command.command,
        );
      },
    );
  }
}
