




import 'dart:async';

import 'package:trigger/bl/models/cmdset.model/cmdset.model.dart';
import 'package:trigger/gui/mockdata/cmds.dart';

class ExecController {
  final _commandStreamController = StreamController<CommandsSetModel>();
   CommandsSetModel _currentCommands;

  Stream<CommandsSetModel> get commandStream => _commandStreamController.stream;

  ExecController(this._currentCommands) {
    // Initialize with current commands
    _commandStreamController.add(_currentCommands);
  }

  ExecController.empty() : _currentCommands = CommandsSetModel(name: 'Empty') {
    // Initialize with empty commands
    _commandStreamController.add(_currentCommands);
  }

  ExecController.mock() : _currentCommands = mockCommandsSet {
    // Initialize with mock commands
    _commandStreamController.add(_currentCommands);
  }

  void updateCommandListView(CommandsSetModel commands) {
    _commandStreamController.add(commands);
  }


  void showMockCommands() {
    // Show mock commands
    _commandStreamController.add(mockCommandsSet);
  }

  void showCurrentCommands() {
    // Show current commands
    _commandStreamController.add(_currentCommands);
  }

void updateCurrentCommands(CommandsSetModel commands) {
  _currentCommands = commands;
  _commandStreamController.add(_currentCommands);
  
}

  void executeCommand(String id) {
    final command = _currentCommands.commands.firstWhere((cmd) => cmd.id == id, orElse: () => throw Exception('Command not found'));
    // Here you would add the logic to actually execute the command
    print('Executing command: ${command.command}');
  }
}