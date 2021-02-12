import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ChampionPage extends StatelessWidget {
  final String name;
  final String title;
  final String lore;

  ChampionPage({
    @required this.name,
    @required this.lore,
    @required this.title,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: NestedScrollView(
        headerSliverBuilder: (BuildContext context, bool innerBoxIsScrolled) {
          return <Widget>[
            SliverAppBar(
              backgroundColor: Colors.white.withOpacity(0),
              elevation: 0.0,
              expandedHeight: 500.0,
              floating: false,
              pinned: true,
              flexibleSpace: FlexibleSpaceBar(
                centerTitle: true,
                background: Hero(
                  tag: name,
                  child: Image.network(
                    "http://ddragon.leagueoflegends.com/cdn/img/champion/loading/${name}_0.jpg",
                    fit: BoxFit.cover,
                  ),
                ),
              ),
            ),
          ];
        },
        body: ListView(
          children: <Widget>[
            Padding(
              padding: EdgeInsets.only(
                // top: 10,
                left: 10,
                right: 10,
              ),
              child: Text(
                name,
                style: TextStyle(
                  fontSize: 26,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.all(10),
              child: Text(title),
            ),
            Padding(
              padding: EdgeInsets.only(top: 10, left: 10, right: 10, bottom: 5),
              child: Text(
                "Sobre $name",
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.only(left: 10, right: 10),
              child: Text(lore),
            )
          ],
        ),
      ),
    );
  }
}
