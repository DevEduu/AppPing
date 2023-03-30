import 'package:apping/const.dart';
import 'package:apping/controller/Gerador.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class CustonInputFormField extends StatelessWidget {
  GeradorController controller;

  CustonInputFormField({Key? key, required this.controller}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 24),
      child: Obx(
        () => Container(
          decoration: BoxDecoration(
            color: bgColorInput,
            borderRadius: const BorderRadius.all(
              Radius.circular(100),
            ),
            border: Border.all(
              style: BorderStyle.solid,
              color: controller.variationColor.value,
              width: 3,
            ),
          ),
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 22),
            child: Form(
              child: Theme(
                data: inputBordeColors,
                child: TextFormField(
                  keyboardType: TextInputType.url,
                  onTap: () => controller.variationColor.value = myGreen,
                  initialValue: controller.host,
                  onChanged: (value) => controller.host = value,
                  style: contentStyleinput,
                  decoration: InputDecoration(
                    border: InputBorder.none,
                    icon: Icon(
                      Icons.dns,
                      color: myGreen,
                    ),
                    labelText: 'host:',
                    hintText: 'localhost ',
                  ),
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
