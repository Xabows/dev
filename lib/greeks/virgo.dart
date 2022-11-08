import 'package:flutter/material.dart';
import 'package:zodiac_signs/components/alerta.dart';
import 'package:zodiac_signs/components/constantes.dart';

class virgo_Page extends StatefulWidget {
  const virgo_Page({super.key});

  @override
  State<virgo_Page> createState() => _virgoState();
}

class _virgoState extends State<virgo_Page> {
  //Preencher variáveis abaixo
  String vetorFilePng = 'virgoVetor.png';
  String signo = 'VIRGEM';
  String ordemSigno =
      'sexto'; //Prencha apenas em numeral EX: quinto, décimo primeiro...
  String datas = '23 de Agosto ~ 22 de Setembro';
  String subTitulo = 'O ÁRBITRO';
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
                "Filha de Cronos e Réia, Deméter é a deusa grega da colheita, estações do ano e da fertilidade. Certa vez, ela gerou uma filha com Zeus chamada Perséfone. E, um dia, essa criança estava brincando nas floretas junto com as ninfas e suas tias. \n\nHades, seu tio e guardião do submundo, resolveu raptá-la, e levou-a ao mundo dos mortos. Como consequência do sequestro, toda a terra secou e Deméter ficou desesperada. Foi então que ela decidiu recorrer à Zeus, o qual foi até o submundo tentar um acordo com Hades. \n\nO que ele conseguiu não foi muito: Perséfone poderia ficar ao lado de sua mãe por seis meses, mas os outros seis deveriam ser vividos junto de seu marido no mundo subterrâneo. \n\nDe acordo com o mito, esta seria a causa de metade do ano termos a terra fértil e a outra metade seca e estéril."),
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
                        Icons.landscape_outlined,
                        Titulos.terraEl,
                        Colors.brown,
                        Titulos.terraEl,
                        ElementoDescricao.terraDesc),
                    AlertaImg(
                        context,
                        Titulos.planet,
                        imagemPathPng,
                        Listas.planetas[0],
                        Colors.brown,
                        Listas.planetas[0],
                        "Mercúrio também rege Virgem. Com esta combinação temos o planeta como fonte de análise. É o olhar observador, a expressão pragmática e objetiva. São pessoas que sabem analisar as coisas, preferem observar antes de falar, mesmo que a cabeça esteja a mil, atenta aos detalhes. São práticas e falam sem rodeios. É importante cuidar da ansiedade, pois se cobram muito em tudo que fazem."),
                    Alerta(
                        context,
                        Titulos.ass,
                        Icons.all_inclusive,
                        Associacao.mut,
                        Colors.brown,
                        Associacao.mut,
                        AssociacaoDescricao.mutDesc),
                    Container(
                      width: 10,
                    )
                  ],
                ),
                Divider(),
                CombPolar(context, "Touro\nVirgem\nLibra\nCapricórnio\nPeixes",
                    Icons.female),
                Divider(),
                Animal(context, "Deusa virgem"),
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
                    '► Sensível◄\n'
                    '► Tranquilo◄\n'
                    '► Fácil◄\n'
                    '► Caloroso◄\n'
                    '► Inteligente◄',
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
