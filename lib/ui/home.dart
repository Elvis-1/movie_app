import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:movie_app/model/movie.dart';
import 'movies_details.dart';


class MovieListView extends StatelessWidget {

  final List<Movie> movieList = Movie.getMovies();

  // final List movies = [
  //   "Titanic", "Game of Thrones", "Prayer Room", "Game of Love",
  //   "Going Back Home", "Game of Fighters", "Prayer Ground", "Heroes",
  //   "Going Back Home", "Game of Fighters", "Prayer Ground", "Heroes"
  // ];

  //const MovieListView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Movies",),
        backgroundColor: Colors.blueGrey.shade900,
      ),
      backgroundColor: Colors.blueGrey.shade900,
      body: ListView.builder(
          itemCount: movieList.length,
          itemBuilder: (BuildContext context, int index) {
            return Stack(
              children:[
                movieCard(movieList[index], context),
            Positioned(
              top:10.0,
                child: movieImage(movieList[index].images[0])),
            ]);

            // return Card(
            //   elevation: 4.5,
            //   color: Colors.white,
            //   child: ListTile(
            //     leading: CircleAvatar(
            //       child: Container(
            //         width:200,
            //         height:200,
            //         decoration: BoxDecoration(
            //           image:DecorationImage(
            //             image: NetworkImage(movieList[index].images[0]),
            //             fit:BoxFit.cover,
            //           ),
            //             borderRadius: BorderRadius.circular(13.9)),
            //         child: null,
            //       ),
            //     ),
            //     title: Text("${movieList[index].title}"),
            //      subtitle: Text("${movieList[index].type}"),
            //     trailing: Text("..."),
            //     //onTap: (){
            //     //  debugPrint('Movies name: ${movies.elementAt(index)}');
            //     // },
            //     onTap: () {
            //       Navigator.push(context,
            //           MaterialPageRoute(
            //               builder: (context) =>
            //                   MovieListViewDetails(
            //                     movieName: "${movieList[index].title}",
            //                     movie: movieList[index],
            //                   )));
            //     },
            //   ),
            // );
          }),
    );
  }
     Widget movieCard(Movie movie, BuildContext context){
            return InkWell(
              child: Container(
                margin: EdgeInsets.only(left: 60.0),
                width: MediaQuery.of(context).size.width,
                height: 120.0,
                child: Card(
                  color: Colors.black45,
                  child: Padding(
                    padding: const EdgeInsets.only(top:8.0,bottom: 8.0, left: 54.0),
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Flexible(
                                child: Text(movie.title, style: TextStyle(
                                  fontSize: 17.0,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.white,
                                ),),
                              ),
                              Text("Rating ${movie.rating}/10",
                              style: TextStyle(fontSize: 15.0,
                              color: Colors.grey),
                              ),
                            ],
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text("Released : ${movie.year}",style: mainTextStyle(),),
                              Text(movie.runTime,style: mainTextStyle(),),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              ),
           onTap: (){
             Navigator.push(context,
                           MaterialPageRoute(
                               builder: (context) =>
                                   MovieListViewDetails(
                                     movieName: movie.title,
                                     movie: movie,
                                   )));
           },
            );

     }
TextStyle mainTextStyle(){
    return TextStyle(
        fontSize: 15.0,
        color: Colors.grey
    );
}
  Widget movieImage(String imageUrl){
    return Container(
      width: 100,
      height: 100,
      decoration: BoxDecoration(
          shape: BoxShape.circle,
        image: DecorationImage(
          image: NetworkImage(imageUrl ?? "https://upload.wikimedia.org/wikipedia/en/thumb/a/a7/WarRoomMoviePoster.jpg/220px-WarRoomMoviePoster.jpg"),
          fit: BoxFit.cover,
        ),
      ),
    );
  }

}

