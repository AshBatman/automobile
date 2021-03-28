import 'package:flutter/material.dart';
import 'package:Cruise/constants.dart';

class ServiceCenter extends StatelessWidget {
  const ServiceCenter({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(14.0),
      child: Container(
        width: kServiceCenterContainerHeight,
        height: kServiceCenterContainerHeight,
        child: Stack(
          children: [
            Row(
              children: [
                Container(
                  width: 80,
                  height: kServiceCenterContainerHeight,
                ),
                Container(
                  width: kServiceCenterContainerWidth,
                  height: kServiceCenterContainerHeight,
                  decoration: BoxDecoration(
                      image: DecorationImage(
                        image: NetworkImage(kImgList[6]),
                        fit: BoxFit.fill,
                      ),
                      color: Colors.grey,
                      borderRadius: BorderRadius.all(Radius.circular(20))),
                ),
              ],
            ),
            Padding(
              padding: const EdgeInsets.only(top: 37.5),
              child: Container(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(left: 5, top: 12.0),
                      child: Text('Bosch Service Center',
                        textAlign: TextAlign.left,
                        style: TextStyle(
                            fontWeight: FontWeight.bold
                        ),),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(5.0),
                      child: Text('Mekhri Circle, Bangalore - 560001',
                        style: TextStyle(
                            fontSize: 10
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 50),
                      child: Row(
                        children: [
                          Icon(Icons.star,
                            color: Colors.orange,),
                          Icon(Icons.star,
                            color: Colors.orange,),
                          Icon(Icons.star,
                            color: Colors.orange,),
                          Icon(Icons.star,
                            color: Colors.orange,),
                          Icon(Icons.star_border,
                            color: Colors.orange,),
                        ],
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 40.0, left: 5),
                      child: Text('Check Service',
                        style: TextStyle(
                            color: Colors.blue[600],
                            fontWeight: FontWeight.bold
                        ),),
                    ),
                  ],
                ),
                width: kServiceCenterContainerInfoWidth,
                height: kServiceCenterContainerInfoHeight,
                decoration: BoxDecoration(
                  boxShadow: [
                    BoxShadow(
                      color: Colors.grey[300],
                      offset: Offset(
                          -2.0, // Move to right 10  horizontally
                          2.0 // Move to bottom 5 Vertically
                      ),
                    )
                  ],
                  color: Colors.white,
                  borderRadius: BorderRadius.all(Radius.circular(10)),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
