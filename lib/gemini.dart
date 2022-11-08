import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:zodiac_signs/components/alerta.dart';
import 'package:zodiac_signs/components/constantes.dart';

class gemini_Page extends StatefulWidget {
  @override
  State<gemini_Page> createState() => _geminiState();
}

class _geminiState extends State<gemini_Page> {
  //Preencher variáveis abaixo
  String vetorFilePng = 'geminiVetor.png';
  String signo = 'GÊMEOS';
  String ordemSigno =
      'terceiro'; //Prencha apenas em numeral EX: quinto, décimo primeiro...
  String datas = '21 de Maio ~ 20 de Junho';
  String subTitulo = 'O Imortal';
  String imagemPathPng = 'mercury.png';

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
            Mito(context, ordemSigno, 'mito'),
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
                        CupertinoIcons.wind,
                        Titulos.arEl,
                        Colors.lightGreenAccent,
                        Titulos.arEl,
                        ElementoDescricao.arDesc),
                    AlertaImg(
                        context,
                        Titulos.planet,
                        imagemPathPng,
                        Listas.planetas[0],
                        Colors.lightGreenAccent,
                        Listas.planetas[0],
                        'descricao'),
                    Alerta(
                        context,
                        Titulos.ass,
                        Icons.all_inclusive,
                        Associacao.mut,
                        Colors.lightGreenAccent,
                        Associacao.mut,
                        AssociacaoDescricao.mutDesc),
                    Container(
                      width: 10,
                    )
                  ],
                ),
                Divider(),
                CombPolar(context, 'Libra\nAuário\nAries\nLeão\nSagitário',
                    Icons.male),
                Divider(),
                Animal(context, 'Gêmeos imortais'),
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
                    '►Curioso◄\n'
                    '►Independente◄\n'
                    '►Expressivo◄\n'
                    '►Sociável◄\n'
                    '►Astuto◄',
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
