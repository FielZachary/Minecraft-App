import 'package:flutter/material.dart';

class SelectionTab extends StatelessWidget {
  SelectionTab({this.destination, this.picture, this.label});

  final destination;
  final picture;
  final label;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(vertical: 50.0),
      child: Card(
        elevation: 5.0,
        color: Colors.grey[100],
        //borderRadius: BorderRadius.circular(30.0),
        child: Container(
          width: 100.0,
          height: 250.0,
          decoration: BoxDecoration(
            border: Border.all(color: Colors.white, width: 1.50),
            image: DecorationImage(
              fit: BoxFit.cover,
              image: AssetImage(
                picture,
              ),
            ),
          ),
          child: MaterialButton(
            //height: 60.0,
            onPressed: () {
              Navigator.pushNamed(context, destination);
            },
          ),
        ),
      ),
    );
  }
}
