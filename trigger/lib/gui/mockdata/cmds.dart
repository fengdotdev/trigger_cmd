






import 'package:trigger/bl/models/cmd.model/cmd.model.dart';
import 'package:trigger/bl/models/cmdset.model/cmdset.model.dart';

final CommandsSetModel mockCommandsSet = CommandsSetModel(
  id: '1',
  name: 'Mock Commands',
  commands: {
    CommandModel(
      id: '1',
      name: 'echo baz',
      icon: 'person',
      description: 'This is a mock command',
      command: 'echo "baz"',
    ),
    CommandModel(
      id: '2',
      name: 'sudo apt-get update',
      icon: 'settings',
      description: 'This is another mock command',
      command: 'sudo apt-get update',
    ),
    CommandModel(
      id: '3',
      name: 'echo bar',
      icon: 'person',
      description: 'This is yet another mock command',
      command: 'echo "bar"',
    ),
  },
);


