import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:google_fonts/google_fonts.dart';

class Courses extends StatelessWidget {
  Courses(this.image, this.title, this.subtitle, this.price, {super.key});
  String? image;
  String? title;
  String? subtitle;
  String? price;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(10),
      child: ListTile(
        dense: true,
        visualDensity: VisualDensity(vertical: 3),
        tileColor: Colors.white,
        leading: Container(
            width: 100,
            height: 150,
            decoration: BoxDecoration(
                image: DecorationImage(
                    fit: BoxFit.cover, image: NetworkImage("$image")))),
        title: Text("$title",
            style: GoogleFonts.lato(fontStyle: FontStyle.italic, fontSize: 20)),
        subtitle: Column(mainAxisAlignment: MainAxisAlignment.end, children: [
          Text("$subtitle",
              style:
                  GoogleFonts.lato(fontStyle: FontStyle.italic, fontSize: 20)),
          Text("rate the course",
              style:
                  GoogleFonts.lato(fontStyle: FontStyle.italic, fontSize: 15)),
          RatingBar.builder(
            itemSize: 20,
            initialRating: 0,
            minRating: 0,
            direction: Axis.horizontal,
            allowHalfRating: true,
            itemCount: 5,
            itemPadding: EdgeInsets.symmetric(horizontal: 0),
            itemBuilder: (context, _) => Icon(
              Icons.star,
              color: Colors.yellow,
            ),
            onRatingUpdate: (rating) {
              print(rating);
            },
          )
        ]),
        trailing: Text("$price",
            style: GoogleFonts.lato(fontStyle: FontStyle.italic, fontSize: 15)),
      ),
    );
  }
}
