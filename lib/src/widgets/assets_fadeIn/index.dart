import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class AssetFadeIn extends StatefulWidget {
  final String urlAsset;

  const AssetFadeIn({super.key, required this.urlAsset});
  @override
  State<AssetFadeIn> createState() => _AssetFadeInState();
}

class _AssetFadeInState extends State<AssetFadeIn> {
  @override
  Widget build(BuildContext context) {
    return AnimatedContainer(
      duration: Duration(milliseconds: 1000),
      curve: Curves.ease,
      decoration: BoxDecoration(
          color: Colors.transparent,
          borderRadius: BorderRadius.horizontal(
              left: Radius.circular(10), right: Radius.circular(10))),
      child: SvgPicture.asset(
        widget.urlAsset,
      ),
    );
  }
}
