import 'package:flutter/material.dart';

import 'package:flutter_svg/flutter_svg.dart';

import '../../widgets/assets_fadeIn/index.dart';

class InitialScreen extends StatefulWidget {
  const InitialScreen({super.key});
  @override
  State<InitialScreen> createState() => _InitialScreenState();
}

class _InitialScreenState extends State<InitialScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: <Widget>[
          SvgPicture.asset(
            'assets/images/sc_1/background1.svg',
            alignment: Alignment.center,
            width: MediaQuery.of(context).size.width,
            height: MediaQuery.of(context).size.height,
            fit: BoxFit.cover,
          ),
          Container(
            width: MediaQuery.of(context).size.width,
            child: Padding(
              padding: const EdgeInsets.only(
                  top: 35, left: 24, right: 24, bottom: 128),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Container(
                    height: 165,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        AssetFadeIn(
                          urlAsset: 'assets/images/sc_1/IconFinandina.svg',
                        ),
                        Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: <Widget>[
                            RichText(
                              text: TextSpan(
                                style: DefaultTextStyle.of(context).style,
                                children: const <TextSpan>[
                                  TextSpan(
                                    text: 'Con ',
                                    style: TextStyle(
                                      fontSize: 24.0, // Tamaño del texto
                                      fontWeight: FontWeight
                                          .normal, // Fuente en negrita
                                      color: Colors.white, // Color del texto
                                    ),
                                  ),
                                  TextSpan(
                                    text: 'Banco Finandina', // Parte en negrita
                                    style: TextStyle(
                                      fontSize: 24.0, // Tamaño del texto
                                      fontWeight:
                                          FontWeight.bold, // Fuente en negrita
                                      color: Colors.white, // Color del texto
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            RichText(
                              text: TextSpan(
                                style: DefaultTextStyle.of(context).style,
                                children: const <TextSpan>[
                                  TextSpan(
                                    text:
                                        ' tienes el poder de ser libre', // Resto del texto
                                    style: TextStyle(
                                      fontSize: 24.0, // Tamaño del texto
                                      fontWeight: FontWeight
                                          .normal, // Fuente en regular
                                      color: Colors.white, // Color del texto
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ],
                        )
                      ],
                    ),
                  ),
                  AssetFadeIn(
                    urlAsset: 'assets/images/sc_1/Text2.svg',
                  ),
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
