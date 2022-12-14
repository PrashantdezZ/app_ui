
import 'package:app_ui/design/design.dart';
import 'package:app_ui/widgets/bottomNav.dart';
import 'package:app_ui/widgets/cardWithText.dart';
import 'package:app_ui/widgets/cardwithlargewidth.dart';
import 'package:app_ui/widgets/carouselImage.dart';
import 'package:app_ui/widgets/categoryCreate.dart';
import 'package:app_ui/widgets/headerWithSearch.dart';
import 'package:app_ui/widgets/headingText.dart';
import 'package:app_ui/widgets/productCart.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';



class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  int activeindex =0;
  final _searchController = TextEditingController();

  void dispose(){
    super.dispose();
    _searchController.dispose();
    
  }
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      appBar: PreferredSize(
            preferredSize: const Size.fromHeight(142),
            child: HeaderWithSearch(searchController: _searchController),
            ),
      bottomNavigationBar: BottomNav(),
      body:SingleChildScrollView(
        child: Column(
          children: [
            
            Column(
              children: [
                
                      SizedBox(height: 15,),
                      CategoryWidget(size: size),

                      CarouselImage(),
                      
                                    
                      SizedBox(height: 10,),
                      ///////////////////////////Trending Cakes\\\\\\\\\\\\\\\\\\\\\\\\\\
                      HeadingText(heading: 'Trending Cakes',),
                      const SizedBox(height: 10,),
                      
                      Container(
                        height: 215,
                        padding: EdgeInsets.only(left:6,right:10),
                        margin: EdgeInsets.all(3),

                        
                        child: ListView.separated(
                        
                          separatorBuilder: (context, index) {
                            return SizedBox(width: 1.7,);
                          },
                          shrinkWrap: true,
                          scrollDirection: Axis.horizontal,
                          
                          itemCount: 5,
                          itemBuilder: (context, index) {
                            return ProductCart();
                      
                          },
                          
                        ),
                      ),
                      
                      SizedBox(height: 40,),

                      ///////////////////Cakes By Shape\\\\\\\\\\\\\\\\
                      HeadingText(heading: 'Cakes By Shape'),
                      SizedBox(height: 15,),

                      Container(
                        
                      height: 170,
                      width: 330,
                      child: GridView.builder(
                        physics: NeverScrollableScrollPhysics(),
                        shrinkWrap: true,
                        itemCount: 2,
                        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2) ,
                        itemBuilder: (context, index) {
                          return CardWithText();
                        },
                      ),
                      ),
                      SizedBox(height: 15,),
                      /////////////////////////Trending Cakes\\\\\\\\\\\\\\\\\\\
                      
                      HeadingText(heading: 'Trending Cakes',),
                      const SizedBox(height: 15,),
                      
                      Container(
                        height: 215,
                        padding: EdgeInsets.only(left:6,right:10),
                        margin: EdgeInsets.all(3),

                        
                        child: ListView.separated(
                          physics: NeverScrollableScrollPhysics(),
                          // padding: EdgeInsetsGeometry.infinity,
                          separatorBuilder: (context, index) {
                            return SizedBox(width: 1.7,);
                          },
                          shrinkWrap: true,
                          scrollDirection: Axis.horizontal,
                          
                          itemCount: 2,
                          itemBuilder: (context, index) {
                            return widthCard();
                      
                          },
                          
                        ),
                      ),
                      
                     
                      
                    
              ],
            ),
           
          ],
        ),
      ),
      
    );
    
  }
}

