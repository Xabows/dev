import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';

class Animal extends Container {
  Animal(
    BuildContext context,
    String animalRegente,
  ) : super(
            child: Container(
          height: 70,
          width: 170,
          decoration: BoxDecoration(
              color: Colors.lightGreen.withOpacity(0.4),
              borderRadius: BorderRadius.circular(20),
              border: Border.all(width: 2, color: Colors.white30)),
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Text('Animal', style: TextStyle(color: Colors.white)),
                  SizedBox(
                    height: 2,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Image(
                          image: AssetImage('assets/Recursos/paw.png'),
                          height: 20,
                          color: Colors.white),
                      SizedBox(
                        width: 3,
                      ),
                      Text(
                        animalRegente,
                        style: TextStyle(color: Colors.white),
                      )
                    ],
                  )
                ]),
          ),
        ));
}

class Alerta extends GestureDetector {
  Alerta(BuildContext context, String elePlanAssTit, IconData icone,
      String elePlanAss, Color corFundoQuad, String titulo, String descricao)
      : super(
            onTap: () {
              showDialog(
                  context: (context),
                  builder: (context) => AlertDialog(
                          title: Text(titulo),
                          content: Text(descricao),
                          actions: [
                            TextButton(
                                onPressed: () {
                                  Get.back();
                                },
                                child: const Text(
                                  'Fechar!',
                                  style: TextStyle(
                                      fontSize: 15, color: Colors.black),
                                ))
                          ]));
            },
            child: Container(
              height: 70,
              width: 110,
              decoration: BoxDecoration(
                  color: corFundoQuad.withOpacity(0.4),
                  borderRadius: BorderRadius.circular(20),
                  border: Border.all(width: 2, color: Colors.white30)),
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(elePlanAssTit,
                          style: TextStyle(color: Colors.white)),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Icon(
                            icone,
                            size: 30,
                            color: Colors.white,
                          ),
                          SizedBox(
                            width: 3,
                          ),
                          Text(elePlanAss,
                              style: TextStyle(color: Colors.white))
                        ],
                      )
                    ]),
              ),
            ));
}

class AlertaImg extends GestureDetector {
  AlertaImg(BuildContext context, String elePlanAssTit, String imagemPathPng,
      String elePlanAss, Color corFundoQuad, String titulo, String descricao)
      : super(
            onTap: () {
              showDialog(
                  context: (context),
                  builder: (context) => AlertDialog(
                          title: Text(titulo),
                          content: Text(descricao),
                          actions: [
                            TextButton(
                                onPressed: () {
                                  Get.back();
                                },
                                child: const Text(
                                  'Fechar!',
                                  style: TextStyle(
                                      fontSize: 15, color: Colors.black),
                                ))
                          ]));
            },
            child: Container(
              height: 70,
              width: 110,
              decoration: BoxDecoration(
                  color: corFundoQuad.withOpacity(0.4),
                  borderRadius: BorderRadius.circular(20),
                  border: Border.all(width: 2, color: Colors.white30)),
              child: Padding(
                padding: const EdgeInsets.all(5.0),
                child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(elePlanAssTit,
                          style: TextStyle(color: Colors.white)),
                      Row(
                        children: [
                          Image(
                              image: AssetImage(
                                  'assets/Recursos/alchemy/$imagemPathPng'),
                              height: 32,
                              color: Colors.white),
                          SizedBox(
                            width: 7,
                          ),
                          Text(elePlanAss,
                              style: TextStyle(color: Colors.white))
                        ],
                      )
                    ]),
              ),
            ));
}

class ZodicBox extends GestureDetector {
  ZodicBox(BuildContext context, String rota, String signoImg, String signoNome)
      : super(
            onTap: () {
              Navigator.of(context).pushNamed(rota);
            },
            child: Container(
              height: 98,
              width: MediaQuery.of(context).size.width * 0.28,
              decoration: BoxDecoration(
                  gradient: const LinearGradient(
                    begin: AlignmentDirectional.topStart,
                    end: AlignmentDirectional.bottomEnd,
                    colors: [
                      Colors.white,
                      Colors.transparent,
                      Colors.transparent
                    ],
                  ),
                  borderRadius: BorderRadius.circular(20),
                  border: Border.all(width: 2, color: Colors.white)),
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Image(
                        image: AssetImage('assets/Recursos/$signoImg.png'),
                        height: 60,
                        color: Colors.white,
                      ),
                      FittedBox(
                          child: Text(
                        signoNome,
                        style: TextStyle(color: Colors.white),
                      )),
                    ]),
              ),
            ));
}

class SubTitulo extends Column {
  SubTitulo(
    BuildContext context,
    String vetorFilePng,
    String subTitulo,
    String datas,
  ) : super(
          children: [
            Image(
              image: AssetImage('assets/Recursos/vector/$vetorFilePng'),
              height: 300,
              width: 300,
            ),
            const Divider(),
            Center(
              child: FittedBox(
                child: Container(
                    height: 40,
                    decoration: BoxDecoration(
                        color: Colors.blueAccent,
                        border: Border.all(width: 2),
                        borderRadius: BorderRadius.circular(20)),
                    child: Padding(
                      padding: EdgeInsets.fromLTRB(8, 2, 8, 2),
                      child: FittedBox(
                        child: Text(
                          subTitulo,
                          style: const TextStyle(color: Colors.black),
                        ),
                      ),
                    )),
              ),
            ),
            const Divider(),
            FittedBox(
              fit: BoxFit.fitWidth,
              child: Container(
                width: MediaQuery.of(context).size.width,
                child: FittedBox(
                  child: Text(
                    datas,
                    maxLines: 1,
                    style: const TextStyle(
                      color: Colors.white54,
                    ),
                  ),
                ),
              ),
            ),
            const Divider()
          ],
        );
}

