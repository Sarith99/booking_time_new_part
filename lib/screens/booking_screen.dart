import 'package:flutter/material.dart';

class BookingScreen extends StatefulWidget {
  static const String id = "booking_screen";
  const BookingScreen({Key key}) : super(key: key);

  @override
  _BookingScreenState createState() => _BookingScreenState();
}

class _BookingScreenState extends State<BookingScreen> {
  @override
  Widget build(BuildContext context) {
    ///  var onPressed2 = null;
    const rowSpacer = TableRow(children: [
      SizedBox(
        height: 8,
      ),
      SizedBox(
        height: 8,
      )
    ]);
    return Scaffold(
      backgroundColor: Colors.purple[50],
      body: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            SizedBox(height: 35),
            TextFormField(
              decoration: InputDecoration(
                prefixIcon: Icon(Icons.search),
                hintText: "Search Restaurant",
                border:
                    OutlineInputBorder(borderRadius: BorderRadius.circular(60)),
                filled: true,
                errorStyle: TextStyle(fontSize: 15),
              ),
            ),
            SizedBox(height: 24),
            buildHeroContainer(),
            Padding(
              padding: EdgeInsets.only(left: 16),
              child: Text(
                'Booking Details',
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
            ),
            buildBookingDetail(),
            buildBookingEndStrip(),
            SizedBox(
              height: 10.0,
            ),
            Center(
              child: Padding(
                padding: const EdgeInsets.all(10.0),
                child: Container(
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(8),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.all(20.0),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Container(
                          child: Text(
                            "Menu",
                            style: TextStyle(
                              fontSize: 30.0,
                              fontWeight: FontWeight.w600,
                            ),
                          ),
                        ),
                        Table(
                          children: [
                            TableRow(
                              children: [
                                Column(
                                  children: [
                                    Text(
                                      "Foods",
                                      style: TextStyle(
                                        fontSize: 20.0,
                                        fontWeight: FontWeight.w600,
                                      ),
                                    ),
                                  ],
                                ),
                                Column(
                                  children: [
                                    Text(
                                      "Price",
                                      style: TextStyle(
                                        fontSize: 20.0,
                                        fontWeight: FontWeight.w600,
                                      ),
                                    ),
                                  ],
                                ),
                              ],
                            ),
                            rowSpacer,
                            TableRow(
                              children: [
                                Column(
                                  children: [
                                    Text(
                                      "Burger",
                                      style: TextStyle(
                                        fontSize: 15.0,
                                      ),
                                    ),
                                  ],
                                ),
                                Column(
                                  children: [
                                    Text(
                                      "Rs 450.00",
                                      style: TextStyle(
                                        fontSize: 15.0,
                                      ),
                                    ),
                                  ],
                                ),
                              ],
                            ),
                            rowSpacer,
                            TableRow(
                              children: [
                                Column(
                                  children: [
                                    Text(
                                      "Fries & Rings",
                                      style: TextStyle(
                                        fontSize: 15.0,
                                      ),
                                    ),
                                  ],
                                ),
                                Column(
                                  children: [
                                    Text(
                                      "Rs 650.00",
                                      style: TextStyle(
                                        fontSize: 15.0,
                                      ),
                                    ),
                                  ],
                                ),
                              ],
                            ),
                            rowSpacer,
                            TableRow(
                              children: [
                                Column(
                                  children: [
                                    Text(
                                      "Toppings",
                                      style: TextStyle(
                                        fontSize: 15.0,
                                      ),
                                    ),
                                  ],
                                ),
                                Column(
                                  children: [
                                    Text(
                                      "Rs 550.00",
                                      style: TextStyle(
                                        fontSize: 15.0,
                                      ),
                                    ),
                                  ],
                                ),
                              ],
                            ),
                            rowSpacer,
                            TableRow(
                              children: [
                                Column(
                                  children: [
                                    Text(
                                      "Beer",
                                      style: TextStyle(
                                        fontSize: 15.0,
                                      ),
                                    ),
                                  ],
                                ),
                                Column(
                                  children: [
                                    Text(
                                      "Rs 1500.00",
                                      style: TextStyle(
                                        fontSize: 15.0,
                                      ),
                                    ),
                                  ],
                                ),
                              ],
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ),
            buildBookingButton(),
          ],
        ),
      ),
    );
    ;
  }
}

Widget buildBookingButton() {
  return Container(
    padding: EdgeInsets.symmetric(vertical: 8, horizontal: 44),
    width: double.infinity,
    child: RaisedButton(
      onPressed: () {
        //TODO
      },
      color: Colors.orange[900],
      textColor: Colors.white,
      elevation: 2,
      child: Text(
        'Book Now',
      ),
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(22),
      ),
    ),
  );
}

Widget buildBookingEndStrip() {
  return Padding(
    padding: EdgeInsets.symmetric(horizontal: 16),
    child: Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        Flexible(flex: 2, child: buildMarkerIcon()),
        Flexible(
          flex: 8,
          fit: FlexFit.loose,
          child: Container(
            margin: EdgeInsets.only(bottom: 8),
            decoration: BoxDecoration(
              color: Colors.white,
              //boxShadow: [raisedBoxShadow],
              borderRadius: BorderRadius.circular(8),
            ),
            child: ListTile(
              title: Padding(
                padding: EdgeInsets.only(bottom: 6),
                child: Text('Booking Date & Time'),
              ),
              subtitle: Text('January 11, 03:30 PM'),
            ),
          ),
        ),
      ],
    ),
  );
}

