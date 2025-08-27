import 'package:trigger/bl/helpers/generators/idgen.dart';
import 'package:trigger/bl/models/cmd.model/cmd.model.dart';

class CommandsSetModel {
  final String id;
  final String name;
  final Set<CommandModel> commands;

  CommandsSetModel({
    String? id,
    required this.name,
    Set<CommandModel>? commands,
  }) : id = id ?? generarUUID(),
       commands = commands ?? {}; // Initialize with empty set if null

  factory CommandsSetModel.fromJson(Map<String, dynamic> json) {
    return CommandsSetModel(
      id: json['id'] as String,
      name: json['name'] as String,
      commands: (json['commands'] as List<dynamic>)
          .map((cmd) => CommandModel.fromJson(cmd as Map<String, dynamic>))
          .toSet(),
    );
  }

  List<CommandModel> get commandList => commands.toList();

  Map<String, dynamic> toJson() {
    return {
      'id': id,
      'name': name,
      'commands': commands.map((cmd) => cmd.toJson()).toList(),
    };
  }
}
