import 'package:flutter/material.dart';
import 'package:trigger/bl/models/cmdset.model/cmdset.model.dart';
import 'package:trigger/gui/components/card/card.component.dart';
import 'package:trigger/gui/components/code.tile/code.tile.component.dart';
import 'package:trigger/gui/components/codebox/codebox.component.dart';
import 'package:trigger/gui/components/custom.tile/custom.tile.component.dart';
import 'package:trigger/gui/controllers/exec.controller.dart';
import 'package:trigger/gui/gui.helpers/icon.lookup.dart';
import 'package:trigger/gui/mockdata/cmds.dart';
import 'package:trigger/gui/primitives/colors.dart';
import 'package:trigger/gui/views/exec.view/exec.components/exec.list.dart';

//
class ExecView extends StatelessWidget {
  final double height;

  final ExecController _controller;

  ExecView(this._controller, {super.key, this.height = 500});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: StreamBuilder<CommandsSetModel>(
        stream: _controller.commandStream,
        builder: (context, snapshot) {
          if (snapshot.connectionState == ConnectionState.waiting) {
            return const CircularProgressIndicator();
          } else if (snapshot.hasError) {
            return Text('Error: ${snapshot.error}');
          } else if (snapshot.hasData) {
            final commandsSet = snapshot.data!;
            return Column(
              children: [
                SizedBox(
                  height: height - 200,
                  child: ExecList(
                    commandsSet: commandsSet,
                    executeCommand: _controller.executeCommand,
                  ),
                ),
                SizedBox(
                  height: height - 200,
                  child: ExecList2(
                    commandsSet: commandsSet,
                    executeCommand: _controller.executeCommand,
                  ),
                ),
              ],
            );
          } else {
            return const Text('No data available');
          }
        },
      ),
    );
  }
}

class ExecList extends StatelessWidget {
  final CommandsSetModel commandsSet;
  final Function(String) executeCommand;

  const ExecList({
    super.key,
    required this.commandsSet,
    required this.executeCommand,
  });

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: commandsSet.commands.length,
      itemBuilder: (context, index) {
        final command = commandsSet.commands.elementAt(index);
        return InteractiveCardComponent(
          gradient: EvaColors.magiGradient,
          hoverGradient: EvaColors.headerGradient,
          onPressed: () => executeCommand(command.id),
          child: CodeTileComponent(
            iconData: Icons.play_arrow,
            name: command.name,
            showBadge: command.sudo,
            onPressed: () => executeCommand(command.id),
            description: command.description,
            code: command.command,
          ),
        );
      },
    );
  }
}
