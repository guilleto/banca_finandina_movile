import 'package:banca_finandina_movile/src/widgets/screen_slider_presentation/index.dart';
import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
          useMaterial3: true,
          colorSchemeSeed: Colors.white,
          fontFamily: "Roboto"),
      title: 'FinandinaApp',
      home: const ScreenSliderPresentation(),
    );
  }
}
