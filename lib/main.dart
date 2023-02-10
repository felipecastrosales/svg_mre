import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

void main() {
  runApp(const SVGApp());
}

class SVGApp extends StatelessWidget {
  const SVGApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter SVG',
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Flutter SVG - MRE'),
        ),
        body: SvgPicture.asset(
          'assets/flutter.svg',
        ),
      ),
    );
  }
}
