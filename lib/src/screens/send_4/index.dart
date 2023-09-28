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
                      Container(
                        margin: const EdgeInsetsDirectional.symmetric(
                            horizontal: 16),
                        height: 45, // Altura fija del contenedor
                        alignment: Alignment
                            .center, // Centra el contenido verticalmente
                        child: const Text(
                          'Pasa plata libremente y sin costo a cualquier cuenta bancaria o celular en Colombia.',
                          textAlign: TextAlign
                              .center, // Centra el texto horizontalmente
                          overflow: TextOverflow
                              .ellipsis, // Puedes cambiar esto según tus necesidades
                          maxLines:
                              2, // Máximo de líneas antes de mostrar "...", ajusta según sea necesario
                          style: TextStyle(
                            fontSize: 16.0, // Tamaño del texto
                            fontWeight: FontWeight.normal, // Fuente regular
                            color: Colors.white, // Color del texto
                          ),
                        ),
                      ),
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
