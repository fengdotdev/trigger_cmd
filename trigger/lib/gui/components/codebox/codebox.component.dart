import 'package:flutter/material.dart';

class CodeBoxComponent extends StatelessWidget {
  final String code;
  const CodeBoxComponent({super.key, required this.code});

  @override
  Widget build(BuildContext context) {
    return TextField(
      controller: TextEditingController(text: code),
      readOnly: true,
      decoration: InputDecoration(border: OutlineInputBorder()),
    );
  }
}
