import 'package:card_swiper/card_swiper.dart';
import 'package:flutter/material.dart';
//import 'package:peliculas/models/models.dart';

class CardSwiper extends StatelessWidget {
  
  //final List<Movie> movies;

  const CardSwiper({
    Key? key, 
    //required this.movies
    }) : super(key: key);

  @override
  Widget build(BuildContext context) {

    final size = MediaQuery.of(context).size;


    // if(this.movies.length == 0) {
    //   return Container(
    //     width: double.infinity,
    //     height: size.height * 0.5,
    //     child: Center(
    //       child: CircularProgressIndicator(),
    //     ),
    //   );
    // }

    return Container(
        margin: EdgeInsets.fromLTRB(0, 12, 0, 6),
        width: double.infinity,    
        height: size.height * 0.25,
          child: Swiper(
          itemBuilder: (BuildContext context, int index) {
                        return ClipRRect(
              borderRadius: BorderRadius.circular(20),
              child: const FadeInImage(
                placeholder: AssetImage('assets/no-image.jpg'), 
                //image: NetworkImage('https://thewharfkitchenbar.co.nz/wp-content/uploads/2016/10/500x300-2.png'),
                image: NetworkImage('https://3.bp.blogspot.com/-jLo3jEUYIRo/W4OuBSmvi2I/AAAAAAAAjAs/04i02Rbd3gg8WvkbjyFuzpXxM-_ovNqNQCLcBGAs/s1600/157637-resultados-examen-aptitud-ucv-2018-26-agosto-lista-ingresantes-examen-admision.jpg'),
                fit: BoxFit.cover,
              ),
            );
            },
            itemCount: 10,
            viewportFraction: 0.8,
            scale: 0.9,
          )
    );
  }
}