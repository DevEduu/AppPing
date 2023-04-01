import 'package:apping/const.dart';
import 'package:apping/controller/Gerador.dart';

import 'package:flutter/material.dart';
import 'package:get/get.dart';

final GeradorController config = Get.put(GeradorController());

class Setting extends StatelessWidget {
  Setting({super.key});

  @override
  Widget build(BuildContext context) {
    Color getColor(Set<MaterialState> states) {
      const Set<MaterialState> interactiveStates = <MaterialState>{
        MaterialState.pressed,
        MaterialState.hovered,
        MaterialState.focused,
      };
      if (states.any(interactiveStates.contains)) {
        return myGreen;
      }
      return myGreen;
    }

    return Scaffold(
      backgroundColor: bgColorScafold,
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        centerTitle: true,
        shadowColor: Colors.transparent,
        title: Text(
          'Setting',
          style: TextStyle(color: myGreen),
        ),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Column(
              children: [
                Container(
                  width: 320,
                  child: Text(
                    'Ping preference',
                    textAlign: TextAlign.left,
                    style: TextStyle(
                      color: myWhite,
                      fontWeight: FontWeight.bold,
                      fontSize: 18,
                    ),
                  ),
                ),
                Container(
                  margin: EdgeInsets.symmetric(vertical: 12),
                  padding: EdgeInsets.all(20),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(8),
                    border: Border.all(color: myBordeBox, width: 2),
                  ),
                  width: 320,
                  child: Obx(
                    () => Column(
                      children: [
                        Row(
                          children: [
                            SizedBox(
                              width: 100,
                              child: DropdownButtonFormField(
                                decoration: InputDecoration(
                                    border: InputBorder.none,
                                    label: Text(
                                      'Count Ping',
                                      style: textSecudary,
                                    ),
                                    enabledBorder: OutlineInputBorder(
                                        borderRadius: BorderRadius.circular(12),
                                        borderSide: BorderSide(
                                          width: 3,
                                          color: myGreen,
                                        ))),
                                value: config.selectedCount.value,
                                onChanged: (int? item) {
                                  config.selectedCount.value = item!;
                                },
                                items: config.count
                                    .map<DropdownMenuItem<int>>((int item) {
                                  return DropdownMenuItem<int>(
                                    value: item,
                                    child: Text(
                                      item.toString(),
                                      style: TextStyle(
                                          color: myGreen,
                                          fontWeight: FontWeight.w500,
                                          fontSize: 18),
                                    ),
                                  );
                                }).toList(),
                              ),
                            ),
                            SizedBox(
                              width: 20,
                            ),
                            SizedBox(
                              width: 150,
                              child: DropdownButtonFormField(
                                decoration: InputDecoration(
                                    border: InputBorder.none,
                                    label: Text(
                                      'Time interval',
                                      style: textSecudary,
                                    ),
                                    enabledBorder: OutlineInputBorder(
                                        borderRadius: BorderRadius.circular(12),
                                        borderSide: BorderSide(
                                          width: 3,
                                          color: myGreen,
                                        ))),
                                value: config.selectedInterval.value,
                                onChanged: (int? item) {
                                  config.selectedInterval.value = item!;
                                },
                                // ignore: invalid_use_of_protected_member
                                items: config.secund
                                    .map<DropdownMenuItem<int>>((int item) {
                                  return DropdownMenuItem<int>(
                                    value: item,
                                    child: Text(
                                      item.toString(),
                                      style: TextStyle(
                                          color: myGreen,
                                          fontWeight: FontWeight.w500,
                                          fontSize: 18),
                                    ),
                                  );
                                }).toList(),
                              ),
                            ),
                          ],
                        ),
                        Row(
                          children: [
                            Checkbox(
                                checkColor: myBlack,
                                fillColor:
                                    MaterialStateProperty.resolveWith(getColor),
                                value: config.iCheck.value,
                                onChanged: (bool? value) {
                                  config.iCheck.value = value!;
                                }),
                            Text(
                              'Keep history',
                              style: textSecudary,
                            )
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
            Column(
              children: [
                MaterialButton(
                  padding: const EdgeInsets.all(8.0),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(8),
                    side: BorderSide(color: myColorTextSecudary),
                  ),
                  minWidth: 320,
                  height: 60,
                  onPressed: () {},
                  child: Text(
                    'Removed AD',
                    style: textSecudary,
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 38),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        'V. 1.0',
                        style: textSecudary,
                      ),
                      Text(
                        'DevEduu',
                        style: textSecudary,
                      )
                    ],
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
