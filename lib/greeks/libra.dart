import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:zodiac_signs/components/alerta.dart';
import 'package:zodiac_signs/components/constantes.dart';

class libra_Page extends StatefulWidget {
  @override
  State<libra_Page> createState() => _libraState();
}

class _libraState extends State<libra_Page> {
  //Preencher variáveis abaixo
  String vetorFilePng = 'libraVetor.png';
  String signo = 'LIBRA';
  String ordemSigno =
      'sétimo'; //Prencha apenas em numeral EX: quinto, décimo primeiro...
  String datas = '23 de Setembro ~ 22 de Outubro';
  String subTitulo = 'O EQUILÍBRIO';
  String imagemPathPng = '';

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
                'Segundo a lenda, Têmis, a deusa da Justiça, personificação física da ordem, dos direitos e da lei, filha dos titãs primordiais Urano e Gaia, foi criada pelas moiras, as 3 irmãs deusas primordiais do destino que regem o ciclo de existência de todo o cosmos.\n\nAs moiras a ensinaram tudo sobre a ordem e eventos do universo.O seu simbolo, a balança também foi colocado em uma constelação, até hoje regendo todos os juramentos e justiça sobre os mesmos, onde nem mesmo os deuses do olimpo quebram a lei divina.'),
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
                    Alerta(
                        context,
                        Titulos.planet,
                        Icons.female_outlined,
                        Listas.planetas[1],
                        Colors.lightGreenAccent,
                        Listas.planetas[1],
                        'O planeta Vênus, representado pela deusa da belesa e do amor Afrodite, rege o signo de touro. São pessoas altamente determinadas, sempre em busca do prazer, e dos seus desejos, com sempre a maior força de vontade e perseverança.'),
                    Alerta(
                        context,
                        Titulos.ass,
                        Icons.timeline,
                        Associacao.card,
                        Colors.lightGreenAccent,
                        Associacao.card,
                        AssociacaoDescricao.cardDesc),
                    Container(
                      width: 10,
                    )
                  ],
                ),
                Divider(),
                CombPolar(context, 'Touro\nCâncer\nVirgem\nCapricórnio\nPeixes',
                    Icons.male),
                Divider(),
                Animal(context, 'Balança'),
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
                    '►Idealista◄\n'
                    '►Diplomático◄\n'
                    '►Sincero◄\n'
                    '►Generoso◄\n'
                    '►Lógico◄',
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
