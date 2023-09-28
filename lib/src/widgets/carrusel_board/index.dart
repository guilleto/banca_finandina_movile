import 'package:flutter/material.dart';

import '../dot_carrusel/index.dart';

import 'package:flutter/material.dart';

class CarruselBoard extends StatefulWidget {
  const CarruselBoard({Key? key}) : super(key: key);

  @override
  _CarruselBoardState createState() => _CarruselBoardState();
}

class _CarruselBoardState extends State<CarruselBoard> {
  late List<bool> isPressedList;

  _CarruselBoardState() {
    isPressedList = List.generate(7, (index) => index == 0);
  }

  @override
  void initState() {
    super.initState();
    // Inicializa la lista con el primer elemento como true y los demás como false
    isPressedList = List.generate(7, (index) => index == 0);
  }

  void handleDotTap(int index) {
    setState(() {
      for (int i = 0; i < isPressedList.length; i++) {
        isPressedList[i] = (i == index);
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsetsDirectional.symmetric(horizontal: 16),
      height: 64,
      decoration: BoxDecoration(
        color: Colors.white10,
        borderRadius: BorderRadius.horizontal(
          left: Radius.circular(32),
          right: Radius.circular(32),
        ),
      ),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: List.generate(
          isPressedList.length,
          (index) => DotCarrusel(
            isPressed: isPressedList[index],
            onTap: () {
              handleDotTap(index);
              print('DotCarrusel${index + 1}');
            },
          ),
        ),
      ),
    );
  }
}
