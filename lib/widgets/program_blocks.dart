import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class ProgramBlocks extends StatelessWidget {
  final String title;
  const ProgramBlocks({super.key, required this.title});

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;

    

    return Container(
      //color: Colors.yellow,
      width: double.infinity,
      height: size.height * 0.35,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: EdgeInsets.fromLTRB(15, 12 , 0, 4),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(title,
                 style: GoogleFonts.poppins(fontWeight: FontWeight.bold, color: Colors.white, fontSize: 18),),
                 IconButton(onPressed: (){} , icon: const Icon(Icons.arrow_forward, color: Colors.white,))
              ],
            ),
          ),
    
    
          Expanded(
                child: ListView.builder(
                  physics: const BouncingScrollPhysics(),
                  //controller: scroolController,
                  scrollDirection: Axis.horizontal,
                  itemCount: 6,
                  itemBuilder: ( _, int index) => ItemProgram(),
                  ),
              ),
             
        ],
      ),
    );
  }
}


class ItemProgram extends StatelessWidget {
  const ItemProgram({super.key});

  @override
  Widget build(BuildContext context) {
    int value = 0;
    final size = MediaQuery.of(context).size;
    return Stack(
      children: [
        Container(
      margin: const EdgeInsets.fromLTRB(12, 0, 5, 0),
      width: size.width * 0.75,
      height: size.height * 0.25,
      child: ClipRRect(
        borderRadius: BorderRadius.circular(20),
        child: const FadeInImage(
                  placeholder: AssetImage('assets/no-image.jpg'), 
                  //image: NetworkImage('https://thewharfkitchenbar.co.nz/wp-content/uploads/2016/10/500x300-2.png'),
                  image: NetworkImage('https://agenciaorbita.org/wp-content/uploads/2022/06/1200x700_PTT-777x445.jpg'),
                  fit: BoxFit.cover,
                ),
      ),
      ),

      Positioned(
        right: 1,
        child: ClipRRect(
          borderRadius: BorderRadius.circular(220),
          child: Container(
            margin: const EdgeInsets.all(20),
            color: Colors.red ,
            padding: const EdgeInsets.all(5),
            
            child: Row(
              children: [
                 
                 Text('·  LIVE',
                     style: GoogleFonts.poppins(fontWeight: FontWeight.bold, color: Colors.white, fontSize: 12),),
              ],
            ),
          ),
        ),
      )
    ],
    );
  }
}