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
            Mito(context, ordemSigno,
                'O mito de gêmeos começa quando Leda, esposa do rei Tíndaro de Esparta, foi se banhar em um rio, então Zeus, senhor supremo do olímpo se apaixonou por ela.\n\n Para se aproximar de Leda, Zeus se transformou no mais magnífico e belo dos cisnes. \nNo mesmo dia que zeus possuiu Leda, ela voltou para casa e se deitou com seu marido, e ela engravidou de 4 filhos, Castor e Clitemnestra, filhos de Tíndaro, e Helena e Pollux, filhos de Zeus. Até então, não se sabia que 2 de seus 4 filhos eram na realidade semideus, e apesar de serem de pais diferentes, Castor e Pollux eram idênticos em aparência, sendo acossiados como gêmeos. Ambos se tornaram corajosos e excepcionais guerreiros, e faziam parte dos membros dos argonautas. Em uma de suas viagens, os irmãos batalharam com outro par de gêmeos, umas histórias dizendo que era em nome de damas, outras dizendo que fora por causa de alimento, no entanto, ambas tiveram o mesmo fim.\n\n Castor perdeu sua vida na batalha.\n Pollux, desesperado, tenta se matar, mas não consegue e descobre sua imortalidade, don proveniente de sua parte divina.\n\n Pollux suplicou a Zeus para que ele pudesse compartilhar sua imortalidade com seu irmão, para que ele pudesse voltar a vida. No entanto, nem Zeus poderia tirar alguma alma do submundo para sempre, então determinou que todos os dias os irmãos inverteriam de lugar, enquanto um estava no submundo, o outro disfrutaria da imortalidade na terra.\n\nAinda comovido pelo amor de seus irmãos, os gêmeos receberam a honra de serem imortalizados no céu como a constelação de Gêmeos.'),
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
                        'Aqui, temos a rica forma de expressar o que sentimos e o que queremos. Geralmente são pessoas ávidas por todo tipo de conhecimento, seja um estudo filosófico ou um novo jogo de videogame, por exemplo. São curiosas, comunicativas, têm um raciocínio rápido. Se interessam pelo que o outro pensa e também respeitam as mais diversas opiniões.'),
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
