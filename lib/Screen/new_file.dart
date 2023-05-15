import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';

class NewFile extends StatefulWidget {
  const NewFile({super.key});

  @override
  State<NewFile> createState() => _NewFileState();
}

class _NewFileState extends State<NewFile> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("UE Registration Form")),
      body: Container(
        child: Column(),
      ),
    );
  }
}
