import 'package:favorite_button/favorite_button.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:line_icons/line_icons.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

List<Widget> _list = <Widget>[
  _CoffeeList(
      image: "assets/images/6.png",
      shopname: "Starbucks",
      name: "The Great Pumpkin Latte",
      price: "2.99"),
  _CoffeeList(
      image: "assets/images/7.png",
      shopname: "Amezon",
      name: "The Great Pumpkin Latte",
      price: "5.99"),
  _CoffeeList(
      image: "assets/images/8.png",
      shopname: "Amezon",
      name: "The Great Tea Latte",
      price: "2.99"),
  _CoffeeList(
      image: "assets/images/9.png",
      shopname: "Amezon",
      name: "The Great Pumpkin Latte",
      price: "4.99"),
  _CoffeeList(
      image: "assets/images/10.png",
      shopname: "Starbucks",
      name: "The Great Pumpkin Latte",
      price: "6.99"),
];

List<Widget> _widgetOptions = <Widget>[
  _coffee(
      image: "assets/images/1.png",
      shopname: "Starbucks",
      name: "The Great Pumpkin Latte",
      price: "7.99"),
  _coffee(
      image: "assets/images/2.png",
      shopname: "Starbucks",
      name: "The Great Pumpkin Latte",
      price: "4.99"),
  _coffee(
      image: "assets/images/3.png",
      shopname: "Starbucks",
      name: "Pineapple Dole Whip Drink",
      price: "5.99"),
  _coffee(
      image: "assets/images/4.png",
      shopname: "Starbucks",
      name: "Betty White Frappucino Frappucino",
      price: "7.50"),
  _coffee(
      image: "assets/images/5.png",
      shopname: "Amezon",
      name: "Candy Corn Frappuccino",
      price: "9.99"),
];

// final List<int> numbers = [1, 2, 3, 5, 8, 13, 21, 34, 55];

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    var width = MediaQuery.of(context).size.width;
    var height = MediaQuery.of(context).size.height;

    return ListView(
      children: [
        Container(
          width: width,
          height: height * 0.7,
          color: Colors.black,
          child: Column(children: [
            Row(
              children: [
                SizedBox(
                  width: 20,
                ),
                Image.asset(
                  "assets/images/hamburger.png",
                  height: 25,
                  width: 25,
                ),
                SizedBox(
                  width: width * 0.78,
                ),
                Image.asset(
                  "assets/images/search-interface-symbol.png",
                  height: 25,
                  width: 25,
                ),
              ],
            ),
            SizedBox(
              height: 50,
            ),
            Padding(
              padding: EdgeInsets.only(right: width * 0.2, left: width * 0.05),
              child: Text(
                'A friend with coffee is a friend indeed.',
                style: GoogleFonts.raleway(
                  textStyle: TextStyle(
                      color: Color.fromARGB(255, 255, 255, 255),
                      // letterSpacing: .5,
                      fontWeight: FontWeight.w600,
                      fontSize: 30),
                ),
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Padding(
              padding: EdgeInsets.only(right: width * 0.61, left: width * 0.05),
              child: Text(
                'Popular Menu',
                style: GoogleFonts.raleway(
                  textStyle: TextStyle(
                      color: Color.fromARGB(255, 255, 255, 255),
                      // letterSpacing: .5,
                      fontWeight: FontWeight.w300,
                      fontSize: 20),
                ),
              ),
            ),
            // SizedBox(
            //   height: 30,
            // ),
            Container(
              padding: EdgeInsets.symmetric(horizontal: 16.0, vertical: 24.0),
              height: height * 0.45,
              child: ListView.builder(
                  physics: BouncingScrollPhysics(),
                  scrollDirection: Axis.horizontal,
                  itemCount: _widgetOptions.length,
                  itemBuilder: (context, index) {
                    return Container(
                      margin: EdgeInsets.all(5.0),
                      width: width * 0.6,
                      child: Column(
                        children: [
                          Container(
                            child: _widgetOptions[index],
                          )
                        ],
                      ),
                    );
                  }),
            ),
            SizedBox(
              height: 5,
            ),
          ]),
        ),
        Padding(
          padding: EdgeInsets.only(right: width * 0.6, left: width * 0.06),
          child: Text(
            'Coffee Menu',
            style: GoogleFonts.raleway(
              textStyle: TextStyle(
                  color: Color.fromARGB(255, 255, 255, 255),
                  // letterSpacing: .5,
                  fontWeight: FontWeight.w300,
                  fontSize: 20),
            ),
          ),
        ),
        SizedBox(
          height: 20,
        ),
        Container(
          padding: EdgeInsets.only(left: 10, right: 10),
          height: height,
          width: width,
          child: GridView.builder(
            physics: ScrollPhysics(),
            itemCount: _widgetOptions.length,
            gridDelegate: SliverGridDelegateWithMaxCrossAxisExtent(
              childAspectRatio: 2,
              crossAxisSpacing: 10,
              mainAxisSpacing: 10,
              maxCrossAxisExtent: width * 0.5,
              mainAxisExtent: height * 0.3,
            ),
            itemBuilder: (context, index) {
              return Container(
                height: 150,
                width: 150,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20.0),
                    color: Color.fromARGB(255, 28, 28, 28)),
                child: _list[index],
              );
            },
          ),
        ),
      ],
    );
  }
}

