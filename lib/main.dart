import 'package:flutter/material.dart';

import 'package:art/src/blocs/provider.dart';
import 'package:art/src/routes/routes.dart';
import 'package:flutter/services.dart';
 
void main() => runApp(MyApp());
 
class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    SystemChrome.setPreferredOrientations([
      DeviceOrientation.portraitUp,
      DeviceOrientation.portraitDown,
    ]); 
    return Provider(
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        initialRoute: 'login',
        routes: getApplicationRoutes(),
      ),
    );
  }

}


