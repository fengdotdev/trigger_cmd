
import 'package:flutter/material.dart';
import 'package:trigger/bl/models/cmd.model/cmd.model.dart';

class CommandForm extends StatefulWidget {
  const CommandForm({super.key});

  @override
  State<CommandForm> createState() => _CommandFormState();
}

class _CommandFormState extends State<CommandForm> {
  CommandModelEditable dataInput = CommandModelEditable();

  @override
  Widget build(BuildContext context) {
    return FormField(
      builder: (state) {
        return Column(
          children: [
            TextFormField(
              decoration: const InputDecoration(labelText: 'Name'),
              onChanged: (value) {
                dataInput.name = value;
              },
            ),
            TextFormField(
              decoration: const InputDecoration(labelText: 'Icon'),
              onChanged: (value) {
                dataInput.icon = value;
              },
            ),
            TextFormField(
              decoration: const InputDecoration(labelText: 'Command'),
              onChanged: (value) {
                dataInput.command = value;
              },
            ),
            TextFormField(
              decoration: const InputDecoration(labelText: 'Description'),
              onChanged: (value) {
                dataInput.description = value;
              },
            ),
          ],
        );
      },
    );
  }
}
