import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_fonts/google_fonts.dart';

class WatchLive extends StatelessWidget {
  const WatchLive({super.key});

  @override
  Widget build(BuildContext context) {
    final sizeWidthPage = MediaQuery.of(context).size.width;
    final sizeHeightPage = MediaQuery.of(context).size.height;


    return Container(
      margin: const EdgeInsets.fromLTRB(12, 12, 12, 0),
      width: double.infinity,
      height: sizeHeightPage * 0.08,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20),
        color: Color.fromARGB(255, 255, 53, 39),
      ),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children:  [
            Text('Ver en vivo',
                 style: GoogleFonts.poppins(fontWeight: FontWeight.bold, color: Colors.white, fontSize: 18),),
             SizedBox(width: sizeWidthPage * 0.02,),
            //SvgPicture.asset('assets/live.svg', color: Colors.white, height: sizeHeightPage * 0.04,)
            Image.asset(
              "assets/live1.gif",
              height: sizeHeightPage * 0.09,
              width: sizeWidthPage * 0.09,
            ),
          ],
        ),
      );
    
  }
}