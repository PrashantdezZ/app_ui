import 'package:app_ui/design/design.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class NavWithShare extends StatelessWidget {
  const NavWithShare({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 360,
      padding: EdgeInsets.all(15),
      child: Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children:[
          Container(
                        height: 36,
                        width: 36,
                        decoration: BoxDecoration(
                          // color:Colors.yellow,
                         
                          color: Palette.white,
                          borderRadius: BorderRadius.circular(35)),
                        child: IconButton(onPressed: (){
                          Navigator.of(context).pop();
                        }, icon: SvgPicture.asset('assets/icons/Vectorarrow.svg',color: Palette.Pink,),
                      ),
          )
         , Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Container(
                        height: 36,
                        width: 36,
                        decoration: BoxDecoration(
                          
                          color: Palette.white,
                          
                          
                          borderRadius: BorderRadius.circular(35)),
                        child: IconButton(onPressed: (){
                          Navigator.of(context).pop();
                        }, icon: SvgPicture.asset('assets/icons/Vectorshare.svg',color: Palette.Pink,),
                      ),
          ),
          
          SizedBox(width: 7,),
          Container(
                        height: 36,
                        width: 36,
                        decoration: BoxDecoration(
                          color: Palette.white,
                          
                          
                          borderRadius: BorderRadius.circular(35)),
                        child: IconButton(onPressed: (){
                          Navigator.of(context).pop();
                        }, icon: SvgPicture.asset('assets/icons/Vectorsearch.svg',color: Palette.Pink,),
                      ),
          )
          ],
         )
        ]
                   
      ),
    );
  }
}