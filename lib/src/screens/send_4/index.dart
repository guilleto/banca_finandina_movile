import 'package:flutter/material.dart';

import 'package:flutter_svg/flutter_svg.dart';

import '../../widgets/assets_fadeIn/index.dart';

class SendScreen extends StatefulWidget {
  const SendScreen({super.key});
  @override
  State<SendScreen> createState() => _SendScreenState();
}

class _SendScreenState extends State<SendScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: <Widget>[
          SvgPicture.asset(
            'assets/images/sc_4/background4.svg',
            alignment: Alignment.center,
            width: MediaQuery.of(context).size.width,
            height: MediaQuery.of(context).size.height,
            fit: BoxFit.cover,
          ),
          SizedBox(
            width: MediaQuery.of(context).size.width,
            child: Padding(
              padding: const EdgeInsets.only(top: 35, bottom: 128),
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
                    'assets/images/sc_4/ComboGroup.png',
                  ),
                  Column(
                    children: [
                      RichText(
                        text: TextSpan(
                          style: DefaultTextStyle.of(context).style,
                          children: const <TextSpan>[
                            TextSpan(
                              text: 'Envía dinero', // Resto del texto
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
                                      'Pasa plata libremente y sin costo a cualquier',
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
                                  text:
                                      'cuenta bancaria o celular en Colombia.',
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
