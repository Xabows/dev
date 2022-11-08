import 'package:flutter/material.dart';
import 'package:zodiac_signs/components/alerta.dart';
import 'package:zodiac_signs/components/constantes.dart';

class leo_Page extends StatefulWidget {
  @override
  State<leo_Page> createState() => _leoState();
}

class _leoState extends State<leo_Page> {
  //Preencher variáveis abaixo
  String vetorFilePng = 'leoVetor.png';
  String signo = 'LEÃO';
  String ordemSigno =
      'quinto'; //Prencha apenas em numeral EX: quinto, décimo primeiro...
  String datas = '22 de Julho ~ 22 de Agosto';
  String subTitulo = 'O VERÃO';
  String imagemPathPng = 'sun.png';

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
                "O mito da constelação de leão tem relação com o primeiro trabalho de Hércules. Quando a deusa da loucura Lissa, através do pedido de Hera, enlouquecêu hércules, ele matou em transe assassinou sua esposa e filhos enquanto dormia. \nCom remorso do ocorrido, Hércules se consultou com o oráculo de delfos, a pedido de conselhos, e sua ordem de redenção era realizar os trabalhos do rei Euristeu.\n\n Manipulado pela deusa Hera,que odiava Hércules, Euristeu passou como primeiro trabalho um serviço praticamente impossível para uma mortal, matar o leão de neméia e trazer uma prova de sua conquista.\n\n Após a árdua luta com o Leão de neméia, um animal enorme com pele impenetrável, filho do rei dos monstros, o titã Tifão, Hércules o venceu estrangulando-o. Com orgulho de seu filho, Zeus honrou sua vitória colocando a constlação de leão no arco celeste.")
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
                        Listas.planetas[9],
                        Colors.red,
                        Listas.planetas[9],
                        "O sol, a estrela principal de nosso sistema solar, que pulsa a energia e que rege toda a vida existente em nosso planeta se ajusta com o signo de leão, como o rei da selva. Ele representa o impulso pela sensação de realeza, ego e criatividade. Fazendo sempre o que quer, com o sentimento de dominância e liderança, possui um grande magnetismo sobre todos os outros signos com seu carísma e vitalidade."),
                    Alerta(
                        context,
                        Titulos.ass,
                        Icons.brightness_low_outlined,
                        Associacao.fix,
                        Colors.red,
                        Associacao.fix,
                        AssociacaoDescricao.fixDesc),
                    Container(
                      width: 10,
                    )
                  ],
                ),
                Divider(),
                CombPolar(context, "Áries\nGêmeos\nLibra\nSagitário\nAquário",
                    Icons.male),
                Divider(),
                Animal(context, "Leão"),
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
                    '►Dinâmico◄\n'
                    '►Confiante◄\n'
                    '►Carismático◄\n'
                    '►Ambicioso◄\n'
                    '►Decisivo◄',
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
