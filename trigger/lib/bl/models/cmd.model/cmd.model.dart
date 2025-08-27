import 'package:trigger/bl/helpers/generators/idgen.dart';

class CommandModelEditable {
  String name;
  String icon;
  String description;
  String command;

  CommandModelEditable({
    this.name = '',
    this.icon = '',
    this.description = '',
    this.command = '',
  });
}

class CommandModel {
  final String id; //uuid  auto-generated
  final String name; // required
  final String icon; // optional
  final String description; // optional
  late bool sudo; // required
  final String command; // required

  CommandModel({
    String? id,
    required this.name,
    this.icon = '',
    this.description = '',
    required this.command,
  }) : id = id ?? generarUUID(), sudo = commandContainsSudo(command);

  factory CommandModel.fromJson(Map<String, dynamic> json) {
    return CommandModel(
      id: json['id'] as String,
      name: json['name'] as String,
      icon: json['icon'] as String? ?? '',
      description: json['description'] as String? ?? '',
      command: json['command'] as String,
    );
  }

  factory CommandModel.fromEditable(CommandModelEditable editable) {
    return CommandModel(
      id: generarUUID(),
      name: editable.name,
      icon: editable.icon,
      description: editable.description,
      command: editable.command,
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'id': id,
      'name': name,
      'icon': icon,
      'description': description,
      'sudo': sudo,
      'command': command,
    };
  }
}

bool commandContainsSudo(String command) {
  return command.contains('sudo') || command.contains('SUDO');
}
