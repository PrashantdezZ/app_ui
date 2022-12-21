import 'package:app_ui/design/design.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class ContainerWithIcon extends StatelessWidget {
  const ContainerWithIcon({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 31,
      width: 32,
      decoration: BoxDecoration(
          color: Palette.white,
          borderRadius: BorderRadius.circular(6)),
      child: IconButton(
        onPressed: () {},
        icon: SvgPicture.asset('assets/icons/fltr.svg'),
      ),
    );
  }
}