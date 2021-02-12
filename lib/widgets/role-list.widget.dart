import 'package:first/widgets/role-item.widget.dart';
import 'package:flutter/cupertino.dart';

class RoleList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 70,
      child: ListView(
        scrollDirection: Axis.horizontal,
        children: <Widget>[
          RoleItem(
            url:
                "https://static.wikia.nocookie.net/leagueoflegends/images/e/ef/Top_icon.png/revision/latest/scale-to-width-down/50?cb=20181117143602",
          ),
          RoleItem(
            url:
                "https://static.wikia.nocookie.net/leagueoflegends/images/1/1b/Jungle_icon.png/revision/latest/scale-to-width-down/50?cb=20181117143559",
          ),
          RoleItem(
            url:
                "https://static.wikia.nocookie.net/leagueoflegends/images/9/98/Middle_icon.png/revision/latest/scale-to-width-down/50?cb=20181117143644",
          ),
          RoleItem(
            url:
                "https://static.wikia.nocookie.net/leagueoflegends/images/e/e0/Support_icon.png/revision/latest/scale-to-width-down/50?cb=20181117143601",
          ),
          RoleItem(
            url:
                "https://static.wikia.nocookie.net/leagueoflegends/images/9/97/Bottom_icon.png/revision/latest/scale-to-width-down/50?cb=20181117143632",
          ),
        ],
      ),
    );
  }
}
