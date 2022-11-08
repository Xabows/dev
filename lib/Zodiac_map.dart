import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:zodiac_signs/components/alerta.dart';
import 'package:zodiac_signs/components/menu_drawer.dart';
import 'package:zodiac_signs/home.dart';

class zodiac_map extends StatefulWidget {
  @override
  State<zodiac_map> createState() => _zodiac_mapState();
}

class _zodiac_mapState extends State<zodiac_map> {
  int indexBase = 0;

  void onIndexChange() {}
  @override
  Widget build(BuildContext context) {
    final telas = [
      Container(
          decoration: const BoxDecoration(
              image: DecorationImage(
                  image: AssetImage('assets/Recursos/gif/moving_star.gif'),
                  fit: BoxFit.cover)),
          child: Center(
            child: SingleChildScrollView(
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Mito(context, 'Origem',
                    'O zodiaco grego, por definição literal, é uma faixa imaginária que se estente pela elipse celeste visível, incluindo a orbita do sol e de todos os planetas, em que as constelações atribuidas a cada um dos signos do horóscopo astrológico ficam a mostra no céu.\n\n O zodíaco grego existe desde a epoca do império romano, com conceitos e mitos baseados na astronomia helênica e pela astronomia babilônica. \n\nA sua descrição completa foi vista na obra do cientista Ptolomeu. Hoje em dia, não adotado mais pela astronomia como base de mapeamento do céu, o zodíaco é usado pela astrologia para estudar, analisar e entender carácterísticas das pessoas que nasceram em determinada época, cuja constelação estava mais evidente no céu em determinado período, atravéz da movimentação dos planetas e a influência de energias e campos magnéticos entre os planetas.'),
              ),
            ),
          )),
      Container(
        decoration: const BoxDecoration(
            image: DecorationImage(
                image: AssetImage('assets/Recursos/gif/moving_star.gif'),
                fit: BoxFit.cover)),
        child:
            Column(mainAxisAlignment: MainAxisAlignment.spaceEvenly, children: [
          MapTitulo(context, 'zchart', 'Grego'),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              ZodicBox(context, '/aries', 'aries', 'ARIES'),
              ZodicBox(context, '/taurus', 'taurus', 'TOURO'),
              ZodicBox(context, '/gemini', 'gemini', 'GÊMEOS')
            ],
          ), //row1
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              ZodicBox(context, '/cancer', 'cancer', 'CÂNCER'), //CANCER
              ZodicBox(context, '/leo', 'leo', 'LEÃO'),
              ZodicBox(context, '/virgo', 'virgo', 'VIRGEM'),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              ZodicBox(context, '/libra', 'libra', 'LIBRA'),
              ZodicBox(context, '/scorpio', 'scorpio', 'ESCORPIÃO'),
              ZodicBox(context, '/sagitt', 'sagittarius', 'SAGITÁRIO')
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              ZodicBox(context, '/capri', 'capricorn', 'CAPRICÓRNIO'),
              ZodicBox(context, '/aqua', 'aquarius', 'AQUÁRIO'),
              ZodicBox(context, '/pisces', 'pisces', 'PEIXES')
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              ZodicBox(context, '/ophi', 'ophiuchus', 'OPHIUCHUS'),
            ],
          ),
        ]),
      )
    ];

    return Scaffold(
      appBar: AppBar(
          backgroundColor: Colors.black87,
          title: Text('Mapa do Zodiaco Grego',
              style: TextStyle(color: Colors.white)),
          titleTextStyle: TextStyle(fontSize: 25)),
      body: telas[indexBase],
      bottomNavigationBar: BottomNavigationBar(
          onTap: (index) => setState(() => indexBase = index),
          selectedItemColor: Colors.red,
          unselectedItemColor: Colors.white60,
          iconSize: 35,
          showUnselectedLabels: false,
          currentIndex: indexBase,
          backgroundColor: Colors.black87,
          items: const [
            BottomNavigationBarItem(
                icon: Icon(Icons.home_filled), label: 'Orígem'),
            BottomNavigationBarItem(
                icon: Icon(Icons.map_outlined),
                label: 'Mapa',
                backgroundColor: Colors.blueAccent),
          ]),
      drawer: ddrawer(
          context,
          usedMenuBtBack(context, '/home', Icons.home, 'Início'),
          unusedMenuBt(
              context, CupertinoIcons.moon_stars_fill, 'Zodíaco Grego'),
          unusedMenuBt(context, Icons.local_florist, 'Zodíaco Chinês')),
    );
  }
}
