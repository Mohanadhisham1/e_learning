import 'package:flutter/material.dart';
import 'package:learningapp/screens/courses.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:google_fonts/google_fonts.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  MyApp({super.key});
  late final _ratingController;
  late double _rating;

  double _userRating = 3.0;
  int _ratingBarMode = 1;
  double _initialRating = 2.0;
  bool _isRTLMode = false;
  bool _isVertical = false;
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "E_learning app",
      theme: ThemeData(),
      home: HomeScreen(),
    );
  }
}

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        color: Colors.white,
        child: ListView(children: [
          SizedBox(height: 30),
          Container(
            alignment: Alignment.center,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Text(
                  "Hey Learner",
                  style: GoogleFonts.lato(
                      fontStyle: FontStyle.italic, fontSize: 40),
                ),
                Text(
                  "Find a course you want to learn",
                  style: GoogleFonts.lato(
                      fontStyle: FontStyle.italic, fontSize: 25),
                ),
              ],
            ),
          ),
          SizedBox(),
          Container(
            margin: EdgeInsets.symmetric(vertical: 30),
            padding: EdgeInsets.symmetric(horizontal: 20, vertical: 16),
            height: 60,
            width: double.infinity,
            decoration: BoxDecoration(
              color: Color.fromARGB(255, 201, 197, 197),
              borderRadius: BorderRadius.circular(40),
            ),
            child: Row(
              children: <Widget>[
                SizedBox(width: 16),
                Icon(
                  Icons.search,
                  color: Colors.black,
                ),
                Text(
                  "Search for anything",
                  style: TextStyle(
                    fontSize: 18,
                    color: Colors.black,
                  ),
                )
              ],
            ),
          ),
          SizedBox(),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              Text(
                "Courses Catogories",
                style: GoogleFonts.lato(
                    fontStyle: FontStyle.italic,
                    fontSize: 20,
                    color: Colors.grey),
              ),
              Icon(
                Icons.arrow_downward_sharp,
                color: Colors.grey,
              )
            ],
          ),
          SizedBox(height: 30),
          Container(
            child: Column(children: [
              Courses(
                "https://cdn.dribbble.com/users/218750/screenshots/1589027/media/eb11ea5dfe1a0fecd7a10ad96c7a8373.gif?compress=1&resize=600x450",
                "Beginner",
                "English C",
                "10usd",
              ),
              Courses(
                "https://i.ytimg.com/vi/0pxa_0wXhqk/maxresdefault.jpg",
                "Basic",
                "English B",
                "20usd",
              ),
              Courses(
                "https://www.mihanenglish.ir/home/sites/default/files/styles/book_full_cover/public/2020-03/9fb5aqgtry6z1k8u.jpg?itok=THXab53Y",
                "Intermediate",
                "English A",
                "25usd",
              ),
              Courses(
                "https://i.ytimg.com/vi/ykj2kubG2kU/maxresdefault.jpg",
                "Advanced",
                "English A+",
                "30usd",
              ),
            ]),
          )
        ]),
      ),
    );
  }
}
