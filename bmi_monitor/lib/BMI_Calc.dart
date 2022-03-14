import 'package:flutter/material.dart';
import 'BMI_Result.dart';
import 'config.dart';
import 'Help.dart';

class Calculator extends StatefulWidget {
  const Calculator({Key? key}) : super(key: key);

  @override
  _CalculatorState createState() => _CalculatorState();
}

class _CalculatorState extends State<Calculator> {
  double h = 160;
  double w = 62;
  late double bmi;
  int m = 0;

  void calcBMI() {
    setState(() {
      bmi = (w * 10000) / (h * h);
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
      drawer: Drawer(
        elevation: 20,
        child: ListView(
          children: [
            const SizedBox(
              height: 40,
            ),
            SizedBox(
                height: 50,
                child: TextButton(
                    onPressed: () {
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context) {
                        return Help();
                      }));
                    },
                    child: const Text(
                      "What is BMI?",
                      style: TextStyle(
                        fontSize: 30,
                        fontWeight: FontWeight.bold,
                      ),
                    ))),
            const SizedBox(
              height: 30,
            ),
            BottomNavigationBar(
              elevation: 2,
              items: const [
                BottomNavigationBarItem(
                    icon: Icon(Icons.wb_sunny), label: "Light mode"),
                BottomNavigationBarItem(
                    icon: Icon(Icons.nightlight_round_outlined),
                    label: "Dark Mode")
              ],
              currentIndex: m,
              onTap: (index) {
                if (index == 1) {
                  t.switchTheme(true);
                  setState(() {
                    m = 1;
                  });
                } else {
                  t.switchTheme(false);
                  setState(() {
                    m = 0;
                  });
                }
              },
            )
          ],
        ),
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
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) {
                      return Result(bmi: bmi);
                    }));
                  },
                  child: const Text(
                    "Calculate",
                    style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
                  ))),
        ],
      ),
    );
  }
}
