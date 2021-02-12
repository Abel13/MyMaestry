import 'package:first/views/champion.page.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ChampionCard extends StatelessWidget {
  final String name;
  final String title;
  final String lore;
  final String tags;
  final int attack;
  final int defense;
  final int magic;
  final int difficulty;

  ChampionCard({
    @required this.name,
    @required this.tags,
    @required this.lore,
    @required this.title,
    @required this.attack,
    @required this.defense,
    @required this.difficulty,
    @required this.magic,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => ChampionPage(
              lore: lore,
              name: name,
              title: title,
            ),
          ),
        );
      },
      child: Container(
        padding: EdgeInsets.only(
          left: 10,
          right: 10,
        ),
        margin: EdgeInsets.all(5),
        width: 170,
        color: Colors.black26,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Hero(
              tag: name,
              child: Image.network(
                "http://ddragon.leagueoflegends.com/cdn/11.3.1/img/champion/$name.png",
                width: 170,
                height: 170,
                fit: BoxFit.contain,
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Container(
              // height: 60,
              child: Text(
                name,
                style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.w400,
                ),
              ),
            ),
            Text(
              title,
              overflow: TextOverflow.ellipsis,
              style: TextStyle(
                fontSize: 14,
                fontWeight: FontWeight.w300,
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Text(
              "TAGS",
              style: TextStyle(
                fontSize: 12,
                fontWeight: FontWeight.w700,
              ),
            ),
            Text(
              tags,
              style: TextStyle(
                fontSize: 10,
                fontWeight: FontWeight.w300,
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Text(
              "INFO",
              style: TextStyle(
                fontSize: 12,
                fontWeight: FontWeight.w700,
              ),
            ),
            Row(
              children: <Widget>[
                Column(
                  children: [
                    Text(
                      "ATK",
                      style: TextStyle(
                        fontSize: 10,
                        fontWeight: FontWeight.w300,
                      ),
                    ),
                    Text(
                      attack.toString(),
                      style: TextStyle(
                        fontSize: 10,
                        fontWeight: FontWeight.w300,
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  width: 5,
                ),
                Column(
                  children: [
                    Text(
                      "DEF",
                      style: TextStyle(
                        fontSize: 10,
                        fontWeight: FontWeight.w300,
                      ),
                    ),
                    Text(
                      defense.toString(),
                      style: TextStyle(
                        fontSize: 10,
                        fontWeight: FontWeight.w300,
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  width: 5,
                ),
                Column(
                  children: [
                    Text(
                      "MGC",
                      style: TextStyle(
                        fontSize: 10,
                        fontWeight: FontWeight.w300,
                      ),
                    ),
                    Text(
                      magic.toString(),
                      style: TextStyle(
                        fontSize: 10,
                        fontWeight: FontWeight.w300,
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  width: 5,
                ),
                Column(
                  children: [
                    Text(
                      "DIF",
                      style: TextStyle(
                        fontSize: 10,
                        fontWeight: FontWeight.w300,
                      ),
                    ),
                    Text(
                      difficulty.toString(),
                      style: TextStyle(
                        fontSize: 10,
                        fontWeight: FontWeight.w300,
                      ),
                    ),
                  ],
                )
              ],
            ),
          ],
        ),
      ),
    );
  }
}
