import 'package:flutter/material.dart';

class bmicalculator extends StatefulWidget {
  const bmicalculator({Key? key}) : super(key: key);

  @override
  State<bmicalculator> createState() => _bmicalculatorState();
}

class _bmicalculatorState extends State<bmicalculator> {
  final TextEditingController height = TextEditingController();
  final TextEditingController weight = TextEditingController();
  double result = 0;
  void calc() {
    double heightd = double.parse(height.text) / 100;
    double weightd = double.parse(weight.text);
    double heightsquare = heightd * heightd;
    result = weightd / heightsquare;
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey,
      appBar:
          AppBar(backgroundColor: Colors.purple, title: Text('BMI CALCULATOR')),
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SizedBox(
              height: 30,
            ),
            TextField(
              controller: height,
              decoration: InputDecoration(
                filled: true,
                fillColor: Colors.pink,
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(10),
                ),
                hintText: 'height',
              ),
            ),
            SizedBox(
              height: 30,
            ),
            TextField(
              controller: weight,
              decoration: InputDecoration(
                filled: true,
                fillColor: Colors.pink,
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(10),
                ),
                hintText: 'weight',
              ),
            ),
            SizedBox(
              height: 30,
            ),
            TextButton(
                style: TextButton.styleFrom(backgroundColor: Colors.purple),
                onPressed: () {
                  calc();
                },
                child: Text(
                  'calculate',
                  style: TextStyle(color: Colors.white),
                )),
            SizedBox(
              height: 30,
            ),
            Text(result == null ? "Enter Value" : "${result.toStringAsFixed(2)}",
              textAlign: TextAlign.center,
              style: TextStyle(
                color: Colors.white,
                backgroundColor: Colors.black,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