class _CoffeeList extends StatelessWidget {
  const _CoffeeList({
    super.key,
    required this.image,
    required this.shopname,
    required this.name,
    required this.price,
  });
  final String image;
  final String shopname;
  final String name;
  final String price;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        SizedBox(
          height: 15,
        ),
        Padding(
          padding: EdgeInsets.only(left: 40),
          child: Image.asset(
            image,
            height: 100,
            width: 100,
          ),
        ),
        SizedBox(
          height: 15,
        ),
        Padding(
          padding: EdgeInsets.only(left: 15, right: 15),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                shopname,
                style: GoogleFonts.raleway(
                  textStyle: TextStyle(
                      color: Colors.white,
                      // letterSpacing: .5,
                      fontWeight: FontWeight.w300,
                      fontSize: 13),
                ),
              ),
              SizedBox(
                height: 10,
              ),
              Text(
                name,
                style: GoogleFonts.raleway(
                  textStyle: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.w500,
                      fontSize: 15),
                ),
              ),
              SizedBox(
                height: 10,
              ),
              Row(children: [
                Expanded(
                  flex: 5,
                  child: Text(
                    '\$ $price',
                    style: GoogleFonts.raleway(
                      textStyle: TextStyle(
                          color: Colors.white,
                          // letterSpacing: .5,
                          fontWeight: FontWeight.w600,
                          fontSize: 18),
                    ),
                  ),
                ),
                Expanded(
                  flex: 1,
                  child: Container(
                    height: 25.0,
                    width: 25.0,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20.0),
                        color: Colors.white),
                    child: FavoriteButton(
                      iconSize: 20,
                      isFavorite: true,
                      valueChanged: (_isFavorite) {
                        print('Is Favorite : $_isFavorite');
                      },
                    ),
                  ),
                ),
              ]),
            ],
          ),
        ),
      ],
    );
  }
}

class _coffee extends StatelessWidget {
  const _coffee({
    super.key,
    required this.image,
    required this.shopname,
    required this.name,
    required this.price,
  });
  final String image;
  final String shopname;
  final String name;
  final String price;

  @override
  Widget build(BuildContext context) {
    var width = MediaQuery.of(context).size.width;
    var height = MediaQuery.of(context).size.height;
    return Container(
      height: height * 0.375,
      width: width * 0.6,
      child: Stack(
        children: <Widget>[
          Positioned(
            top: 80,
            child: Container(
              child: Padding(
                padding: EdgeInsets.only(left: 20, right: 20),
                child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      SizedBox(
                        height: 65,
                      ),
                      Text(
                        shopname,
                        style: GoogleFonts.raleway(
                          textStyle: TextStyle(
                              color: Colors.white,
                              // letterSpacing: .5,
                              fontWeight: FontWeight.w300,
                              fontSize: 13),
                        ),
                      ),
                      SizedBox(
                        height: 15,
                      ),
                      Text(
                        '$name',
                        style: GoogleFonts.raleway(
                          textStyle: TextStyle(
                              color: Colors.white,
                              // letterSpacing: .5,
                              fontWeight: FontWeight.w500,
                              fontSize: 17),
                        ),
                      ),
                      SizedBox(
                        height: 25,
                      ),
                      Row(children: [
                        Expanded(
                          flex: 5,
                          child: Text(
                            '\$ $price',
                            style: GoogleFonts.raleway(
                              textStyle: TextStyle(
                                  color: Colors.white,
                                  // letterSpacing: .5,
                                  fontWeight: FontWeight.w600,
                                  fontSize: 20),
                            ),
                          ),
                        ),
                        // SizedBox(
                        //   width: 80,
                        // ),
                        Expanded(
                          flex: 1,
                          child: Container(
                            height: 30.0,
                            width: 30.0,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(20.0),
                                color: Colors.white),
                            child: FavoriteButton(
                              iconSize: 25,
                              isFavorite: true,
                              // iconDisabledColor: Colors.white,
                              valueChanged: (_isFavorite) {
                                print('Is Favorite : $_isFavorite');
                              },
                            ),
                          ),
                        ),
                      ]),
                    ]),
              ),
              height: 210,
              width: 235,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(15),
                  color: Color.fromARGB(255, 28, 28, 28)),
            ),
          ),
          Positioned(
            left: width * 0.11,
            child: Image.asset(
              "$image",
              height: 150,
              width: 150,
            ),
          ),
        ],
      ),
    );
  }
}
