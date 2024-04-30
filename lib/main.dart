import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: HomePage(),
    );
  }
}
class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Profile'),
        centerTitle: true,
        backgroundColor: Colors.white,
      ),
      body:  SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Container(
                margin: const EdgeInsets.only(top: 30),
                height: 150,
                width: 150,
                decoration: const BoxDecoration(
                    shape: BoxShape.circle,
                    color: Colors.blue,
                    image: DecorationImage(
                      fit: BoxFit.cover,
                      image: AssetImage("assets/naruto.jpg"),
                    )),
              ),
              Container(
                  margin: const EdgeInsets.only(top: 10),
                  child: const Text(
                    'Naruto Uzumaki',
                    style: TextStyle(color: Colors.black, fontSize: 20),
                  )),
              Container(
                  margin: const EdgeInsets.only(top: 5),
                  child: const Text(
                    'narutouzumaki@gmail.com',
                    style: TextStyle(color: Colors.grey, fontSize: 20),
                  )),
              Container(
                  margin:const  EdgeInsets.only(top: 15,right: 20,left: 20),
                  child:const  Center(
                    child: Text(
                      textAlign: TextAlign.center,

                      'Naruto is one of the most motivational anime series of all time, and its mainly thanks to its inspiring and heroic lead, Naruto Uzumaki. While Naruto showed his bravery and commitment with actions during many dangerous missions and deadly battles, he would also often use his words to express his feelings and thoughts ',
                      style: TextStyle(color: Colors.black, fontSize: 20),
                    ),
                  )),
            ],
          ),
        )
    );
  }
}

