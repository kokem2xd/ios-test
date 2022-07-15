import 'package:apptv/screens/home_page.dart';
import 'package:flutter/material.dart';

class LateralMenu extends StatelessWidget {
  const LateralMenu({
    Key? key,
    required this.sizeWidthPage,
    required this.urlImage,
    required this.sizeHeightPage,
  }) : super(key: key);

  final double sizeWidthPage;
  final String urlImage;
  final double sizeHeightPage;

  @override
  Widget build(BuildContext context) {

    //const String urlImage = 'https://icon-library.com/images/no-user-image-icon/no-user-image-icon-3.jpg';
    return SafeArea(
      child: Container(
        width: sizeWidthPage * 0.6,
        padding: const EdgeInsets.all(8.0),
        child: Column(
          children: [
            DrawerHeader(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children:  [
                    CircleAvatar(
                    radius: 50.0,
                    backgroundImage: NetworkImage(urlImage),
                  ),
                  SizedBox(height: sizeHeightPage * 0.02,),
                  // const Text(
                  //   "Usuario",
                  //   style: TextStyle(color: Colors.white,fontSize: 18),
                  // )
                ],
              ),
            ),
            Expanded(
              child: ListView(
                children: const [
                  ItemMenu(icon: Icons.home, titleItem: 'Inicio',),
                  ItemMenu(icon: Icons.newspaper_rounded, titleItem: 'Noticias',),
                  ItemMenu(icon: Icons.gamepad_rounded, titleItem: 'Entretenimiento',),
                  ItemMenu(icon: Icons.sports_basketball_rounded, titleItem: 'Deportes',),
                  ItemMenu(icon: Icons.video_call_rounded, titleItem: 'Videos',),
                  ItemMenu(icon: Icons.file_present_rounded, titleItem: 'Términos y condiciones',),
                ],
              )
            )
          ],
        ),
      )
      );
  }
}