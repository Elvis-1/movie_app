import 'package:flutter/material.dart';
import 'package:movie_app/model/movie.dart';
import 'movie_poster.dart';
import 'movie_details_header.dart';

class MovieDetailsHeaderWithPoster extends StatelessWidget {
  final Movie movie;
  const MovieDetailsHeaderWithPoster({Key? key, required this.movie}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16),
      child: Row(
        children: [
          MoviePoster(poster:movie.images[0].toString()),
          SizedBox(width: 16.0,),
          Expanded(
              child: MovieDetailsHeader(movie:movie),
          )
        ],
      ),
    );
  }
}
