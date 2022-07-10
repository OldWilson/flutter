import 'package:flutter/material.dart';
import 'package:demo/page/widget/InputNormal.dart';

class InputTab extends StatefulWidget {
  const InputTab({Key? key}) : super(key: key);

  @override
  State<InputTab> createState() => _InputTabState();
}

class _InputTabState extends State<InputTab> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const InputNormal(),
      ],
    );
  }
}
