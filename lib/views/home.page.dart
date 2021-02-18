import 'package:first/store/app.store.dart';
import 'package:first/widgets/champion-list.widget.dart';
import 'package:first/widgets/role-list.widget.dart';
import 'package:first/widgets/search-box.widget.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:provider/provider.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final store = Provider.of<AppStore>(context);

    return Scaffold(
      drawer: Drawer(
        child: Column(
          children: [
            UserAccountsDrawerHeader(
              currentAccountPicture: ClipOval(
                child: Image.network(
                    'http://ddragon.leagueoflegends.com/cdn/11.3.1/img/profileicon/${store.summoner.iconId}.png'),
                // child: Image.asset("assets/Emblem_Bronze.png"),
              ),
              accountName: Text(store.summoner.name),
              accountEmail: Row(
                children: [
                  Image.asset(
                    'assets/emblems/Emblem_Bronze.png',
                    width: 30,
                    height: 30,
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  Text(
                    'Bronze II',
                    style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.w700,
                    ),
                  ),
                ],
              ),
            ),
            ListTile(title: Text('Perfil')),
            ListTile(title: Text('Maestrias')),
            ListTile(title: Text('Ranked Solo/Duo')),
            ListTile(title: Text('Ranked Flex 5x5'))
          ],
        ),
      ),
      appBar: AppBar(
        title: Text('My Maestry'),
      ),
      body: Container(
        padding: EdgeInsets.all(15),
        width: double.infinity,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            SizedBox(
              height: 10,
            ),
            // Text("TESTE"),
            SearchBox(),
            SizedBox(
              height: 30,
            ),
            Text(
              "Rotas",
              style: Theme.of(context).textTheme.headline4,
            ),
            SizedBox(
              height: 10,
            ),
            Container(
              height: 90,
              child: RoleList(),
            ),
            SizedBox(
              height: 30,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                Text(
                  "Campeões",
                  style: Theme.of(context).textTheme.headline4,
                ),
                FlatButton(
                  onPressed: () {},
                  child: Text("ver todos"),
                )
              ],
            ),
            SizedBox(
              height: 10,
            ),
            Container(
              height: 350,
              child: ChampionList(),
            )
          ],
        ),
      ),
    );
  }
}
