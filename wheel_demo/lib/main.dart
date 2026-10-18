import 'package:flutter/material.dart';

void main() => runApp(const MaterialApp(home: AirtimePicker()));

class AirtimePicker extends StatefulWidget {
  const AirtimePicker({super.key});

  @override
  State<AirtimePicker> createState() => _AirtimePickerState();
}

class _AirtimePickerState extends State<AirtimePicker> {
  final amounts = [100, 200, 500, 1000, 2000, 5000, 10000];
  int selected = 0;



  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Buy Airtime')),
      body: Column(
        children: [
          SizedBox(
            height: 250,
            child: ListWheelScrollView.useDelegate(
              itemExtent: 60,
              diameterRatio: 1.5,
              perspective: 0.005,
              physics: const FixedExtentScrollPhysics(),
              onSelectedItemChanged: (i) => setState(() => selected = i),
              childDelegate: ListWheelChildBuilderDelegate(
                childCount: amounts.length,
                builder: (context, i) => Center(
                  child: Text(
                    '${amounts[i]} RWF',
                    style: const TextStyle(fontSize: 28),
                  ),
                ),
              ),
            ),
          ),
          Text("You're buying ${amounts[selected]} RWF airtime"),
        ],
      ),
    );
  }
}
