import 'package:flutter/material.dart';
import 'package:movie_app/model/movie.dart';
import 'package:movie_app/ui/movie_details_cast.dart';
import 'movie_details_thumbnail.dart';
import 'movie_details_header_with_poster.dart';
import 'horizontal_line.dart';
import 'movie_details_extra_poster.dart';

class MovieListViewDetails extends StatelessWidget {
   final Movie movie;
  final String movieName;
  const MovieListViewDetails({Key? key,  required this.movieName, required this.movie}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Movies ${this.movieName}"),
        backgroundColor: Colors.blueGrey.shade900,
      ),
      body: ListView(
      children: [
        MovieDetailThumbnail(thumbnail: movie.images[1]),

        MovieDetailsHeaderWithPoster(movie: movie,),
        Horizontalline(),
        MovieDetailsCast(movie: movie),
        Horizontalline(),
        MovieDetailsExtraPoster(poster: movie.images),

      ],
      ),
      // body: Center(
      //   child: Container(
      //     child: RaisedButton(
      //       child:Text("Go Back : ${this.movie.director}"),
      //       onPressed: (){
      //             Navigator.pop(context);
      //       },
      //     ),
      //   ),
      // ),
    );
  }
}

