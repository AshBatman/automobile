import 'package:flutter/material.dart';
import 'package:Cruise/components/service_center.dart';
class ServiceCenterPage extends StatefulWidget {
  @override
  _ServiceCenterPageState createState() => _ServiceCenterPageState();
}

class _ServiceCenterPageState extends State<ServiceCenterPage> {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Text('Options', textAlign: TextAlign.left),
            Text('Date Filed'),
        Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              ServiceCenter(),
              ServiceCenter(),
            ],
          ),
        ),
      ]),
    );
  }
}

