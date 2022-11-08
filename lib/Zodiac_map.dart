import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:zodiac_signs/components/alerta.dart';
import 'package:zodiac_signs/home.dart';

class zodiac_map extends StatelessWidget {
  zodiac_map({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          backgroundColor: Colors.black87,
          title: Text('Mapa do Zodiaco Grego',style: TextStyle(color: Colors.white)),
          titleTextStyle: TextStyle(fontSize: 25)),
      body: Container(
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
             ZodicBox(context, '/gemini', 'gemini', 'GÊMEOS')],
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
      ),
      drawer: Drawer(backgroundColor: Color(0xFF2b2b2b),
          child: Column(
        children: [
          const SizedBox(
            height: 80,
          ),
          Row(
            children: [
              IconButton(
                  onPressed: () {
                    Navigator.of(context).pop();
                    Navigator.of(context).pop();
                  },
                  icon: Icon(Icons.home_rounded, size: 40)),
              Text(
                'Home Page',
                style: TextStyle(fontSize: 25),
              ),
            ],
          ),
          SizedBox(
            height: 80,
          ),
          Row(children: [
            IconButton(
                onPressed: null,
                icon: Icon(
                  Icons.star_border_rounded,
                  size: 40,
                )),
            Text(
              'Mapa do zodiaco',
              style: TextStyle(fontSize: 25),
            )
          ]),
        ],
      )),
    );
  }
}
