import 'package:flutter/material.dart';

class MovieDetailsExtraPoster extends StatelessWidget {
 final List<String> poster;
  const MovieDetailsExtraPoster({Key? key, required this.poster}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
     crossAxisAlignment: CrossAxisAlignment.start,
     children: [
      Padding(
        padding: const EdgeInsets.only(left: 8.0),
        child: Text("More Movie Posters", style: TextStyle(fontSize: 15, color: Colors.black26),),
      ),
      Container(
       height: 170,
       padding: EdgeInsets.symmetric(vertical: 16.0),
       child:ListView.separated(
           scrollDirection: Axis.horizontal,
           separatorBuilder: (context, index) => SizedBox(width: 8,),
           itemCount: poster.length,
        itemBuilder: (context, index) => ClipRRect(
         borderRadius: BorderRadius.all(Radius.circular(10.0)),
         child: Container(
          width: MediaQuery.of(context).size.width/4,
          height: 160,
          decoration: BoxDecoration(
           image: DecorationImage(image: NetworkImage(poster[index]),
           fit: BoxFit.cover,),
          ),
         ),
        ),
       )
      ),
     ],
    );
  }
}
