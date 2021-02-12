import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class RoleItem extends StatelessWidget {
  final String url;

  const RoleItem({Key key, @required this.url}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 70,
      height: 70,
      margin: EdgeInsets.all(10),
      padding: EdgeInsets.all(20),
      decoration: BoxDecoration(
        color: Color(0xFF0A0A0A),
        boxShadow: [
          new BoxShadow(
            color: Colors.black12,
            offset: new Offset(1, 1),
            blurRadius: 5,
            spreadRadius: 2,
          )
        ],
        borderRadius: BorderRadius.all(
          Radius.circular(64),
        ),
      ),
      child: Image.network(
        url,
      ),
    );
  }
}
