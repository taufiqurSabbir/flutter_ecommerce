import 'package:flutter/material.dart';

import '../presentation/ui/screens/splash_screen.dart';


class craftBay extends StatelessWidget {
  const craftBay({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Splash_Screen(),
    );
  }
}
