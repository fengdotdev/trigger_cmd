import 'package:flutter/material.dart';
import 'package:trigger/bl/models/cmd.model/cmd.model.dart';
import 'package:trigger/gui/views/adder.view/adder.components/command.form.dart';

class AdderView extends StatelessWidget {
  const AdderView({super.key});

  @override
  Widget build(BuildContext context) {
    return const SizedBox(width: 500, height: 500, child: CommandForm());
  }
}
