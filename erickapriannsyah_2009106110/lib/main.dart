import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Tugas Mobile',
      home: Home(),
    );
  }
}

class Home extends StatelessWidget {
  const Home({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var lebar = MediaQuery.of(context).size.width;
    var panjang = MediaQuery.of(context).size.height;
    return Scaffold(
      appBar: AppBar(
        title: Text("Tugas 1"),
      ),
      body: Center(
        child: Container(
          width: lebar,
          height: panjang,
          child: Column(children: [
            Container(
              width: 200,
              height: 400,
              decoration: BoxDecoration(
                  image: DecorationImage(
                      image: AssetImage("assets/images/rogstrixg15.png"))),
            ),
            Container(
              child: Text(
                'Laptop ROG STRIX G15',
                style: TextStyle(
                  color: Colors.black38,
                  fontSize: 38,
                ),
              ),
            )
          ]),
        ),
      ),
    );
  }
}
