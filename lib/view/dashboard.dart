import 'package:first_app/view/CardPromo.dart';
import 'package:first_app/view/buttonAddict.dart';
import 'package:flutter/material.dart';

class Dashboard extends StatelessWidget {
  const Dashboard({super.key, required String title});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('Minha dashboard'),
        ),
        body: Column(
          children: [
            Center(
                child: Image.asset(
              "assets/images/Logo.png",
              height: 95,
            )),
            const Row(
              children: [
                Icon(Icons.location_on),
                Text("Local"),
              ],
            ),
            const Padding(
              padding: EdgeInsets.all(32.0),
              child: TextField(
                decoration: InputDecoration(
                  border: OutlineInputBorder(),
                  hintText: 'Pesquisar Item',
                  prefixIcon: Icon(Icons.search),
                  fillColor: Color.fromARGB(255, 238, 228, 228),
                  filled: true,
                ),
              ),
            ),
            Container(
              width: 500,
              height: 200,
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: AssetImage(
                      'assets/images/background.jpg'), // Caminho para a imagem
                  fit: BoxFit.cover, // Ajusta a imagem para cobrir o container
                ),
              ),
              child: Stack(
                children: [
                  Positioned(
                    left: 20,
                    top: 100,
                    child: Image.asset(
                      "assets/images/Logo.png",
                      height: 95,
                    ),
                  ),
                  const Positioned(
                    left: 150,
                    top: 50,
                    child: Text(
                      "Bem vindos ao app de compras",
                      style: TextStyle(
                        fontFamily: 'Courier',
                        fontSize: 23,
                      ),
                    ),
                  ),
                  const Positioned(
                    left: 255,
                    top: 100,
                    child: Text(
                      "SACOLÃO!",
                      style: TextStyle(
                        fontFamily: 'Courier',
                        fontSize: 30,
                        color: Color.fromARGB(255, 255, 255, 255),
                      ),
                    ),
                  )
                ],
              ),
            ),
            Spacer(),
            Center(child: Text("Ofertas Exclusivas:")),
            Spacer(),
            Row(
              children: [
                Cardpromo(),
                Cardpromo(),
                Cardpromo(),
                Cardpromo(),
              ],
            ),
            Text("Mais vendidos"),
            Text("Cards Frutas")
          ],
        ));
  }
}
