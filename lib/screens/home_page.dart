import 'dart:math';

import 'package:apptv/widgets/widgets.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

double value = 0.0;

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    final sizeWidthPage = MediaQuery.of(context).size.width;
    final sizeHeightPage = MediaQuery.of(context).size.height;
    const String urlImage = 'https://icon-library.com/images/no-user-image-icon/no-user-image-icon-3.jpg';


    return Scaffold(
      
      body: Stack(
        children: [
          Container(
            decoration: BoxDecoration(
              gradient: LinearGradient(
                colors: [
                  Colors.blue[400]!,
                  Colors.blue[800]!
                ],
                begin: Alignment.bottomCenter,
                end: Alignment.topCenter, 
                )
            ),
          ),

          LateralMenu(sizeWidthPage: sizeWidthPage, urlImage: urlImage, sizeHeightPage: sizeHeightPage),


            TweenAnimationBuilder(
              tween: Tween<double>(begin: 0, end: value), 
              duration: const Duration(milliseconds: 500), 
              curve: Curves.easeIn,
              builder: (_, double val, __){
                return(Transform(
                  alignment: Alignment.center,
                  transform: Matrix4.identity()
                  ..setEntry(3, 2, 0.001)
                  ..setEntry(0, 3, 200 * val)
                  ..rotateY((pi/4) * val),

                  child: Scaffold(
                    backgroundColor: Colors.black,
                    appBar: AppBar(
                      centerTitle: true,
                      title: Text('CANAL 41 TV GO',
                      style: GoogleFonts.poppins(fontWeight: FontWeight.bold),),
                      leading: IconButton(
                        onPressed: (){
                          setState(() {
                                value = 1.0;
                                //print('si');
                              });
                        }, 
                        icon: const Icon(Icons.menu)),
                    ),
                    body: SingleChildScrollView(
                      
                      scrollDirection: Axis.vertical,
                      child: Column(
                        
                        children:  [
                          const CardSwiper(),
                          const WatchLive(),
                          const ProgramBlocks(title: 'Programas'),
                          SizedBox(height: sizeHeightPage * 0.01,),
                          const ProgramBlocks(title: 'Últimos programas'),
                          SizedBox(height: sizeHeightPage * 0.01,),
                          const ProgramBlocks(title: 'Noticias'),
                          SizedBox(height: sizeHeightPage * 0.2,)
                          //Text('MAS RECIENTE....', s),
                    
                          // Text(
                          // 'CONTENIDO',
                          // style: GoogleFonts.poppins(
                          //   textStyle: TextStyle(color: Colors.blue, fontSize: 40 ),
                          //   ),
                          // ),
                          // // ElevatedButton(
                          //   onPressed: () {
                          //     setState(() {
                          //       value = 1.0;
                          //       print('si');
                          //     });
                          //   } , 
                          //   child: const Text('presio2'),
                          //   )
                        ],
                        ),
                    ),
                  ),
                ));
              }
            ),

            // GestureDetector(
              
            //   onHorizontalDragUpdate: (e){
            //     //print(e.delta.dx);
            //     if(e.delta.dx > 0){
            //       setState(() {
            //         value = 1.0;
            //       });
            //     }else{
            //       setState(() {
            //         value = 0.0;
            //       },);
            //     }
            //   },
            //   // onTap: (){
            //   //   setState(() {
            //   //     value == 0 ? value = 1: value = 0;
            //   //   });
            //   // },
            // ),

        ],
      ),
    );
  }
}



class ItemMenu extends StatelessWidget {

  final IconData icon;
  final String titleItem;

  const ItemMenu({
    Key? key, required this.icon, required this.titleItem,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Material(
      color: Colors.transparent,
      child: InkWell(
        onTap: (){},
        child: ListTile(
          onTap: (){},
          leading:  Icon(icon, color: Colors.white,),
          title:  Text(titleItem, style: GoogleFonts.poppins(
            textStyle: const TextStyle(color: Colors.white)),),
        ),
      ),
    );
  }
}