import 'package:flutter/material.dart';

import 'package:flutter_svg/flutter_svg.dart';

import '../../widgets/assets_fadeIn/index.dart';

class ScanScreen extends StatefulWidget {
  const ScanScreen({super.key});
  @override
  State<ScanScreen> createState() => _ScanScreenState();
}

class _ScanScreenState extends State<ScanScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: <Widget>[
          SvgPicture.asset(
            'assets/images/sc_6_7/background6.svg',
            alignment: Alignment.center,
            width: MediaQuery.of(context).size.width,
            height: MediaQuery.of(context).size.height,
            fit: BoxFit.cover,
          ),
          SizedBox(
            width: MediaQuery.of(context).size.width,
            child: Padding(
              padding: const EdgeInsets.only(top: 35, left: 31, bottom: 128),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  const SizedBox(
                    height: 25,
                    width: 25,
                    child: AssetFadeIn(
                      urlAsset: 'assets/images/sc_1/IconFinandina.svg',
                    ),
                  ),
                  Image.asset(
                    'assets/images/sc_6_7/ComboGroup.png',
                  ),
                  Column(
                    children: [
                      RichText(
                        text: TextSpan(
                          style: DefaultTextStyle.of(context).style,
                          children: const <TextSpan>[
                            TextSpan(
                              text: '¡Escanea y listo!', // Resto del texto
                              style: TextStyle(
                                fontSize: 28.0, // Tamaño del texto
                                fontWeight:
                                    FontWeight.bold, // Fuente en regular
                                color: Colors.white, // Color del texto
                              ),
                            ),
                          ],
                        ),
                      ),
                      Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: <Widget>[
                          RichText(
                            text: TextSpan(
                              style: DefaultTextStyle.of(context).style,
                              children: const <TextSpan>[
                                TextSpan(
                                  text:
                                      'Paga en datáfonos con QR y libérate de las',
                                  style: TextStyle(
                                    fontSize: 16.0, // Tamaño del texto
                                    fontWeight:
                                        FontWeight.normal, // Fuente en negrita
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
                                  text: 'tarjetas físicas.',
                                  style: TextStyle(
                                    fontSize: 16.0, // Tamaño del texto
                                    fontWeight:
                                        FontWeight.normal, // Fuente en negrita
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
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
