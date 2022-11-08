import 'package:flutter/material.dart';
import 'package:zodiac_signs/components/alerta.dart';
import 'package:zodiac_signs/components/constantes.dart';

class aries_Page extends StatefulWidget {
  @override
  State<aries_Page> createState() => _ariesState();
}

class _ariesState extends State<aries_Page> {
  //Preencher variáveis abaixo
  String vetorFilePng = 'ariesVetor.png';
  String signo = 'ARIES';
  String ordemSigno =
      'primeiro'; //Prencha apenas em numeral EX: quinto, décimo primeiro...
  String datas = '21 de Março ~ 20 de Abril';
  String subTitulo = 'O AGRÁRIO';
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
            Mito(
                context,
                ordemSigno,
                'De acordo com a lenda mais famosa, outrora houve um jovem '
                'chamado Frixo e uma dama chama Helle, ambos filhos do primeiro '
                'casamento do rei grego Atamas.\n'
                'Sua madrasta, por estar sentindo ciúmes de seus enteados, '
                'propositalmente fez com que uma região da Grécia passasse fome, '
                'e então falsificou uma mensagem do oraculo de Delfos, informando '
                'que a fome apenas cessaria com o sacrifício de Frixo aos deuses.'
                'Aceitando o destino, o rei Atamas decidiu cumprir a falsa profecia.\n\n'
                'No entanto, quando estava prestes sacrificar seu filho, Crisómalos, '
                'filho de Hermes com a ninfa Teófana, um carneiro cuja lã era feita de '
                'ouro e que conseguia voar, secretamente enviado por sua mãe, apareceu '
                'para salvar as crianças. Montando então no carneiro, Frixo e Helle '
                'conseguiram fugir do destino. No entanto, Helle caiu do carneiro enquanto '
                'sobrevoavam o mar, morrendo afogada nas profundezas. Chegando em Cólquida a salvo, '
                'o jovem Frixo , agradecido, sacrificou o carneiro em nome de Zeus. Sua lã dourada, '
                'chamada então de velo de ouro, foi retirada e oferecida no pomar dedicado ao deus ARES.'),
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
                    Alerta(
                        context,
                        Titulos.planet,
                        Icons.male,
                        Listas.planetas[3],
                        Colors.red,
                        Listas.planetas[3],
                        'O planeta marte representa força bruta, enería e conquistação por ser regido pelo deus grego da guerra ARES.'),
                    Alerta(
                        context,
                        Titulos.ass,
                        Icons.timeline,
                        Associacao.card,
                        Colors.red,
                        Associacao.card,
                        AssociacaoDescricao.cardDesc),
                    Container(
                      width: 10,
                    )
                  ],
                ),
                Divider(),
                CombPolar(
                    context, 'Gêmeos \nLeão \nSagitário \nAquário', Icons.male),
                Divider(),
                Animal(context, 'Carneiro'),
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
                    '►Bravo◄\n'
                    '►Corajoso◄\n'
                    '►Produtivo◄\n'
                    '►Autruísta◄\n'
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
