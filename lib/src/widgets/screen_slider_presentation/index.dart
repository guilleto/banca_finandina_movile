import 'package:flutter/material.dart';

import '../../screens/bank_5/index.dart';
import '../../screens/initial_1/indesx.dart';
import '../../screens/pay_3/index.dart';
import '../../screens/products_2/index.dart';
import '../../screens/scan_6_7/index.dart';
import '../../screens/send_4/index.dart';
import '../carrusel_board/index.dart';
import '../dot_carrusel/index.dart';
import 'package:flutter/material.dart';

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
    ProductsScreen(),
    PayScreen(),
    SendScreen(),
    BankScreen(),
    ScanScreen(),
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
          AnimatedSwitcher(
            transitionBuilder: (Widget child, Animation<double> animation) =>
                FadeTransition(
              opacity: animation,
              child: child,
            ),

            duration: Duration(milliseconds: 1000), // Duración de la animación
            switchInCurve: Curves.easeIn, // Curva de entrada
            switchOutCurve: Curves.easeOut, // Curva de salida
            layoutBuilder: (currentChild, previousChildren) {
              return Stack(
                children: <Widget>[
                  ...previousChildren,
                  if (currentChild != null) currentChild,
                ],
              );
            },
            child: screenToRender, // Widget a animar
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.end,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              CarruselBoard(
                handleDotTap: handleDotTap,
                isPressedList: isPressedList,
              ),
            ],
          ),
        ],
      ),
    );
  }
}
