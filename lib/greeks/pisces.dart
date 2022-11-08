import 'package:flutter/material.dart';
import 'package:zodiac_signs/components/alerta.dart';
import 'package:zodiac_signs/components/constantes.dart';

class Pisces_Page extends StatefulWidget {
  @override
  State<Pisces_Page> createState() => _piscesState();
}

class _piscesState extends State<Pisces_Page> {
  //Preencher variáveis abaixo
  String vetorFilePng = 'piscesVetor.png';
  String signo = 'PEIXES';
  String ordemSigno =
      'último'; //Prencha apenas em numeral EX: quinto, décimo primeiro...
  String datas = '20 de Fevereiro ~ 20 de Março';
  String subTitulo = 'O místico';
  String imagemPathPng = 'neptune.png';

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
                'De acordo com o mito, Na fuga dos olimpianos '
                'contra Tifão, Pan, o deus grego dos bosques, '
                'dos campos e dos rebanhos, deu a ideia de que os olimpianos '
                'tomassem formas de animais para fugir, já que eles não teriam '
                'força para batalhar contra o titã.'
                '\n\nFoi então que Afrodite, a deusa da beleza, juntamente com seu '
                'filho Eros pediram ajuda as ninfas da água, e eles '
                'então se transformaram em 2 peixes e fugiram através das '
                'águas do monstro Tifão. \nQuem imortalizou sua '
                'esperteza no céu foi a Deusa Atena. \nConcedendo a constelação de peixes no céu.'),
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
                        Listas.planetas[7],
                        Colors.blueAccent,
                        Listas.planetas[7],
                        'Representado pelo Deus grego dos mares, Poseidon. As qualidades do planeta são intensificadas e valores como a empatia, intuição, solidariedade e compaixão podem ganhar força. Essa é uma geração mais aberta a demonstrar sentimentos, liberar a criatividade e viver para realizar seus sonhos. A busca por uma maior espiritualidade e conexão com algo que vai além do palpável se faz muito presente.'),
                    Alerta(
                        context,
                        Titulos.ass,
                        Icons.all_inclusive,
                        Associacao.mut,
                        Colors.blueAccent,
                        Associacao.mut,
                        AssociacaoDescricao.mutDesc),
                    Container(
                      width: 10,
                    )
                  ],
                ),
                Divider(),
                CombPolar(
                    context,
                    'Gêmeos\nVirgem\nCâncer\nCapricórnio\nPeixes',
                    Icons.female),
                Divider(),
                Animal(context, 'Peixes'),
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
