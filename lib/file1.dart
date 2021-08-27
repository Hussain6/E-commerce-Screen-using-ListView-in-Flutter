import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.amber,
        title: Center(
            child: Text(
          "Mobile Phone Ads",
        )),
      ),
      body: ListView(
        children: [
          generateadds("Iphone 11 Pro Max", "Rs 98,000", "assets/iphone.jfif",
              "Township, Lahore", "23 Aug"),
          generateadds("Samsung Note 7", "Rs 56,000", "assets/note7.jfif",
              "Lahore, Pakistan", "21 Aug"),
          generateadds("Samsung Note 8", "Rs 67,000", "assets/note8.jfif",
              "Lahore, Pakistan", "21 Aug"),
          generateadds("Samsung Note 9", "Rs 96,000", "assets/note9.jpg",
              "Lahore, Pakistan", "20 Aug"),
          generateadds("Samsung Note 10", "Rs 110,000", "assets/note10.jfif",
              "Lahore, Pakistan", "18 Aug"),
          generateadds("Samsung Note 20", "Rs 96,000", "assets/note20.jfif",
              "Lahore, Pakistan", "16 Aug"),
          generateadds("Iphone 11", "Rs 88,000", "assets/iphone.jfif",
              "Township, Lahore", "13 Aug"),
          generateadds("Samsung Note 9 FD/s", "Rs 99,000", "assets/note9.jpg",
              "Lahore, Pakistan", "11 Aug"),
          generateadds("Samsung Note 7", "Rs 45,000", "assets/note7.jfif",
              "Lahore, Pakistan", "9 Aug"),
        ],
      ),
    );
  }
}

Widget generateadds(
    String phonename, String price, String pic, String location, String Date) {
  return (Padding(
    padding: const EdgeInsets.all(8.0),
    child: Container(
      height: 100,
      child: Row(
        children: [
          Container(
            height: 100,
            width: 100,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
                color: Colors.black54,
                image:
                    DecorationImage(image: AssetImage(pic), fit: BoxFit.cover)),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 8.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  price,
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                ),
                Text(
                  phonename,
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.w400),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(location),
                    SizedBox(
                      width: 100,
                    ),
                    Text(Date),
                  ],
                )
              ],
            ),
          )
        ],
      ),
      decoration: BoxDecoration(
        color: Colors.white,
        boxShadow: [
          BoxShadow(
            color: Colors.grey.withOpacity(0.5),
            spreadRadius: 5,
            blurRadius: 7,
            offset: Offset(0, 3), // changes position of shadow
          ),
        ],
      ),
    ),
  ));
}