class MapTitulo extends Column {
  MapTitulo(
    BuildContext context,
    String imgOrigem,
    String origem,
  ) : super(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Image(
                    image: AssetImage('assets/Recursos/vector/$imgOrigem.png'),
                    height: 100,
                    color: Colors.white),
                FittedBox(
                  child: Container(
                      height: 90,
                      decoration: BoxDecoration(
                          color: Colors.blueAccent,
                          border: Border.all(width: 2),
                          borderRadius: BorderRadius.circular(40)),
                      child: Padding(
                        padding: EdgeInsets.fromLTRB(10, 8, 8, 8),
                        child: FittedBox(
                          child: Text(
                            'Mapa\n$origem',
                            style: const TextStyle(color: Colors.black),
                          ),
                        ),
                      )),
                ),
              ],
            ),
            const Divider(),
            FittedBox(
              fit: BoxFit.fitWidth,
              child: Container(
                width: MediaQuery.of(context).size.width,
                child: const FittedBox(
                  child: Text(
                    'Clique em um dos signos para acessar suas informações',
                    maxLines: 1,
                    style: TextStyle(
                      color: Colors.white54,
                    ),
                  ),
                ),
              ),
            ),
          ],
        );
}

class Mito extends Container {
  Mito(
    BuildContext context,
    String ordemSigno,
    String mito,
  ) : super(
            child: Container(
          width: MediaQuery.of(context).size.width,
          decoration: BoxDecoration(
              border: Border.all(width: 2),
              borderRadius: BorderRadius.circular(20),
              gradient: const LinearGradient(
                colors: [
                  Colors.white,
                  Colors.white10,
                  Colors.white10,
                  Colors.white10,
                  Colors.white10,
                  Colors.white54
                ],
                begin: Alignment.topLeft,
                end: Alignment.bottomRight,
              )),
          child: Center(
            child: Text(
                '\n\nO $ordemSigno signo do zodíaco Grego.\n\n$mito\n\n',
                textAlign: TextAlign.center,
                style: const TextStyle(
                    color: Colors.lightBlue, fontSize: 20)), //ORIGEM!!!!!!!!
          ),
        ));
}

class CombPolar extends Row {
  CombPolar(
    BuildContext context,
    String combinaCom,
    IconData polaridade,
  ) : super(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
          Container(
            width: 10,
          ),
          GestureDetector(
              onTap: () {
                showDialog(
                    context: (context),
                    builder: (context) => AlertDialog(
                            title: const Text('Combinação'),
                            content: Text('Combina com:\n$combinaCom'),
                            actions: [
                              TextButton(
                                  onPressed: () {
                                    Get.back();
                                  },
                                  child: const Text(
                                    'Fechar!',
                                    style: TextStyle(
                                        fontSize: 15, color: Colors.black),
                                  ))
                            ]));
              },
              child: Container(
                height: 70,
                width: 110,
                decoration: BoxDecoration(
                    color: Colors.deepPurple[400]?.withOpacity(0.4),
                    borderRadius: BorderRadius.circular(20),
                    border: Border.all(width: 2, color: Colors.white30)),
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: const [
                        Text('Combinação',
                            style: TextStyle(color: Colors.white)),
                        SizedBox(
                          height: 8,
                        ),
                        Icon(
                          Icons.sync,
                          color: Colors.white,
                        )
                      ]),
                ),
              )),
          GestureDetector(
              onTap: () {
                showDialog(
                    context: (context),
                    builder: (context) => AlertDialog(
                            title: const Text('Polaridade'),
                            content: const Text('Assim como o Yin e Yang, '
                                'masculino e feminino, positivo e negativo, '
                                'a polaridade se refere ao caráter transcendente '
                                'masculino e iminênte feminino.'),
                            actions: [
                              TextButton(
                                  onPressed: () {
                                    Get.back();
                                  },
                                  child: Text(
                                    'Fechar!',
                                    style: TextStyle(
                                        fontSize: 15, color: Colors.black),
                                  ))
                            ]));
              },
              child: Container(
                height: 70,
                width: 110,
                decoration: BoxDecoration(
                    color: Colors.deepPurple[400]?.withOpacity(0.4),
                    borderRadius: BorderRadius.circular(20),
                    border: Border.all(width: 2, color: Colors.white30)),
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text('Polaridade',
                            style: TextStyle(color: Colors.white)),
                        SizedBox(
                          height: 8,
                        ),
                        Icon(
                          polaridade,
                          color: Colors.white,
                        )
                      ]),
                ),
              )),
          Container(
            width: 10,
          )
        ]);
}
