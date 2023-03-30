import 'package:apping/const.dart';
import 'package:dart_ping/dart_ping.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class GeradorController extends GetxController {
  //Lista de saida de dados do ping
  String host = 'google.com';
  var outputList = <String>[].obs;
  var variationColor = myGreen.obs;

  void outputPing() async {
    final ping = Ping(host, count: 14, timeout: 2);

    ping.stream.listen((event) {
      outputList.add(event.toString());
    });
  }

  void clearlistView() => outputList.isEmpty ? null : outputList.clear();
  void dropColorBorder() => variationColor.value = myGreenTrans;
}
