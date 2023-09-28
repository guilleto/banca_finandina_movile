import 'package:flutter/material.dart';

import '../../screens/initial_1/indesx.dart';
import '../carrusel_board/index.dart';
import '../dot_carrusel/index.dart';

class ScreenSliderPresentation extends StatefulWidget {
  const ScreenSliderPresentation({
    super.key,
  });

  @override
  State<ScreenSliderPresentation> createState() =>
      _ScreenSliderPresentationState();
}

class _ScreenSliderPresentationState extends State<ScreenSliderPresentation> {
  late List<bool> isPressedList;
  final List<Widget> screenToRenderList = [
    InitialScreen(),
  ];

  late Widget screenToRender;
  _ScreenSliderPresentationState() {
    isPressedList =
        List.generate(screenToRenderList.length, (index) => index == 0);
  }

  @override
  void initState() {
    super.initState();
    // Inicializa la lista con el primer elemento como true y los demás como false
    isPressedList =
        List.generate(screenToRenderList.length, (index) => index == 0);
    screenToRender = screenToRenderList[0];
  }

  void handleDotTap(int index, List<bool> isPressedList) {
    print("object");
    setState(() {
      screenToRender = screenToRenderList[index];
      for (int i = 0; i < isPressedList.length; i++) {
        isPressedList[i] = (i == index);
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: <Widget>[
          screenToRender,
          Center(
            child: CarruselBoard(
              handleDotTap: handleDotTap,
              isPressedList: isPressedList,
            ),
          ),
        ],
      ),
    );
  }
}
