import 'package:flutter/material.dart';
import 'package:zodiac_signs/components/alerta.dart';
import 'package:zodiac_signs/components/constantes.dart';

class capri_Page extends StatefulWidget {
  @override
  State<capri_Page> createState() => _capriState();
}

class _capriState extends State<capri_Page> {
  //Preencher variáveis abaixo
  String vetorFilePng = 'capriVetor.png';
  String signo = 'CAPRICÓRNIO';
  String ordemSigno =
      'décimo'; //Prencha apenas em numeral EX: quinto, décimo primeiro...
  String datas = '22 de Dezembro ~ 20 de Janeiro';
  String subTitulo = 'O HÍBRIDO';
  String imagemPathPng = 'saturn.png';

  //Não preencher variável abaixo
  int indexBase = 0;

  void onIndexChange() {}
  @override
  Widget build(BuildContext context) {
    final telas = [
      Stack(children: [
        Container(
          decoration: const BoxDecoration(
              image: DecorationImage(
                  image: AssetImage('assets/Recursos/BackGround.png'),
                  fit: BoxFit.cover)),
        ),
        SingleChildScrollView(
          child: Column(children: [
            SubTitulo(context, vetorFilePng, subTitulo, datas),
            Mito(
                context,
                ordemSigno,
                'A origem real do símbolo de capricórnio remete ao mito da criação babilônico, '
                'no entanto, os gregos decidiram criar uma história. \n\n'
                'Na luta dos Deuses olimpianos contra o titã rei dos monstros Tifão'
                ', \nPan, o deus grego dos bosques, dos campos e dos rebanhos, deu a ideia de que os '
                'olimpianos tomassem formas de animais para fugir, já que eles não teriam força para '
                'batalhar contra o titã. \n\nPan então tomou a forma de meio cabra meio peixe, transformando '
                'apenas as suas partes inferiores em peixe para fugir pelas águas. \nNo entanto, Zeus ficou para lutar.'
                'O titã retirou os tendões dos pés e das mãos de Zeus, o deixando incapacitado para lutar.'
                '\n\nEntão que Pan retornou com Hermes para roubar os tendões de Zeus de volta e devolver para ele, '
                'a fim de que ele continuasse a luta e enfim derrotasse o monstro. \n\nEm agradecimento a tal feito, '
                'Zeus concedeu uma constelação ao deus Pan, sendo a constelação de capricórnio.\n\n'),
          ]),
        ) //Background
      ]), //Origem
      Stack(children: [
        Container(
          decoration: const BoxDecoration(
              image: DecorationImage(
                  image: AssetImage('assets/Recursos/BackGround.png'),
                  fit: BoxFit.cover)),
        ),
        SingleChildScrollView(
          child: Column(children: [
            SubTitulo(context, vetorFilePng, subTitulo, datas),
            Divider(),
            Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Container(
                      width: 10,
                    ),
                    Alerta(
                        context,
                        Titulos.elem,
                        Icons.terrain_outlined,
                        Titulos.terraEl,
                        Colors.brown,
                        Titulos.terraEl,
                        ElementoDescricao.terraDesc),
                    AlertaImg(
                        context,
                        Titulos.planet,
                        imagemPathPng,
                        Listas.planetas[4],
                        Colors.brown,
                        Listas.planetas[4],
                        'Saturno está associado a regenração,'
                        'renascimento a riquesa e a abundancia, '
                        'pois representa o lider de todos os titãs gregos, '
                        'Cronos o titã regente do tempo.'),
                    Alerta(
                        context,
                        Titulos.ass,
                        Icons.timeline,
                        Associacao.card,
                        Colors.brown,
                        Associacao.card,
                        AssociacaoDescricao.cardDesc),
                    Container(
                      width: 10,
                    )
                  ],
                ),
                Divider(),
                CombPolar(
                    context,
                    'Touro\n\nCâncer\n\nVirgem\n\nEscorpião\n\nPeixes',
                    Icons.female),
                Divider(),
                Animal(context, 'Híbrido de cabra com peixe'),
                Divider(),
              ],
            )
          ]),
        ) //Background
      ]), //Características
      Stack(children: [
        Container(
          decoration: const BoxDecoration(
              image: DecorationImage(
                  image: AssetImage('assets/Recursos/BackGround.png'),
                  fit: BoxFit.cover)),
        ),
        SingleChildScrollView(
          child: Column(children: [
            SubTitulo(context, vetorFilePng, subTitulo, datas),
            const Divider(),
            Container(
              margin: EdgeInsets.all(20),
              width: 330,
              height: 220,
              decoration: BoxDecoration(
                  color: Colors.pink[200],
                  border: Border.all(width: 3, color: Colors.white),
                  borderRadius: BorderRadius.circular(30)),
              child: const Center(
                child: Text(
                    textAlign: TextAlign.center,
                    '► Auto disciplinado◄\n'
                    '► Perseverante◄\n'
                    '► Estóico◄\n'
                    '► Determinado◄\n'
                    '► Sério◄',
                    style: TextStyle(color: Colors.black, fontSize: 20)),
              ),
            )
          ]),
        ) //Background
      ]), //personalidade
    ];

    return Scaffold(
      appBar: AppBar(
          backgroundColor: Color(0xFF2b2b2b),
          title: Text(signo, textAlign: TextAlign.center),
          titleTextStyle: TextStyle(fontSize: 30, color: Colors.white)),
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
                icon: Icon(Icons.favorite),
                label: 'Características',
                backgroundColor: Colors.blueAccent),
            BottomNavigationBarItem(
                icon: Icon(Icons.people_alt_rounded),
                label: 'Personalidade',
                backgroundColor: Colors.deepPurple)
          ]),
    );
  }
}
