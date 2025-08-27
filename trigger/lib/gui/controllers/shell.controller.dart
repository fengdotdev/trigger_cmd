import 'dart:async';

import 'package:trigger/gui/mockdata/mock.cmd.history.dart';

class ShellController {
  final _commandStreamController = StreamController<String>();
  final List<String> _commandHistory = [];

  Stream<String> get commandStream => _commandStreamController.stream;

  List<String> get commandHistory => _commandHistory;

ShellController();

ShellController.withMockHistory() {
  _commandHistory.addAll(mockCommandHistory);
}

  String? get initialOutput => _commandHistory.isNotEmpty ? _commandHistory.join('\n') : null;

  void printResult(String result) {
    _commandHistory.add(result);

    // show history last to first
    _commandStreamController.add(_commandHistory.join('\n'));
  }
}


