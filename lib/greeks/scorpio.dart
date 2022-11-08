import 'package:flutter/material.dart';
import 'package:zodiac_signs/components/alerta.dart';
import 'package:zodiac_signs/components/constantes.dart';

class scorpio_Page extends StatefulWidget {
  @override
  State<scorpio_Page> createState() => _scorpioState();
}

class _scorpioState extends State<scorpio_Page> {
  //Preencher variáveis abaixo
  String vetorFilePng = 'scorpioVetor.png';
  String signo = 'ESCORPIÃO';
  String ordemSigno =
      'oitavo'; //Prencha apenas em numeral EX: quinto, décimo primeiro...
  String datas = '23 de Outubro ~ 21 de Novembro';
  String subTitulo = 'A VINGANÇA';
  String imagemPathPng = 'pluto.png';

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
                'O principal mito de Escorpião é o de Órion, o maior caçador da mitologia grega. \n\nÓrion era filho de Poseidon, deus dos mares, e como semideus, possuía uma força descomunal e um por consequência, um desejo maior ainda.\n\nÓrion tentou então estuprar Ártemis, no entanto, ela conseguiu fugir.\nÁrtemis, querendo vingança, enviou um escorpião gigante para ferir o calcanhar de Órion e mata-lo, e após o feito, a Deusa homenageou o escorpião com a sua própria constelação.'),
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
                        Icons.water_drop_outlined,
                        Titulos.aguaEl,
                        Colors.blueAccent,
                        Titulos.aguaEl,
                        ElementoDescricao.aguaDesc),
                    AlertaImg(
                        context,
                        Titulos.planet,
                        imagemPathPng,
                        Listas.planetas[8],
                        Colors.blueAccent,
                        Listas.planetas[8],
                        'Plutão é tido como um planeta de poder e controle. Na mitologia, Plutão era o Deus do submundo. É por isso que os escorpianos têm uma certa névoa de mistério os envolvendo. Eles são atraídos para coisas escuras e suas emoções são profundas. Toda essa intensidade dada por Plutão faz com que esse nativo capte facilmente as vibrações das pessoas e dos ambientes, dando-lhes um aguçado sexto sentido.'),
                    Alerta(
                        context,
                        Titulos.ass,
                        Icons.brightness_low_outlined,
                        Associacao.fix,
                        Colors.blueAccent,
                        Associacao.fix,
                        AssociacaoDescricao.fixDesc),
                    Container(
                      width: 10,
                    )
                  ],
                ),
                Divider(),
                CombPolar(
                    context,
                    'Touro\nCâncer\nVirgem\nEscorpião\nCapricórnio\nPeixes',
                    Icons.female),
                Divider(),
                Animal(context, 'Escorpião'),
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
                    '► Emocional◄\n'
                    '►Determinado◄\n'
                    '►Ambicioso◄\n'
                    '►Desatento◄\n'
                    '►Leal◄',
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
