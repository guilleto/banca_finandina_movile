import 'package:flutter/material.dart';

import '../dot_carrusel/index.dart';

import 'package:flutter/material.dart';

class CarruselBoard extends StatefulWidget {
  final List<bool> isPressedList;
  final Function(int index, List<bool> isPressedList) handleDotTap;

  const CarruselBoard(
      {Key? key, required this.handleDotTap, required this.isPressedList})
      : super(key: key);

  @override
  _CarruselBoardState createState() => _CarruselBoardState();
}

class _CarruselBoardState extends State<CarruselBoard> {
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
          widget.isPressedList.length,
          (index) => DotCarrusel(
            isPressed: widget.isPressedList[index],
            onTap: () {
              setState(() {
                widget.handleDotTap(index, widget.isPressedList);
              });

              print('DotCarrusel${index + 1}');
            },
          ),
        ),
      ),
    );
  }
}
