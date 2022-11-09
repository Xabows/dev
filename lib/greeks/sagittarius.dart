import 'package:flutter/material.dart';
import 'package:zodiac_signs/components/alerta.dart';
import 'package:zodiac_signs/components/constantes.dart';

class sagitarius_Page extends StatefulWidget {
  @override
  State<sagitarius_Page> createState() => _sagitariusState();
}

class _sagitariusState extends State<sagitarius_Page> {
  //Preencher variáveis abaixo
  String vetorFilePng = 'sagiVetor.png';
  String signo = 'SAGITÁRIO';
  String ordemSigno =
      'nono'; //Prencha apenas em numeral EX: quinto, décimo primeiro...
  String datas = '22 de Novembro ~ 21 de Dezembro';
  String subTitulo = 'o Ascendente';
  String imagemPathPng = 'jupter.png';

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
                "Remetendo novamente a lenda de Hércules, a constelação de sagitário é representada pelo centauro semideus quiron, filho do titã Cronos com uma ninfa, o professor dos semideuses, tendo sido tutor tanto de Hércules, como também de aquiles, Jasão, Teseu e outros mais.\n\nApós o terceiro trabalho de hércules, um grupo de centauros bêbados e intoxicados pelo aroma do vinho divino de dionísio acabaram por atacar Hércules e, para se defender, atirou as flechas banhadas no veneno da hidra. No entando uma delas acabou por acertar quiron na coxa, seu antigo mestre. O veneno da hidra é tão poderoso que mata instantâneamente qualquer ser vivo, no entando, Quiron , que era imortal por ser descendente direto de titãs, não morre para o veneno, mas o mesmo ficaria percorrendo sua corrente sanguínea e causando-lhe dores terríveis por toda a eternidade, ja que não existia uma cura para o veneno da hidra. Foi quando então, para ajudar um velho amigo, e livrar-se dessa dor, Quiron decidiu desistir de sua imortalidade e entrega-la ao titã Prometeus, o responsável por levar o fogo a humanidade.\n\nPrometeus então, para honrar o sacrifício de seu amigo, concedeu uma constelação no céu em seu nome."),
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
                        Icons.local_fire_department_outlined,
                        Titulos.fogoEl,
                        Colors.red,
                        Titulos.fogoEl,
                        ElementoDescricao.fogoDesc),
                    AlertaImg(
                        context,
                        Titulos.planet,
                        imagemPathPng,
                        Listas.planetas[4],
                        Colors.red,
                        Listas.planetas[4],
                        "O maior de todos os planetas do nosso sistema solar, o gigante gasoso representado pelo deus grego Zeus, como o maior soberano celeste. Pessoas de jupter prezam muito pela ética e valorizam o conhecimento"),
                    Alerta(
                        context,
                        Titulos.ass,
                        Icons.all_inclusive,
                        Associacao.mut,
                        Colors.red,
                        Associacao.mut,
                        AssociacaoDescricao.mutDesc),
                    Container(
                      width: 10,
                    )
                  ],
                ),
                Divider(),
                CombPolar(
                    context, "Áries\nGêmeos\nLeão\nLibra\nAquário", Icons.male),
                Divider(),
                Animal(context, "Centauro arqueiro"),
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
                    '►Otimísta◄\n'
                    '►Engraçado◄\n'
                    '►Corajoso◄\n'
                    '►Aventureiro◄\n'
                    '►Espontâneo◄',
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
