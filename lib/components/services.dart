import 'package:flutter/material.dart';

class Services extends StatelessWidget {
  Services({@required this.image});

  final String image;

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: FlatButton(
        onPressed: () {
          print('Services');
        },
        padding: EdgeInsets.all(4),
        child: ClipRRect(
          borderRadius: BorderRadius.circular(8.0),
          child: Image.network(
            image,
            height: 100,
            width: 140,
            fit: BoxFit.fill,
          ),
        ),
      ),
    );
  }
}