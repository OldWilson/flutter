import 'package:flutter/material.dart';
import 'package:flutter_dev/page/tab/ButtonSample.dart';
import 'package:flutter_dev/page/tab/InputSample.dart';
import 'package:flutter_dev/page/tab/PickerSample.dart';
import 'package:flutter_dev/page/tab/InputTab.dart';
import 'package:flutter_dev/page/Page_Action.dart';

class Home extends StatefulWidget {
  List<Widget> widgets = [ButtonSample(), ActionState(), InputSample(), InputTab()];

  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  int _index = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Hello Flutter'),
        backgroundColor: Colors.lightBlue,
      ),
      body: widget.widgets[_index],
      bottomNavigationBar: _bottomNavigationBar(),
      drawer: Drawer(
        child: ListView(
          children: const <Widget>[
            DrawerHeader(
                decoration: BoxDecoration(color: Colors.blueGrey),
                child: Text(
                  'Hello Flutter',
                  style: TextStyle(color: Colors.white, fontSize: 24),
                )),
            ListTile(
              title: Text('hello'),
            ),
            ListTile(
              title: Text('world'),
            )
          ],
        ),
      ),
    );
  }

  BottomNavigationBar _bottomNavigationBar() {
    return BottomNavigationBar(
      items: [
        BottomNavigationBarItem(
          icon: Icon(
            Icons.home,
            color: _index == 0 ? Colors.green : Colors.grey,
          ),
          label: 'home',
        ),
        BottomNavigationBarItem(
          icon: Icon(
            Icons.favorite,
            color: _index == 1 ? Colors.green : Colors.grey,
          ),
          label: 'action1',
        ),
        BottomNavigationBarItem(
          icon: Icon(
            Icons.cached,
            color: _index == 2 ? Colors.green : Colors.grey,
          ),
          label: 'action2',
        ),
        BottomNavigationBarItem(
          icon: Icon(
            Icons.account_circle,
            color: _index == 2 ? Colors.green : Colors.grey,
          ),
          label: 'action3',
        ),
      ],
      currentIndex: _index,
      onTap: (flag) {
        setState(() {
          _index = flag;
        });
      },
    );
  }
}
