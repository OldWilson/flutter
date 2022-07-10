import 'package:flutter/material.dart';

import 'package:demo/page/SelectionScreen.dart';

class SelectionButton extends StatelessWidget {
  const SelectionButton({Key? key}) : super(key: key);

  // @override
  // Widget build(BuildContext context) {
  //   return ElevatedButton(
  //       onPressed: () {
  //         _navigateAndDisplaySelection(context);
  //       },
  //       child: const Text('Pick an option, any option.'),
  //   );
  // }

  @override
  Widget build(BuildContext context) {
    return GridView.count(
      crossAxisCount: 3,
      childAspectRatio: 1.0,
      children: const <Widget>[
        Icon(Icons.ac_unit),
        Icon(Icons.airport_shuttle),
        Icon(Icons.all_inclusive),
        Icon(Icons.beach_access),
        Icon(Icons.cake),
        Icon(Icons.free_breakfast),
      ],);
    // return Scaffold(
    //   appBar: AppBar(),
    //   body: Container(
    //     child: const Text('ホーム', style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold)),
    //   ),
    // );
  }

  void _navigateAndDisplaySelection(BuildContext context) async {
    final result = await Navigator.push(
        context,
        MaterialPageRoute(builder: (context) => const SelectionScreen())
    );

    ScaffoldMessenger.of(context)
      ..removeCurrentSnackBar()
      ..showSnackBar(SnackBar(content: Text('$result')));
  }
}


