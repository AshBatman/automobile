import 'package:flutter/material.dart';

class OfferSlider extends StatelessWidget {
  const OfferSlider({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(vertical: 20.0),
      height: 40.0,
      child: ListView(
        scrollDirection: Axis.horizontal,
        children: <Widget>[
          Container(
            margin: const EdgeInsets.only(left: 20, right: 20),
            padding: const EdgeInsets.only(left: 10),
            width: 180.0,
            color: Colors.amber,
            alignment: Alignment.centerLeft,
            child: Text(
              'Offer 1',
              style: TextStyle(
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          Container(
            margin: const EdgeInsets.only(right: 20),
            padding: const EdgeInsets.only(left: 10),
            width: 180.0,
            color: Colors.amber,
            alignment: Alignment.centerLeft,
            child: Text(
              'Offer 2',
              style: TextStyle(
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          Container(
            margin: const EdgeInsets.only(right: 20),
            padding: const EdgeInsets.only(left: 10),
            width: 180.0,
            color: Colors.amber,
            alignment: Alignment.centerLeft,
            child: Text(
              'Offer 3',
              style: TextStyle(
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          Container(
            margin: const EdgeInsets.only(right: 20),
            padding: const EdgeInsets.only(left: 10),
            width: 180.0,
            color: Colors.amber,
            alignment: Alignment.centerLeft,
            child: Text(
              'Offer 4',
              style: TextStyle(
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          Container(
            margin: const EdgeInsets.only(right: 20),
            padding: const EdgeInsets.only(left: 10),
            width: 180.0,
            color: Colors.amber,
            alignment: Alignment.centerLeft,
            child: Text(
              'Offer 5',
              style: TextStyle(
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
        ],
      ),
    );
  }
}