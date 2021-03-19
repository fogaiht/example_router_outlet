import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';

class RoutePage3 extends StatefulWidget {
  final String title;
  const RoutePage3({Key? key, this.title = "Route Page 3"}) : super(key: key);

  @override
  _RoutePage3State createState() => _RoutePage3State();
}

class _RoutePage3State extends State<RoutePage3> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
        backgroundColor: Colors.green,
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          InkWell(
            onTap: () => Modular.to.navigate('./page1'),
            child: Container(
              height: 100,
              width: double.infinity,
              color: Colors.purple,
              child: Center(
                child: Text(
                  'Page 3 -> Page 1',
                  style: TextStyle(color: Colors.white, fontSize: 50),
                ),
              ),
            ),
          ),
          InkWell(
            onTap: () => Modular.to.navigate('./page2'),
            child: Container(
              height: 100,
              width: double.infinity,
              color: Colors.red,
              child: Center(
                child: Text(
                  'Page 3 -> Page 2',
                  style: TextStyle(color: Colors.white, fontSize: 50),
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}
