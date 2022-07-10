import 'package:flutter/material.dart';
import 'package:demo/page/widget/Progress.dart';

class ButtonSample extends StatefulWidget {
  @override
  _ButtonSample createState() => _ButtonSample();
}

class _ButtonSample extends State<ButtonSample> {
  int _counter = 0;

  _incrementCounter() {
    setState(() {
      _counter++;
    });
  }

  clearCounter() {
    setState(() {
      _counter = 0;
    });
  }

  void _showAlert() {
    showDialog(context: context, builder: (BuildContext context) {
      return AlertDialog(
        title: const Text('title'),
        content: const Text('content.....'),
        actions: [
          TextButton(onPressed: () {
            Navigator.pop(context, true);
          }, child: const Text('ok')),
          TextButton(onPressed: () {
            Navigator.of(context).pop(false);
          }, child: const Text('cancel')),
        ],
      );
    });
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(
              '$_counter',
              style: Theme.of(context).textTheme.headline2,
            ),
            const SizedBox(
              width: 30,
            ),
            ElevatedButton(
                onPressed: _incrementCounter, child: const Text('add')),
            const SizedBox(
              width: 30,
            ),
            ElevatedButton(onPressed: clearCounter, child: const Text('clear')),
          ],
        ),
        const Divider(
          height: 1.0,
          thickness: 3,
          color: Colors.red,
        ),
        const Text('ElevatedButton'),
        const SizedBox(
          height: 10,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(
                onPressed: _showAlert, child: const Text('normal')),
            const SizedBox(
              width: 20,
            ),
            ElevatedButton(
              onPressed: () => print('normal color'),
              style: ButtonStyle(
                  backgroundColor:
                      MaterialStateProperty.all(const Color(0x00000001))),
              child: const Text(
                'normal color',
                style: TextStyle(color: Colors.black87),
              ),
            ),
            const SizedBox(
               width: 20,
            ),
            ElevatedButton(
                onPressed: () => print('normal shade'),
                style: ButtonStyle(
                    backgroundColor:
                        MaterialStateProperty.all(const Color(0x20000001)),
                    shadowColor:
                        MaterialStateProperty.all(const Color(0x20000002))),
                child: const Text('normal shade')),
          ],
        ),
        const SizedBox(
          height: 10,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(
                onPressed: () => print('side'),
                style: ButtonStyle(
                  side: MaterialStateProperty.all(
                      const BorderSide(width: 5, color: Color(0xff000000))),
                ),
                child: const Text('side')),
            const SizedBox(
              width: 30,
            ),
            ElevatedButton(
              onPressed: () => print('shape one'),
              style: ButtonStyle(
                side: MaterialStateProperty.all(
                    const BorderSide(width: 1, color: Color(0xff000000))),
                shape: MaterialStateProperty.all(BeveledRectangleBorder(
                    borderRadius: BorderRadius.circular(8))),
              ),
              child: const Text(
                'shape1',
              ),
            ),
            const SizedBox(
              width: 30,
            ),
            ElevatedButton(
              onPressed: () => print('shape two'),
              style: ButtonStyle(
                side: MaterialStateProperty.all(
                    const BorderSide(width: 1, color: Color(0xff000000))),
                shape: MaterialStateProperty.all(const CircleBorder(
                    side: BorderSide(
                  color: Colors.green,
                  style: BorderStyle.none,
                ))),
              ),
              child: const Text(
                'shape2',
              ),
            ),
            const SizedBox(
              width: 30,
            ),
            ElevatedButton(
              onPressed: () => print('shape three'),
              style: ButtonStyle(
                side: MaterialStateProperty.all(
                    const BorderSide(width: 1, color: Color(0xff000000))),
                shape: MaterialStateProperty.all(const StadiumBorder(
                    side: BorderSide(
                  style: BorderStyle.solid,
                  color: Color(0xff000000),
                ))),
              ),
              child: const Text(
                'shape3',
              ),
            ),
          ],
        ),
        const Divider(
          height: 20.0,
          color: Colors.red,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(
              onPressed: () => print('icon'),
              child: Row(
                children: const <Widget>[
                  Icon(Icons.settings),
                  SizedBox(
                    width: 5,
                  ),
                  Text('Settings'),
                ],
              ),
            ),
            const SizedBox(
              width: 30,
            ),
            ElevatedButton(
              onPressed: () => print('icon'),
              style: ElevatedButton.styleFrom(
                elevation: 10,
                minimumSize: const Size(100, 80),
              ),
              child: Row(
                children: const <Widget>[
                  Icon(Icons.settings),
                  SizedBox(
                    width: 5,
                  ),
                  Text('Settings'),
                ],
              ),
            ),
          ],
        ),
        const Divider(
          height: 20.0,
          thickness: 3,
          color: Colors.red,
        ),
        const Text('MaterialButton'),
        MaterialButton(
          onPressed: () => print('MaterialButton'),
          child: const Text('MaterialButton'),
        ),
        const Divider(
          height: 20.0,
          thickness: 3,
          color: Colors.red,
        ),
        const Text('IconButton'),
        IconButton(
          onPressed: () => print('IconButton'),
          tooltip: 'click IconButton',
          icon: const Icon(Icons.wifi),
        ),
        const Progress(),
      ],
    );
  }
}
