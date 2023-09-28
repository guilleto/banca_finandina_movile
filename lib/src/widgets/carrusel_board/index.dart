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
    return Container(
      margin: EdgeInsetsDirectional.all(16),
      height: 64,
      decoration: BoxDecoration(
        color: Colors.white10,
        borderRadius: BorderRadius.horizontal(
          left: Radius.circular(32),
          right: Radius.circular(32),
        ),
      ),
      child: Container(
        margin: EdgeInsetsDirectional.only(end: 9, start: 9),
        child: Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              // Expanded(
              //   child: Container(
              //     margin: EdgeInsetsDirectional.only(start: 31, end: 70),
              //     child: Row(
              //       crossAxisAlignment: CrossAxisAlignment.center,
              //       mainAxisAlignment: MainAxisAlignment.spaceBetween,
              //       children: [

              //       ],
              //     ),
              //   ),
              // ),
              Container(
                margin: EdgeInsetsDirectional.only(
                  start: 22,
                ),
                child: Text(
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
                          widget.handleDotTap(index, widget.isPressedList);
                        });
                      },
                    ),
                  ),
                ),
              ),
              GestureDetector(
                  onTap: () {
                    int selectedPosition = widget.isPressedList.indexOf(true);
                    if (selectedPosition != -1 &&
                        selectedPosition < widget.isPressedList.length - 1) {
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
