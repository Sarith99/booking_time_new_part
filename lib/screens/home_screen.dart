import 'package:booking_time/components/rounded_restaurant.dart';
import 'package:flutter/material.dart';
import 'package:booking_time/components/rounded_containers.dart';
// import 'package:search_widget/search_widget.dart';

class HomeScreen extends StatefulWidget {
  static const String id = 'home_screen';
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.purple[50],
      body: SafeArea(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(
                vertical: 20.0,
                horizontal: 20.0,
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                    child: Text(
                      "Booking Time",
                      style: TextStyle(
                        fontSize: 37.0,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                  Container(
                    child: CircleAvatar(
                      backgroundImage: AssetImage("images/logo.png"),
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 20.0,
            ),
            Container(
              padding: EdgeInsets.only(left: 25.0, right: 25.0),
              child: TextFormField(
                decoration: InputDecoration(
                  prefixIcon: Icon(Icons.search),
                  hintText: "Search Restaurant",
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(60)),
                  filled: true,
                  errorStyle: TextStyle(fontSize: 15),
                ),
              ),
            ),
            SizedBox(
              height: 20.0,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20.0),
              child: Align(
                alignment: Alignment.centerLeft,
                child: buildTopChip("Suggestions", true),
              ),
            ),
            Expanded(
              child: ListView(
                children: [
                  RoundedRest(
                    image:
                        "https://images.pexels.com/photos/3676531/pexels-photo-3676531.jpeg?auto=compress&cs=tinysrgb&dpr=2&h=750&w=1260",
                    r_name: "Dominos",
                    reviews: "323 reviews = S.ofkf",
                  ),
                  RoundedRest(
                    image:
                        "https://images.pexels.com/photos/3676531/pexels-photo-3676531.jpeg?auto=compress&cs=tinysrgb&dpr=2&h=750&w=1260",
                    r_name: "Dominos",
                    reviews: "323 reviews = S.ofkf",
                  ),
                  RoundedRest(
                    image:
                        "https://images.pexels.com/photos/3676531/pexels-photo-3676531.jpeg?auto=compress&cs=tinysrgb&dpr=2&h=750&w=1260",
                    r_name: "Dominos",
                    reviews: "323 reviews = S.ofkf",
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
