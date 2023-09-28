import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

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
    bool lastDot =
        widget.isPressedList.indexOf(true) == (widget.isPressedList.length - 1);

    return AnimatedContainer(
      duration: const Duration(milliseconds: 1000),
      curve: Curves.ease,
      margin: const EdgeInsetsDirectional.all(16),
      height: 64,
      decoration: BoxDecoration(
        color: lastDot ? Colors.white : Colors.white10,
        borderRadius: const BorderRadius.horizontal(
          left: Radius.circular(32),
          right: Radius.circular(32),
        ),
      ),
      child: lastDot
          ? Center(
              child: GestureDetector(
                  onTap: () {
                    setState(() {
                      widget.handleDotTap(0, widget.isPressedList);
                    });
                  },
                  child: Text(
                    "Libera tu banca",
                    style: TextStyle(
                        fontFamily: 'Roboto-Medium',
                        color: Color(int.parse('0xFF7C24DB')),
                        fontSize: 16),
                  )))
          : Container(
              margin: const EdgeInsetsDirectional.only(end: 9, start: 9),
              child: Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Container(
                      margin: const EdgeInsetsDirectional.only(
                        start: 22,
                      ),
                      child: const Text(
                        "Saltar",
                        style: TextStyle(
                            fontFamily: 'Roboto-Medium',
                            color: Colors.white,
                            fontSize: 16),
                      ),
                    ),
                    Container(
                      width: widget.isPressedList.length * 14,
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: List.generate(
                          widget.isPressedList.length,
                          (index) => DotCarrusel(
                            isPressed: widget.isPressedList[index],
                            onTap: () {
                              setState(() {
                                widget.handleDotTap(
                                    index, widget.isPressedList);
                              });
                            },
                          ),
                        ),
                      ),
                    ),
                    GestureDetector(
                        onTap: () {
                          int selectedPosition =
                              widget.isPressedList.indexOf(true);
                          if (selectedPosition != -1 &&
                              selectedPosition <
                                  widget.isPressedList.length - 1) {
                            setState(() {
                              widget.handleDotTap(
                                  selectedPosition + 1, widget.isPressedList);
                            });
                          }
                        },
                        child: Container(
                          width: 42,
                          height: 42,
                          child: SvgPicture.asset(
                            'assets/images/sc_1/GoNext.svg',
                          ),
                        ))
                  ]),
            ),
    );
  }
}
