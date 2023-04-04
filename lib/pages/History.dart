import 'package:apping/const.dart';
import 'package:flutter/material.dart';

class History extends StatelessWidget {
  const History({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: bgColorScafold,
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        centerTitle: true,
        shadowColor: Colors.transparent,
        title: const Text('History'),
      ),
      body: ListView.builder(
        itemCount: 3,
        itemBuilder: (context, index) => const CardHistory(),
      ),
    );
  }
}

class CardHistory extends StatelessWidget {
  const CardHistory({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 95,
      width: double.infinity,
      padding: const EdgeInsets.all(15),
      margin: const EdgeInsets.all(10),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(8),
        color: bgColorInput,
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
            Text(
              'google.com',
              style: TextStyle(
                color: myWhite,
                fontSize: 20,
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            Text(
              '142.250.78.238',
              textAlign: TextAlign.left,
              style: TextStyle(
                  fontSize: 15,
                  fontWeight: FontWeight.w500,
                  color: myColorTextSecudary),
            )
          ]),
          Column(crossAxisAlignment: CrossAxisAlignment.end, children: [
            Text(
              'Média: 50.871 ms',
              style: TextStyle(
                color: myGreen,
                fontSize: 15,
                fontWeight: FontWeight.bold,
              ),
            ),
            Text(
              'Perda de pacore: 0%',
              style: TextStyle(
                color: myGreen,
                fontSize: 15,
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            Text(
              '02-04-2023 01:14:30',
              textAlign: TextAlign.left,
              style: TextStyle(
                  fontSize: 15,
                  fontWeight: FontWeight.w500,
                  color: myColorTextSecudary),
            )
          ]),
        ],
      ),
    );
  }
}
