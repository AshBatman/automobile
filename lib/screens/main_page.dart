import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:Cruise/components/offer_slider.dart';
import 'package:Cruise/constants.dart';
import 'package:Cruise/components/carousel_slider.dart';
import 'package:Cruise/components/services.dart';

class MyHomePage extends StatelessWidget {

  buildSizedBox({double ht, double wdth}) {
    return SizedBox(
      height: ht,
      width: wdth,
      child: Divider(
        color: Colors.deepOrangeAccent,
        thickness: 1,
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.only(top: 10.0),
        child: Container(
          child: Column(
            children: <Widget>[
              Carousel(),
              buildSizedBox(ht: 20, wdth: 150),
        OfferSlider(),
              Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(top: 10.0, left: 12.0),
                    child: Text(
                      'Services',
                      textAlign: TextAlign.left,
                      style: TextStyle(
                          fontFamily: 'Pacifico',
                          fontSize: 15,
                          color: Colors.black87,
                          fontWeight: FontWeight.bold),
                    ),
                  ),
                ],
              ),
              Row(children: [
                Padding(
                  padding: const EdgeInsets.only(left: 30.0),
                  child: buildSizedBox(ht: 1, wdth: 100),
                ),
              ]),
              Padding(
                padding: const EdgeInsets.only(top: 6.0, left: 10.0, right: 10),
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Services(image: kImgList[6],),
                    Services(image: kImgList[6],),
                    Services(image: kImgList[6],),
                    Services(image: kImgList[6],),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}



