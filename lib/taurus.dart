import 'package:flutter/material.dart';
import 'package:zodiac_signs/components/alerta.dart';
import 'package:zodiac_signs/components/constantes.dart';

class taurus_Page extends StatefulWidget {
  @override
  State<taurus_Page> createState() => _taurusState();
}

class _taurusState extends State<taurus_Page> {
  //Preencher variáveis abaixo
  String vetorFilePng = 'taurusVetor.png';
  String signo = 'TOURO';
  String ordemSigno =
      'segundo'; //Prencha apenas em numeral EX: quinto, décimo primeiro...
  String datas = '21 de abril ~ 20 de maio';
  String subTitulo = 'A PERSEVERANÇA';
  String imagemPathPng = 'earth.png';

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
            Mito(context, ordemSigno,
                'Na versão mais popular do mito, o grande touro de creta era um dos animais do deus grego maior Poseidon, o enviando para a cidade de Creta, para que o rei Minos o sacrificasse em seu nome.\n\n No entando, o touro era tão majestoso que o rei Minos não teve a coragem para sacrifica-lo.\n O rei então teve a ideia de manter o touro enviado por poseidon vivo, e sacrificaram outro.\n Furioso com a situação, poseidon não apenas colocou a rainha pasífae em transe, fazendo-a acasalar com o touro, iniciando assim a lenda do minotauro, como também enlouqueceu o touro, fazendo-o destruir toda a cidade de creta. Após a sua morte pelo semideus Teseu, uma constelação foi dada ao touro por sua grande e magnífica forma.'),
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
                    Alerta(
                        context,
                        Titulos.planet,
                        Icons.female_outlined,
                        Listas.planetas[1],
                        Colors.brown,
                        Listas.planetas[1],
                        'O planeta Vênus, representado pela deusa da belesa e do amor Afrodite, rege o signo de touro. São pessoas altamente determinadas, sempre em busca do prazer, e dos seus desejos, com sempre a maior força de vontade e perseverança.'),
                    Alerta(
                        context,
                        Titulos.ass,
                        Icons.brightness_low_outlined,
                        Associacao.fix,
                        Colors.brown,
                        Associacao.fix,
                        AssociacaoDescricao.fixDesc),
                    Container(
                      width: 10,
                    )
                  ],
                ),
                Divider(),
                CombPolar(context, 'Câncer\nVirgem\nCapricórnio\nPeixes',
                    Icons.female),
                Divider(),
                Animal(context, 'Touro de Creta'),
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
                    '►Prático◄\n'
                    '►Perseverante◄\n'
                    '►Confiante◄\n'
                    '►Energético◄\n'
                    '►Ambicioso◄',
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
