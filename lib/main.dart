import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(title: 'Pretest Mobile 2'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key, required this.title}) : super(key: key);
  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  TextEditingController textFieldController1 = TextEditingController();
  TextEditingController textFieldController2 = TextEditingController();

  int hasil = 0;
  int angka1 = 0;
  int angka2 = 0;

  tambah() {
    setState(() {
      angka1 = int.parse(textFieldController1.text);
      angka2 = int.parse(textFieldController2.text);

      hasil = angka1 + angka2;
    });
  }

  kali() {
    setState(() {
      angka1 = int.parse(textFieldController1.text);
      angka2 = int.parse(textFieldController2.text);

      hasil = angka1 * angka2;
    });
  }

  kurang() {
    setState(() {
      angka1 = int.parse(textFieldController1.text);
      angka2 = int.parse(textFieldController2.text);

      hasil = angka1 - angka2;
    });
  }

  bagi() {
    setState(() {
      angka1 = int.parse(textFieldController1.text);
      angka2 = int.parse(textFieldController2.text);

      hasil = angka1 ~/ angka2;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          children: [
            Text(
              'Hasil Perhitungan : $hasil',
              style: TextStyle(fontSize: 20),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 15),
              child: TextField(
                controller: textFieldController1,
                decoration: InputDecoration(
                    labelText: "Input Pertama",
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(20))),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 15),
              child: TextField(
                controller: textFieldController2,
                decoration: InputDecoration(
                    labelText: "Input Kedua",
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(20))),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 10),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  ElevatedButton(
                      onPressed: () {
                        kali();
                        textFieldController1.clear();
                        textFieldController2.clear();
                      },
                      child: Text("X")),
                  ElevatedButton(
                      onPressed: () {
                        bagi();
                        textFieldController1.clear();
                        textFieldController2.clear();
                      },
                      child: Text("/")),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 10),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  ElevatedButton(
                      onPressed: () {
                        tambah();
                        textFieldController1.clear();
                        textFieldController2.clear();
                      },
                      child: Text("+")),
                  ElevatedButton(
                      onPressed: () {
                        kurang();
                        textFieldController1.clear();
                        textFieldController2.clear();
                      },
                      child: Text("-")),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
