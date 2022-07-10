import 'package:flutter/material.dart';

class InputNormal extends StatefulWidget {
  const InputNormal({Key? key}) : super(key: key);

  @override
  State<InputNormal> createState() => _InputNormalState();
}

class _InputNormalState extends State<InputNormal> {
  final GlobalKey _key = GlobalKey<FormState>();

  final TextEditingController _controller = TextEditingController();


  @override
  void dispose() {
    super.dispose();
    _controller.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Form(
      key: _key,
      child: Column(
        children: [
          TextField(
            controller: _controller,
            onChanged: (v) {
              print(v);
            },
          ),
          const SizedBox(
            height: 10,
          ),
          TextField(
            controller: _controller,
            decoration: const InputDecoration(
              prefixIcon: Icon(Icons.add),
              labelText: "lable",
              hintText: "default",
            ),
            obscureText: true,
          ),
          const SizedBox(
            height: 10,
          ),
          ElevatedButton(
              onPressed: () {
                print(_controller.text);
              },
              style: ButtonStyle(
                  backgroundColor:
                      MaterialStateProperty.all(const Color(0xff000000))),
              child: const Text("commit")),
        ],
      ),
    );
  }
}
