import 'package:first/controllers/champion.controller.dart';
import 'package:first/store/app.store.dart';
import 'package:first/widgets/busy.widget.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:provider/provider.dart';

import 'champion-card.widget.dart';

class ChampionList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final store = Provider.of<AppStore>(context);
    final controller = new ChampionController(store);

    return Observer(
      builder: (_) => Loading(
        busy: false,
        // child: store.champions.length == 0
        //     ? Center(
        //         child: Text(
        //           "ops, nenhum campeão encontrado!",
        //           style: TextStyle(color: Color(0xFF818181)),
        //         ),
        //       ) :
        child: Container(
          child: ListView(
            scrollDirection: Axis.horizontal,
            children: <Widget>[
              ChampionCard(
                attack: 8,
                defense: 6,
                difficulty: 7,
                lore:
                    "Um guerreiro tão destemido quanto irascível, o yordle Kled representa a bravata furiosa de Noxus. Ele é um ícone amado pelos soldados do império, rejeitado por seus oficiais e abominado pela nobreza. Muitos dizem que Kled lutou em cada batalha que as legiões travaram, que ''adquiriu'' cada título militar e que nunca recuou de uma luta. Embora a veracidade dos detalhes seja normalmente questionável, uma parte de sua lenda é inegável: avançando em combate com Skaarl, sua montaria (des)confiável, Kled luta para proteger o que é dele... e para tornar seu o que conseguir.",
                magic: 2,
                name: "Kled",
                tags: "Fighter - Tank",
                title: "o Cavaleiro Intratável",
              ),
              ChampionCard(
                attack: 3,
                defense: 4,
                difficulty: 5,
                magic: 8,
                lore:
                    "Com uma conexão inata com o poder latente de Runeterra, Ahri é uma vastaya capaz de transformar magia em orbes de pura energia. Ela gosta de brincar com suas presas manipulando suas emoções antes de devorar suas essências vitais. Apesar de sua natureza predatória, Ahri conserva um senso de empatia ao receber flashes de memória das almas que ela consome.",
                name: "Ahri",
                tags: "Mage - Assassin",
                title: "a Raposa de Nove Caudas",
              ),
              ChampionCard(
                attack: 6,
                defense: 9,
                magic: 5,
                difficulty: 7,
                lore:
                    "Um poderoso guerreiro com uma temível reputação, Alistar busca vingança por seu clã, morto pelas mãos do império de Noxus. Apesar de ter sido escravizado e forçado a uma vida de gladiador, sua vontade indestrutível o impediu de se tornar uma fera de verdade. Agora, liberto das correntes dos seus antigos mestres, ele luta pelos oprimidos e desfavorecidos, sua fúria uma arma tão poderosa quanto seus chifres, cascos e punhos.",
                name: "Alistar",
                tags: "Tank - Support",
                title: "o Minotauro",
              ),
            ],
          ),
        ),
        // : ListView.builder(
        //     scrollDirection: Axis.horizontal,
        //     itemCount: store.champions.length,
        //     itemBuilder: (context, index) {
        //       var champ = store.champions[index];

        //       return ChampionCard(
        //         attack: champ.info.attack,
        //         defense: champ.info.defense,
        //         difficulty: champ.info.difficulty,
        //         magic: champ.info.magic,
        //         lore: champ.lore,
        //         name: champ.name,
        //         tags: champ.tags.join(', '),
        //         title: champ.title,
        //       );
        //     },
        //   ),
      ),
    );
  }
}
