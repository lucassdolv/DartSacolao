import 'package:first_app/view/buttonAddict.dart';
import 'package:flutter/material.dart';

class Cardpromo extends StatelessWidget {
  const Cardpromo({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 200,
      height: 200,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        border: Border.all(
          color: Colors.black,
          width: 2,
        ),
      ),
      child: Column(
        children: [
          Spacer(),
          Image.asset(
            "assets/images/banana.png",
            height: 80,
          ),
          Spacer(),
          Text("Nome do produto"),
          Text("descrição"),
          Spacer(),
          Row(
            children: [
              Spacer(),
              Text("preço"),
              Spacer(),
              ButtonAddict(),
              Spacer(),
            ],
          ),
          Spacer(),
        ],
      ),
    );
  }
}
