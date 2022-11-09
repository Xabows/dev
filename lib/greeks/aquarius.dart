import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:zodiac_signs/components/alerta.dart';
import 'package:zodiac_signs/components/constantes.dart';

class aqua_Page extends StatefulWidget {
  @override
  State<aqua_Page> createState() => _aquaState();
}

class _aquaState extends State<aqua_Page> {
  //Preencher variáveis abaixo
  String vetorFilePng = 'aquariusVetor.png';
  String signo = 'AQUÁRIO';
  String ordemSigno =
      'décimo primeiro'; //Prencha apenas em numeral EX: quinto, décimo primeiro...
  String datas = '20 de Janeiro ~ 19 de Fevereiro';
  String subTitulo = 'O belo';
  String imagemPathPng = 'uranus.png';

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
                "A lenda mais famosa conhecida de aquário, envolve um jovem chamado Ganymedes, terceiro filho do rei Tros, fundador de Troia.\n\nAs histórias descrevem Ganymedes como sendo o rapaz mais belo do mundo, e um dia, quando estava atrás de uma ovelha de seu pai que havia fugido, consequentemente atraiu os olhos de Zeus, que então tomou a forma de uma grande água e sequestrou Ganymedes.\n\nO jovem recebeu de Zeus a graça da joventude eterna e imortalidade para que ele para sempre fosse o portador do vinho e do elixir dos deuses, servindo-os sempre através de sua urna dourada.\n\n Após algum tempo mantendo relações com o jovem, Zeus concedeu a consetalção de aquário no céu como honraria."),
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
                        Listas.planetas[6],
                        Colors.lightGreenAccent,
                        Listas.planetas[6],
                        "Urano, o planeta gasoso quéna mitologia é deus primordial que junto com Gaia gerou os primeiros titãs, formando todo o arco celeste, por ser a personificação do céu, pessoas regidas por esse planeta possuem traços de rebeldia, originalidade e criatividade, procurando sempre uma forma mais desapegada de viver a vida."),
                    Alerta(
                        context,
                        Titulos.ass,
                        Icons.brightness_low_outlined,
                        Associacao.fix,
                        Colors.lightGreenAccent,
                        Associacao.fix,
                        AssociacaoDescricao.fixDesc),
                    Container(
                      width: 10,
                    )
                  ],
                ),
                Divider(),
                CombPolar(
                    context, "Áries\nGêmeos\nLeão\nLibra\nAquário", Icons.male),
                Divider(),
                Animal(context, "A urna d'água"),
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
                    '►Generoso◄\n'
                    '►Independênte◄\n'
                    '►Lógico◄\n'
                    '►Confiável◄\n'
                    '►Aleatório◄',
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
