import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';

class RoutesIntroPage extends StatefulWidget {
  final String title;
  const RoutesIntroPage({Key? key, this.title = "RoutesIntro"})
      : super(key: key);

  @override
  _RoutesIntroPageState createState() => _RoutesIntroPageState();
}

class _RoutesIntroPageState extends State<RoutesIntroPage> {
  @override
  void initState() {
    Modular.to.addListener(() {
      setState(() {});
    });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('RoutesIntro Page')),
      body: RouterOutlet(),
    );
  }
}
