import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Progress extends StatelessWidget {
  const Progress({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(10),
      child: Column(
        children: [
          const LinearProgressIndicator(
            value: .5,
            valueColor: AlwaysStoppedAnimation(Colors.yellow),
          ),
          const SizedBox(
            height: 10,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: const [
              CircularProgressIndicator(),
              SizedBox(
                width: 20,
              ),
              CupertinoActivityIndicator(),
              SizedBox(
                width: 20,
              ),
              RefreshProgressIndicator(),
              SizedBox(
                width: 20,
              ),

            ],
          )
        ],
      ),
    );
  }
}
