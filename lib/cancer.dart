import 'package:flutter/material.dart';
import 'package:zodiac_signs/components/alerta.dart';
import 'package:zodiac_signs/components/constantes.dart';

class cancer_Page extends StatefulWidget {
  @override
  State<cancer_Page> createState() => _cancerState();
}

class _cancerState extends State<cancer_Page> {
  //Preencher variáveis abaixo
  String vetorFilePng = 'cancerVetor.png';
  String signo = 'CANCER';
  String ordemSigno =
      'quarto'; //Prencha apenas em numeral EX: quinto, décimo primeiro...
  String datas = '21 de Junho ~ 22 de Julho';
  String subTitulo = 'O sombrio';
  String imagemPathPng = 'moon.png';

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
                'De acordo com as histórias, durante o segundo trabalho do semideus Hércules, foi ordenado para que ele matasse a Hydra de Lerna, uma monstruosidade com várias cabeças de serpente que quando uma é cortada, duas nascem no lugar, que vivia no pântano de Lerna.\n\n Durante a árdua batalha, um carangueijo surgiu do pântano e decidiu atavar o pé de Hércules.\n\nNo entando, Hércules o esmagou com uma forte pisada.\n\n Então a deusa Hera, que odiava Hércules, decidiu honrar os esforços do carangueijo, concedendo a ele a sua própria constelação.\n\n'),
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
                        Listas.planetas[10],
                        Colors.blueAccent,
                        Listas.planetas[10],
                        'Costumam ser pessoas muito ligadas ao passado e às memórias, valorizam as relações familiares e gostam de cuidar dos outros. São indivíduos muito sensíveis, empáticos e acolhedores e também precisam ser acolhidos, caso contrário, podem ficar magoados.'),
                    Alerta(
                        context,
                        Titulos.ass,
                        Icons.timeline,
                        Associacao.card,
                        Colors.blueAccent,
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
                    "Touro \nCâncer \nVirgem \nEscorpião \nCapricórnio \nPeixes",
                    Icons.male),
                Divider(),
                Animal(context, 'Carangueijo'),
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
                    '► Inteligente◄\n'
                    '►Astuto◄\n'
                    '►Racional◄\n'
                    '►Determinado◄\n'
                    '►Paciente◄',
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
