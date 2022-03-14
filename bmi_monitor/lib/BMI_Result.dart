import 'package:flutter/material.dart';
import 'package:syncfusion_flutter_gauges/gauges.dart';

class Result extends StatelessWidget {
  final double bmi;
  const Result({Key? key, required this.bmi}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text(
            "Result",
            style: TextStyle(fontWeight: FontWeight.bold, fontSize: 25),
          ),
          centerTitle: true,
        ),
        body: Center(
            child: SfRadialGauge(
                enableLoadingAnimation: true,
                animationDuration: 2000,
                axes: <RadialAxis>[
              RadialAxis(minimum: 0, maximum: 80, ranges: <GaugeRange>[
                GaugeRange(
                    startWidth: 10,
                    endWidth: 10,
                    startValue: 0,
                    endValue: 16,
                    color: Colors.blueAccent),
                GaugeRange(
                    startWidth: 10,
                    endWidth: 10,
                    startValue: 16,
                    endValue: 19,
                    color: Colors.blue),
                GaugeRange(
                    startWidth: 10,
                    endWidth: 10,
                    startValue: 19,
                    endValue: 25,
                    color: Colors.green),
                GaugeRange(
                  startWidth: 10,
                  endWidth: 10,
                  startValue: 25,
                  endValue: 30,
                  color: Colors.yellow,
                ),
                GaugeRange(
                  startWidth: 10,
                  endWidth: 10,
                  startValue: 30,
                  endValue: 39,
                  color: Colors.orange,
                ),
                GaugeRange(
                    startWidth: 10,
                    endWidth: 10,
                    startValue: 39,
                    endValue: 80,
                    color: Colors.red),
              ], pointers: <GaugePointer>[
                MarkerPointer(
                  value: bmi,
                  markerOffset: -20,
                  markerHeight: 20,
                  markerWidth: 20,
                  color: Colors.grey,
                ),
              ], annotations: <GaugeAnnotation>[
                GaugeAnnotation(
                    widget: Container(
                        child: Column(children: [
                      const Text(
                        "Your BMI is",
                        style: TextStyle(fontSize: 40),
                      ),
                      Text(bmi.toStringAsFixed(2),
                          style: const TextStyle(
                              fontSize: 45, fontWeight: FontWeight.bold)),
                      const SizedBox(
                        height: 10,
                      ),
                      Text(
                        (() {
                          if (bmi < 16) {
                            return "You are severely underweight";
                          } else if (bmi >= 16 && bmi < 19) {
                            return "You are underweight";
                          } else if (bmi >= 19 && bmi < 25) {
                            return "You are optimal";
                          } else if (bmi >= 25 && bmi < 30) {
                            return "You are overweight";
                          } else if (bmi >= 30 && bmi < 39) {
                            return "You are obese";
                          } else {
                            return "You are severely obese";
                          }
                        }()),
                        style: const TextStyle(fontSize: 35),
                      )
                    ])),
                    angle: 90,
                    positionFactor: 1)
              ])
            ])));
  }
}
