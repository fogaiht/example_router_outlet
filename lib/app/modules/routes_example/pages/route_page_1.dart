import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';

class RoutePage1 extends StatefulWidget {
  final String title;
  const RoutePage1({Key? key, this.title = "Route Page 1"}) : super(key: key);

  @override
  _RoutePage1State createState() => _RoutePage1State();
}

class _RoutePage1State extends State<RoutePage1> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
        backgroundColor: Colors.purple,
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          InkWell(
            onTap: () => Modular.to.navigate('./page2'),
            child: Container(
              height: 100,
              width: double.infinity,
              color: Colors.red,
              child: Center(
                child: Text(
                  'Page 1 -> Page 2',
                  style: TextStyle(color: Colors.white, fontSize: 50),
                ),
              ),
            ),
          ),
          InkWell(
            onTap: () => Modular.to.navigate('./page3'),
            child: Container(
              height: 100,
              width: double.infinity,
              color: Colors.green,
              child: Center(
                child: Text(
                  'Page 1 -> Page 3',
                  style: TextStyle(color: Colors.white, fontSize: 50),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
