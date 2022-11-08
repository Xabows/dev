import 'package:flutter/material.dart';

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
      drawer: Drawer(
          child: Column(
        children: [
          const SizedBox(height: 80),
          Row(
            children: [
              IconButton(
                  onPressed: null, icon: Icon(Icons.home_rounded, size: 40)),
              Text(
                'Home Page',
                style: TextStyle(fontSize: 25),
              ),
            ],
          ), //Home
          const SizedBox(
            height: 80,
          ),
          Row(children: [
            IconButton(
              onPressed: () {
                Navigator.of(context).pop();
                Navigator.of(context).pushNamed('/map');
              },
              icon: Image(image: AssetImage('assets/Recursos/Crescent.png')),
            ),
            Text(
              'Zodiaco Grego',
              style: TextStyle(fontSize: 25),
            )
          ]),
          TextButton(onPressed: () {showLicensePage(context: context,applicationName: 'Zodíacos');}, child: Text('Licensas!'))//Zodiac
        ],
      )),
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
              children: [
                Text(
                  texto,
                  textAlign: TextAlign.center,
                  style: TextStyle(fontSize: 20, color: Colors.yellow),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  } //build
}
