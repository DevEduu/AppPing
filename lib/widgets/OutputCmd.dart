import 'package:apping/const.dart';
import 'package:apping/controller/Gerador.dart';

import 'package:flutter/material.dart';
import 'package:get/get.dart';

class OutputCmd extends StatelessWidget {
  final GeradorController controller;
  OutputCmd({Key? key, required this.controller})
      : super(key: key ?? UniqueKey());

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Column(
        children: [
          Expanded(
            flex: 5,
            child: Container(
              width: 350,
              height: 439,
              padding: const EdgeInsets.all(15),
              margin: const EdgeInsets.symmetric(
                vertical: 34,
              ),
              decoration: BoxDecoration(
                color: bgColorInput,
                borderRadius: BorderRadius.circular(8),
              ),
              child: Obx(
                () => ListView.builder(
                  key: UniqueKey(),
                  itemCount: controller.outputList.length,
                  itemBuilder: (BuildContext context, int index) {
                    return Padding(
                      padding: const EdgeInsets.symmetric(vertical: 3),
                      child: Text(
                        index < controller.outputList.length
                            ? controller.outputList[index]
                            : '',
                        style: outputStyle,
                      ),
                    );
                  },
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
