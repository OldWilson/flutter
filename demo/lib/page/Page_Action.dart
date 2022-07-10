import 'package:flutter/material.dart';

class ActionState extends StatefulWidget {
  const ActionState({Key? key}) : super(key: key);

  @override
  State<ActionState> createState() => _ActionStateState();
}

class _ActionStateState extends State<ActionState> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          children: [
            const Icon(Icons.add),
            const SizedBox(
              width: 20,
            ),
            IconButton(onPressed: () {}, icon: const Icon(Icons.home)),
          ],
        ),
        const SizedBox(
          height: 10,
        ),
        SizedBox(
          width: double.infinity,
          child: Image.network(
            "https://tse2-mm.cn.bing.net/th/id/OIP-C.9Lyy1G1N0Fy7_YuKtKT3nAHaEo?pid=ImgDet&rs=1",
            fit: BoxFit.fitWidth,
          ),
        ),
        SizedBox(
          // height: 300,
          child: Image.asset(
            "images/shaokao.jpg",
            height: 300,
            fit: BoxFit.fitWidth,
          ),
        ),
      ],
    );
  }
}
