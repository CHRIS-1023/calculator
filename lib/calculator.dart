import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class CalcScreen extends StatefulWidget {
  const CalcScreen({super.key});

  @override
  State<CalcScreen> createState() => _CalcScreenState();
}

class _CalcScreenState extends State<CalcScreen> {
  final TextEditingController _num1 = TextEditingController();
  final TextEditingController _num2 = TextEditingController();
  double result = 0;

  addNum() {
    double num1 = double.parse(_num1.text);
    double num2 = double.parse(_num2.text);
    result = num1 + num2;
    setState(() {});
  }

  minusNum() {
    double num1 = double.parse(_num1.text);
    double num2 = double.parse(_num2.text);
    result = num1 - num2;
    setState(() {});
  }

  multiplyNum() {
    double num1 = double.parse(_num1.text);
    double num2 = double.parse(_num2.text);
    result = num1 * num2;
    setState(() {});
  }

  divideNum() {
    double num1 = double.parse(_num1.text);
    double num2 = double.parse(_num2.text);
    result = num1 / num2;
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Calculator"),
      ),
      body: Column(children: [
        TextField(
          keyboardType: TextInputType.number,
          inputFormatters: <TextInputFormatter>[
            FilteringTextInputFormatter.allow(RegExp(r'[0-9]')),
            FilteringTextInputFormatter.digitsOnly
          ],
          controller: _num1,
          decoration: const InputDecoration(label: Text('Insert first number')),
        ),
        const SizedBox(
          height: 24,
        ),
        TextField(
          keyboardType: TextInputType.number,
          inputFormatters: <TextInputFormatter>[
            FilteringTextInputFormatter.allow(RegExp(r'[0-9]')),
            FilteringTextInputFormatter.digitsOnly
          ],
          controller: _num2,
          decoration:
              const InputDecoration(label: Text('Insert second number')),
        ),
        const SizedBox(
          height: 18,
        ),
        ElevatedButton(onPressed: addNum, child: const Text('Add')),
        const SizedBox(
          height: 18,
        ),
        ElevatedButton(onPressed: minusNum, child: const Text('Subtract')),
        const SizedBox(
          height: 18,
        ),
        ElevatedButton(onPressed: multiplyNum, child: const Text('Multiply')),
        const SizedBox(
          height: 18,
        ),
        ElevatedButton(onPressed: divideNum, child: const Text('Divide')),
        const SizedBox(
          height: 18,
        ),
        Text('$result'),
      ]),
    );
  }
}
