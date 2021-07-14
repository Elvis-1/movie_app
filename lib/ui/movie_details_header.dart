import 'package:flutter/material.dart';
import 'package:movie_app/model/movie.dart';

class MovieDetailsHeader extends StatelessWidget {
  final Movie movie;
  const MovieDetailsHeader({Key? key, required this.movie}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text("${movie.year} . ${movie.type}".toUpperCase(),
        style: TextStyle(
          fontWeight: FontWeight.w400,
          color: Colors.cyan,
        ),),
        Text(movie.title,
        style: TextStyle(
          fontWeight: FontWeight.w500,
          fontSize: 32,
        ),),
        Text.rich(TextSpan(style: TextStyle(
          fontSize: 13,
          fontWeight: FontWeight.w300,
        ),
        children:[
          TextSpan(
            text:movie.actors,
          ),
          TextSpan(
            text: " More ...",
            style: TextStyle(
              color: Colors.indigoAccent,
            ),
          ),
        ],),
        )
      ],
    );
  }
}
