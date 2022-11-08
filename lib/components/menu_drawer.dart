import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';

class usedMenuBt extends GestureDetector {
  usedMenuBt(BuildContext context, String rota, IconData icone, String Nome)
      : super(
            onTap: () {
              Get.toNamed(rota);
            },
            child: Padding(
              padding: EdgeInsets.all(8),
              child: Container(
                  decoration: BoxDecoration(
                      border: Border.all(width: 0.5, color: Colors.grey)),
                  width: MediaQuery.of(context).size.width * 0.75,
                  height: 50,
                  padding: EdgeInsets.all(0),
                  child: Row(
                    children: [
                      SizedBox(
                        width: 10,
                      ),
                      FittedBox(
                        fit: BoxFit.fitHeight,
                        child: Icon(icone, color: Colors.white),
                      ),
                      SizedBox(
                        width: 10,
                      ),
                      FittedBox(
                        fit: BoxFit.fitHeight,
                        child: Text(
                          Nome,
                          style: TextStyle(color: Colors.white),
                        ),
                      )
                    ],
                  )),
            ));
}

class usedMenuBtBack extends GestureDetector {
  usedMenuBtBack(BuildContext context, String rota, IconData icone, String Nome)
      : super(
            onTap: () {
              Get.back();
              Get.back();
              Get.back();
            },
            child: Padding(
              padding: EdgeInsets.all(8),
              child: Container(
                  decoration: BoxDecoration(
                      border: Border.all(width: 0.5, color: Colors.grey)),
                  width: MediaQuery.of(context).size.width * 0.75,
                  height: 50,
                  padding: EdgeInsets.all(0),
                  child: Row(
                    children: [
                      SizedBox(
                        width: 10,
                      ),
                      FittedBox(
                        fit: BoxFit.fitHeight,
                        child: Icon(icone, color: Colors.white),
                      ),
                      SizedBox(
                        width: 10,
                      ),
                      FittedBox(
                        fit: BoxFit.fitHeight,
                        child: Text(
                          Nome,
                          style: TextStyle(color: Colors.white),
                        ),
                      )
                    ],
                  )),
            ));
}

class unusedMenuBt extends GestureDetector {
  unusedMenuBt(BuildContext context, IconData icone, String Nome)
      : super(
            onTap: null,
            child: Padding(
              padding: EdgeInsets.all(8),
              child: Container(
                  decoration: BoxDecoration(
                      border: Border.all(width: 0.5, color: Colors.grey)),
                  width: MediaQuery.of(context).size.width * 0.75,
                  height: 50,
                  padding: EdgeInsets.all(0),
                  child: Row(
                    children: [
                      SizedBox(
                        width: 10,
                      ),
                      FittedBox(
                        fit: BoxFit.fitHeight,
                        child: Icon(icone, color: Colors.grey),
                      ),
                      SizedBox(
                        width: 10,
                      ),
                      FittedBox(
                        fit: BoxFit.fitHeight,
                        child: Text(
                          Nome,
                          style: TextStyle(color: Colors.grey),
                        ),
                      )
                    ],
                  )),
            ));
}

class ddrawer extends Drawer {
  ddrawer(BuildContext context, Widget item_1_mbt, Widget item_2_mbt,
      Widget item_3_mbt)
      : super(
            backgroundColor: Color(0xFF2b2b2b),
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: ListView(children: [
                const DrawerHeader(
                    decoration: BoxDecoration(color: Colors.white),
                    child: Center(
                      child: Image(
                          image:
                              AssetImage('assets/Recursos/vector/zchart.png')),
                    )),
                item_1_mbt,
                item_2_mbt,
                item_3_mbt
              ]),
            ));
}

class drawerFim extends Drawer {
  drawerFim(BuildContext context)
      : super(
            backgroundColor: Color(0xFF2b2b2b),
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: ListView(children: [
                GestureDetector(
                    onTap: () {
                      showLicensePage(
                          context: context, applicationName: 'Zodíacos');
                    },
                    child: Padding(
                      padding: EdgeInsets.all(8),
                      child: Container(
                          decoration: BoxDecoration(
                              border:
                                  Border.all(width: 0.5, color: Colors.grey)),
                          width: MediaQuery.of(context).size.width * 0.75,
                          height: 50,
                          padding: EdgeInsets.all(0),
                          child: Row(
                            children: [
                              SizedBox(
                                width: 10,
                              ),
                              FittedBox(
                                fit: BoxFit.fitHeight,
                                child: Icon(Icons.local_police,
                                    color: Colors.white),
                              ),
                              SizedBox(
                                width: 10,
                              ),
                              FittedBox(
                                fit: BoxFit.fitHeight,
                                child: Text(
                                  'Licensas',
                                  style: TextStyle(color: Colors.white),
                                ),
                              )
                            ],
                          )),
                    ))
              ]),
            ));
}

class appBarBase extends AppBar {
  appBarBase(BuildContext context, String titulo)
      : super(
            backgroundColor: Colors.black87,
            title: Text(titulo, style: TextStyle(color: Colors.white)),
            titleTextStyle: TextStyle(fontSize: 25));
}
