import 'package:bottomnavigationview/cubit/simpleinterest_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class SimpleInterestCubitView extends StatefulWidget {
  const SimpleInterestCubitView({super.key});

  @override
  State<SimpleInterestCubitView> createState() =>
      _SimpleInterestCubitViewState();
}

class _SimpleInterestCubitViewState extends State<SimpleInterestCubitView> {
  final TextEditingController _principalController = TextEditingController();
  final TextEditingController _rateController = TextEditingController();
  final TextEditingController _timeController = TextEditingController();

  @override
  void dispose() {
    _principalController.dispose();
    _rateController.dispose();
    _timeController.dispose();
    super.dispose();
  }

  double _parseInput(String value) {
    return double.tryParse(value) ?? 0.0; // Default to 0.0 if parsing fails.
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Simple Interest Calculator'),
        centerTitle: true,
      ),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            children: [
              TextFormField(
                controller: _principalController,
                keyboardType: TextInputType.number,
                decoration: InputDecoration(
                  labelText: 'Principal Amount',
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(8),
                  ),
                ),
              ),
              const SizedBox(height: 10),
              TextFormField(
                controller: _rateController,
                keyboardType: TextInputType.number,
                decoration: InputDecoration(
                  labelText: 'Rate of Interest (%)',
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(8),
                  ),
                ),
              ),
              const SizedBox(height: 10),
              TextFormField(
                controller: _timeController,
                keyboardType: TextInputType.number,
                decoration: InputDecoration(
                  labelText: 'Time (Years)',
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(8),
                  ),
                ),
              ),
              const SizedBox(height: 10),
              BlocBuilder<SimpleInterestCubit, double>(
                builder: (context, simpleInterest) {
                  return Text(
                    "Simple Interest: $simpleInterest",
                    style: const TextStyle(fontSize: 18),
                  );
                },
              ),
              const SizedBox(height: 10),
              SizedBox(
                width: double.infinity,
                child: ElevatedButton(
                  onPressed: () {
                    final principal = _parseInput(_principalController.text);
                    final rate = _parseInput(_rateController.text);
                    final time = _parseInput(_timeController.text);
                    context.read<SimpleInterestCubit>().calculate(
                          principal,
                          rate,
                          time,
                        );
                  },
                  child: const Text("Calculate Simple Interest"),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
