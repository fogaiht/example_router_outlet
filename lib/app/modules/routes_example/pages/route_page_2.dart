import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';

class RoutePage2 extends StatefulWidget {
  final String title;
  const RoutePage2({Key? key, this.title = "Route Page 2"}) : super(key: key);

  @override
  _RoutePage2State createState() => _RoutePage2State();
}

class _RoutePage2State extends State<RoutePage2> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
        backgroundColor: Colors.red,
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          InkWell(
            onTap: () => Modular.to.navigate('./page3'),
            child: Container(
              height: 100,
              width: double.infinity,
              color: Colors.green,
              child: Center(
                child: Text(
                  'Page 2 -> Page 3',
                  style: TextStyle(color: Colors.white, fontSize: 50),
                ),
              ),
            ),
          ),
          InkWell(
            onTap: () => Modular.to.navigate('./page1'),
            child: Container(
              height: 100,
              width: double.infinity,
              color: Colors.purple,
              child: Center(
                child: Text(
                  'Page 2 -> Page 1',
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
