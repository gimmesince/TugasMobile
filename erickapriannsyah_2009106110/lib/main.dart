import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
      title: 'Tugas Mobile',
      debugShowCheckedModeBanner: false,
      initialRoute: '/',
      routes: <String, WidgetBuilder>{
        '/': (context) => Home(),
        '/2': (context) => SecondPage(),
        '/3': (context) => ThirdPage(),
      }));
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
            ),
            SizedBox(
              height: 20,
            ),
            ElevatedButton(
                onPressed: () {
                  Navigator.pushNamed(context, '/2');
                },
                child: Text("Menuju halaman page ke-2")),
            SizedBox(
              height: 20,
            ),
            ElevatedButton(
                onPressed: () {
                  Navigator.pushNamed(context, '/3');
                },
                child: Text("Menuju halaman page ke-3"))
          ]),
        ),
      ),
    );
  }
}

class SecondPage extends StatelessWidget {
  const SecondPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Halaman Ke-2"),
      ),
      body: Center(
        child: Column(children: [
          SizedBox(
            height: 500,
          ),
          ElevatedButton(
              onPressed: () {
                Navigator.pop(context);
              },
              child: Text("Kembali"))
        ]),
      ),
    );
  }
}

class ThirdPage extends StatelessWidget {
  const ThirdPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Halaman Page ke-3"),
      ),
      body: Center(
          child: Column(
        children: [
          SizedBox(
            height: 500,
          ),
          ElevatedButton(
              onPressed: () {
                Navigator.pop(context);
              },
              child: Text("Kembali"))
        ],
      )),
    );
  }
}
