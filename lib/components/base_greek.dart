/*import 'package:flutter/material.dart';
import 'package:zodiac_signs/components/alerta.dart';
import 'package:zodiac_signs/components/constantes.dart';

class _Page extends StatefulWidget {
  @override
  State<_Page> createState() => _State();
}

class _State extends State<_Page> {
  //Preencher variáveis abaixo
  String vetorFilePng = '';
  String signo = '';
  String ordemSigno = 'quarto'; //Prencha apenas em numeral EX: quinto, décimo primeiro...
  String datas = '';
  String subTitulo = '';
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
            SubTitulo(),
            Mito(),
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
            SubTitulo,
            Divider(),
            Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Container(
                      width: 10,
                    ),
                    Alerta(),
                    AlertaImg(),
                    Alerta(),
                    Container(
                      width: 10,
                    )
                  ],
                ),
                Divider(),
                CombPolar(),
                Divider(),
                Animal(),
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
            SubTitulo(),
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
              icon: Icon(Icons.home_filled),
              label: 'Orígem'),
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
*/
