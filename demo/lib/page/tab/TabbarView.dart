import 'package:flutter/material.dart';
import 'package:demo/page/tab/ButtonSample.dart';
import 'package:demo/page/tab/InputSample.dart';
import 'package:demo/page/tab/PickerSample.dart';

class TabbarView extends StatefulWidget {
  List<Widget> widgets = [ButtonSample(), InputSample(), PickerSample()];

  @override
  _ScaffoldRouteState createState() => _ScaffoldRouteState();
}

class _ScaffoldRouteState extends State<TabbarView> {
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
          label: 'action',
        ),
        BottomNavigationBarItem(
          icon: Icon(
            Icons.account_circle,
            color: _index == 2 ? Colors.green : Colors.grey,
          ),
          label: 'mine',
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
