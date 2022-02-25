import 'package:flutter/material.dart';

class Calculator extends StatefulWidget {
  const Calculator({Key? key}) : super(key: key);

  @override
  _CalculatorState createState() => _CalculatorState();
}

class _CalculatorState extends State<Calculator> {
  double h = 160;
  double w = 62;
  late double bmi;
  bool calc = false;

  void calcBMI() {
    setState(() {
      bmi = (w * 10000) / (h * h);
      calc = true;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "BMI Calculator",
          style: TextStyle(fontWeight: FontWeight.bold, fontSize: 25),
        ),
        centerTitle: true,
      ),
      body: ListView(
        children: [
          const SizedBox(
            height: 20,
          ),
          Card(
            elevation: 10,
            child: Column(
              children: [
                const SizedBox(
                  height: 10,
                ),
                const Text(
                  "Height (in cm)",
                  style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
                ),
                const SizedBox(
                  height: 10,
                ),
                Text(h.toStringAsFixed(0) + " cm",
                    style: const TextStyle(fontSize: 22)),
                Slider(
                    min: 50.0,
                    max: 250.0,
                    value: h,
                    onChanged: (v) {
                      setState(() {
                        h = v;
                      });
                    })
              ],
            ),
          ),
          Card(
            elevation: 10,
            child: Column(
              children: [
                const SizedBox(
                  height: 10,
                ),
                const Text(
                  "Weight",
                  style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
                ),
                const SizedBox(
                  height: 10,
                ),
                Text(w.toStringAsFixed(0) + " kg",
                    style: const TextStyle(fontSize: 22)),
                Slider(
                    min: 10.0,
                    max: 150.0,
                    value: w,
                    onChanged: (v) {
                      setState(() {
                        w = v;
                      });
                    })
              ],
            ),
          ),
          const SizedBox(
            height: 40,
          ),
          Center(
              child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    fixedSize: const Size(200, 40),
                    elevation: 10,
                  ),
                  onPressed: () {
                    calcBMI();
                  },
                  child: const Text(
                    "Calculate",
                    style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
                  ))),
          const SizedBox(height: 20),
          calc
              ? Center(
                  child: Text(
                  "Your BMI is " + bmi.toStringAsFixed(2),
                  style: const TextStyle(fontSize: 25),
                ))
              : Container()
        ],
      ),
    );
  }
}
