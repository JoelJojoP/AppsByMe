import 'package:flutter/material.dart';

class Help extends StatelessWidget {
  const Help({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
            centerTitle: true,
            title: const Text(
              "What is BMI",
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 25),
            )),
        body: SingleChildScrollView(
            padding: const EdgeInsets.symmetric(horizontal: 10),
            child: Column(children: [
              const SizedBox(
                height: 15,
              ),
              const Text(
                "Body mass index (BMI) is a value derived from the mass (weight) and height of a person. The BMI may be determined using a table or chart which displays BMI as a function of mass and height using contour lines or colours for different BMI categories. The BMI is a convenient rule of thumb used to broadly categorize a person as underweight, normal weight, overweight, or obese based on tissue mass and height.",
                style: TextStyle(fontSize: 22),
              ),
              const SizedBox(
                height: 30,
              ),
              const Text(
                "How is BMI Calculated",
                style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
              ),
              const SizedBox(
                height: 10,
              ),
              const Text(
                "The BMI is defined as the body mass divided by the square of the body height. It is calculated using the formula:",
                style: TextStyle(fontSize: 22),
              ),
              const SizedBox(
                height: 10,
              ),
              Image.asset("formula.png")
            ])));
  }
}
