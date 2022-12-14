import 'package:app_ui/design/design.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class FloatingButton extends StatelessWidget {
  const FloatingButton({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: (){},
      child: Container(
        padding: EdgeInsets.all(14),
        height: 51,
        width: 51,
        decoration: BoxDecoration(
          color: Palette.rupeeColor,
          borderRadius: BorderRadius.circular(25.5)
    
        ),
        child: SvgPicture.asset('assets/icons/float.svg',)
        ),
    );
  }
}