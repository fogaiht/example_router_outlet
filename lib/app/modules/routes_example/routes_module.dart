import 'package:flutter_modular/flutter_modular.dart';

import 'pages/route_page_1.dart';
import 'pages/route_page_2.dart';
import 'pages/route_page_3.dart';
import 'routes_page.dart';

class RoutesModule extends Module {
  @override
  final List<Bind> binds = [];

  @override
  final List<ModularRoute> routes = [
    ChildRoute(
      '/',
      child: (_, __) => RoutesIntroPage(),
      children: [
        ChildRoute('/page1', child: (_, __) => RoutePage1()),
        ChildRoute('/page2', child: (_, __) => RoutePage2()),
        ChildRoute('/page3', child: (_, __) => RoutePage3()),
      ],
    )
  ];
}
