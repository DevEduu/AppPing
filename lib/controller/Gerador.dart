import 'package:apping/const.dart';
import 'package:apping/pages/History.dart';
import 'package:apping/pages/HomePage.dart';
import 'package:apping/pages/Setting.dart';
import 'package:dart_ping/dart_ping.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class GeradorController extends GetxController {
  // Setting page
  List<int> count = [15, 20, 50];
  List<int> secund = [1, 2, 3];
  RxBool iCheck = true.obs;
  //Lista de saida de dados do ping
  String host = 'google.com';
  var outputList = <String>[].obs;
  var variationColor = myGreen.obs;
  // Configurações do ping
  var selectedCount = 15.obs;
  var selectedInterval = 1.obs;

  // void initialValue() {
  //   selectedCount = count.first.obs;
  //   selectedInterval = secund.first.obs;
  // }

  //variavel do indeci do menu
  RxInt indiceAtual = 1.obs;
  final List<Widget> pages = [
    History(),
    Home(),
    Setting(),
  ];

  void onTabTapped(int index) => indiceAtual.value = index;

  void outputPing() async {
    final ping =
        Ping(host, count: selectedCount.value, timeout: selectedInterval.value);

    ping.stream.listen((event) {
      outputList.add(event.toString());
    });
  }

  void clearlistView() => outputList.isEmpty ? null : outputList.clear();
  void dropColorBorder() => variationColor.value = myGreenTrans;
}
