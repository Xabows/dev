import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:zodiac_signs/components/alerta.dart';
import 'package:zodiac_signs/components/menu_drawer.dart';

class home_page extends StatelessWidget {
  const home_page({Key? key}) : super(key: key);
  final String texto =
      'O horóscopo é algo extremamente antigo. \nSeus primeiros registros foram '
      'feitos a partir do século 7 a.C. Na época, várias civilizações antigas '
      'se dedicavam a observação do céu, pois eles acreditavam que os astros podiam '
      'influenciar na vida humana, principalmente no destino de recém nascidos. '
      'Para falar de horóscopo, precisamos falar sobre o surgimento do zodíaco, '
      'que teve seu primeiro registro em 5 a.C. A palavra é de origem grega e '
      'significa “círculo de animais”, o que indica o grande cinturão celeste que '
      'marcava a trajetória do Sol naquela época. Cada constelação por onde o astro '
      'passava, simbolizava um signo.';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          backgroundColor: Colors.purple,
          title: const Text('Zodíaco'),
          titleTextStyle: TextStyle(fontSize: 30, color: Colors.black)),
      drawer: ddrawer(
          context,
          unusedMenuBt(context, Icons.home, 'Início'),
          usedMenuBt(context, '/zgmap', CupertinoIcons.moon_stars_fill,
              'Zodíaco Grego'),
          unusedMenuBt(context, Icons.local_florist_sharp, 'Zodíaco Chinês')),
      endDrawer: drawerFim(context),
      body: Stack(
        children: [
          Container(
            decoration: BoxDecoration(
                image: DecorationImage(
                    image: AssetImage('assets/Recursos/BackGround.png'),
                    fit: BoxFit.cover)),
          ),
          SingleChildScrollView(
            child: Column(
              children: [Mito(context, '', texto)],
            ),
          ),
        ],
      ),
    );
  } //build
}