Widget buildBookingDetail() {
  return Padding(
    padding: EdgeInsets.fromLTRB(
      16,
      16,
      16,
      0,
    ),
    child: IntrinsicHeight(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Flexible(
            child: buildLeftFlex(),
            flex: 2,
          ),
          Flexible(
            child: buildRightFlex(),
            flex: 8,
          ),
        ],
      ),
    ),
  );
}

Widget buildRightFlex() {
  return Container(
    padding: EdgeInsets.all(12),
    margin: EdgeInsets.only(bottom: 24),
    width: double.infinity,
    decoration: BoxDecoration(
      color: Colors.white,
      //boxShadow: [raisedBoxShadow],
      borderRadius: BorderRadius.circular(8),
    ),
    child: Row(
      mainAxisAlignment: MainAxisAlignment.start,
      children: <Widget>[
        buildTablePicture(),
        Flexible(
          fit: FlexFit.tight,
          child: buildTableDescriptions(),
        )
      ],
    ),
  );
}

Widget buildTableDescriptions() {
  return Column(
    mainAxisAlignment: MainAxisAlignment.start,
    crossAxisAlignment: CrossAxisAlignment.end,
    children: <Widget>[
      Container(
        padding: EdgeInsets.symmetric(horizontal: 16, vertical: 4),
        decoration: BoxDecoration(
          //color: mainColor,
          borderRadius: BorderRadius.circular(22),
        ),
        child: Text('Family'),
      ),
      SizedBox(height: 2),
      Text('Shangri-La'),
      SizedBox(height: 2),
      Text('Chinese'),
      SizedBox(height: 2),
      Text('4 Members'),
      SizedBox(height: 2),
      /*   RatingBar(
          onRatingUpdate: null,
          itemSize: 20,
          initialRating: 5,
          minRating: 5,
          direction: Axis.horizontal,
          allowHalfRating: true,
          itemCount: 5,
          itemPadding: EdgeInsets.symmetric(horizontal: 2.0),
          itemBuilder: (context, _) =>
              Icon(Icons.star, color: Colors.orange[900]),
        ),*/
      SizedBox(height: 2),
      Text('1256 users review'),
    ],
  );
}

Widget buildTablePicture() {
  return Stack(
    alignment: Alignment.center,
    fit: StackFit.loose,
    children: <Widget>[
      Container(width: 120),
      Image.asset('assets/table.png', width: 100, fit: BoxFit.fitWidth),
      Positioned(
        left: 0,
        bottom: 0,
        child: Container(
          height: 36,
          width: 36,
          padding: EdgeInsets.all(4),
          decoration: BoxDecoration(
            //  color: mainColor,
            shape: BoxShape.circle,
            //   boxShadow: [raisedBoxShadow],
          ),
          child: Center(
            child: Icon(Icons.done_all, color: Colors.white, size: 24),
          ),
        ),
      )
    ],
  );
}

Widget buildLeftFlex() {
  return Column(
    mainAxisAlignment: MainAxisAlignment.start,
    crossAxisAlignment: CrossAxisAlignment.center,
    mainAxisSize: MainAxisSize.min,
    children: <Widget>[
      buildMarkerIcon(),
      Flexible(
        fit: FlexFit.loose,
        child: VerticalDivider(
          color: Colors.blueGrey,
          thickness: 1.5,
        ),
      ),
    ],
  );
}

Widget buildMarkerIcon() {
  return Container(
    height: 56,
    width: 56,
    padding: EdgeInsets.all(8),
    decoration: BoxDecoration(
      color: Colors.white,
      //  boxShadow: [raisedBoxShadow],
      shape: BoxShape.circle,
    ),
    child: Image.asset('assets/target.png', width: 40, fit: BoxFit.contain),
  );
}

Widget buildHeroContainer() {
  return Container(
    margin: EdgeInsets.all(16),
    // decoration: BoxDecoration(boxShadow: [raisedBoxShadow]),
    height: 220,
    width: double.infinity,
    child: Stack(
      fit: StackFit.expand,
      children: <Widget>[
        ClipRRect(
            borderRadius: BorderRadius.circular(16),
            child: Image.asset(
              'images/hotel.jpg',
              fit: BoxFit.cover,
            )),
        Positioned(
          left: 0,
          bottom: 0,
          child: Container(
            decoration: BoxDecoration(
              color: Colors.white.withOpacity(.8),
              borderRadius: BorderRadius.circular(36),
            ),
            padding: EdgeInsets.symmetric(horizontal: 12, vertical: 8),
            margin: EdgeInsets.all(8),
            child: Center(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: <Widget>[
                  Text('From \$ 56.00'),
                  SizedBox(width: 24),
                  Container(
                    padding: EdgeInsets.symmetric(horizontal: 12, vertical: 6),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(26),
                      //  color: mainColor,
                    ),
                    child: Center(child: Text('Shangri-La')),
                  ),
                ],
              ),
            ),
          ),
        ),
      ],
    ),
  );
}

Widget customAppBar() {
  return PreferredSize(
    preferredSize: Size.fromHeight(70),
    child: Container(
      alignment: Alignment.bottomCenter,
      padding: EdgeInsets.only(
        left: 24,
        bottom: 12,
      ),
      decoration: BoxDecoration(
        gradient: LinearGradient(
          //colors: [mainColor, Colors.deepOrange[600]],
          begin: Alignment.topCenter,
          end: Alignment.bottomCenter, colors: [],
        ),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        children: <Widget>[
          Icon(Icons.restaurant_menu, size: 42, color: Colors.white),
          SizedBox(width: 16),
          Text(
            'Booking Details',
            style: TextStyle(
              fontWeight: FontWeight.bold,
            ),
          ),
        ],
      ),
    ),
  );
}
