import 'package:bottomnavigationview/cubit/arithemetic_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class ArithmeticCubitView extends StatefulWidget {
  const ArithmeticCubitView({super.key});

  @override
  State<ArithmeticCubitView> createState() => _ArithmeticCubitViewState();
}

class _ArithmeticCubitViewState extends State<ArithmeticCubitView> {
  final TextEditingController _firstNumberController = TextEditingController();
  final TextEditingController _secondNumberController = TextEditingController();

  @override
  void dispose() {
    _firstNumberController.dispose();
    _secondNumberController.dispose();
    super.dispose();
  }

  int _parseInput(String value) {
    return int.tryParse(value) ?? 0; // Default to 0 if parsing fails.
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Arithmetic Cubit View'),
        centerTitle: true,
      ),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            children: [
              TextFormField(
                controller: _firstNumberController,
                keyboardType: TextInputType.number,
                decoration: InputDecoration(
                  labelText: 'First Number',
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(8),
                  ),
                ),
              ),
              const SizedBox(height: 10),
              TextFormField(
                controller: _secondNumberController,
                keyboardType: TextInputType.number,
                decoration: InputDecoration(
                  labelText: 'Second Number',
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(8),
                  ),
                ),
              ),
              const SizedBox(height: 10),
              BlocBuilder<ArithmeticCubit, int>(
                builder: (context, result) {
                  return Text(
                    "Result: $result",
                    style: const TextStyle(fontSize: 18),
                  );
                },
              ),
              const SizedBox(height: 10),
              SizedBox(
                width: double.infinity,
                child: ElevatedButton(
                  onPressed: () {
                    final firstNumber =
                        _parseInput(_firstNumberController.text);
                    final secondNumber =
                        _parseInput(_secondNumberController.text);
                    context
                        .read<ArithmeticCubit>()
                        .add(firstNumber, secondNumber);
                  },
                  child: const Text("Add"),
                ),
              ),
              SizedBox(
                width: double.infinity,
                child: ElevatedButton(
                  onPressed: () {
                    final firstNumber =
                        _parseInput(_firstNumberController.text);
                    final secondNumber =
                        _parseInput(_secondNumberController.text);
                    context
                        .read<ArithmeticCubit>()
                        .subtract(firstNumber, secondNumber);
                  },
                  child: const Text("Subtract"),
                ),
              ),
              SizedBox(
                width: double.infinity,
                child: ElevatedButton(
                  onPressed: () {
                    final firstNumber =
                        _parseInput(_firstNumberController.text);
                    final secondNumber =
                        _parseInput(_secondNumberController.text);
                    context
                        .read<ArithmeticCubit>()
                        .multiply(firstNumber, secondNumber);
                  },
                  child: const Text("Multiply"),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
