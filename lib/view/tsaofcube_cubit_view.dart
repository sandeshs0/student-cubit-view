import 'package:bottomnavigationview/cubit/tsaofcube_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class CubeTsaCubitView extends StatefulWidget {
  const CubeTsaCubitView({super.key});

  @override
  State<CubeTsaCubitView> createState() => _CubeTsaCubitViewState();
}

class _CubeTsaCubitViewState extends State<CubeTsaCubitView> {
  final TextEditingController _sideController = TextEditingController();

  @override
  void dispose() {
    _sideController.dispose();
    super.dispose();
  }

  double _parseInput(String value) {
    return double.tryParse(value) ?? 0.0; // Default to 0.0 if parsing fails.
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Cube TSA Calculator'),
        centerTitle: true,
      ),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            children: [
              TextFormField(
                controller: _sideController,
                keyboardType: TextInputType.number,
                decoration: InputDecoration(
                  labelText: 'Side Length of Cube',
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(8),
                  ),
                ),
              ),
              const SizedBox(height: 10),
              BlocBuilder<TsaofcubeCubit, double>(
                builder: (context, tsa) {
                  return Text(
                    "TSA: $tsa",
                    style: const TextStyle(fontSize: 18),
                  );
                },
              ),
              const SizedBox(height: 10),
              SizedBox(
                width: double.infinity,
                child: ElevatedButton(
                  onPressed: () {
                    final side = _parseInput(_sideController.text);
                    context.read<TsaofcubeCubit>().calculate(side);
                  },
                  child: const Text("Calculate TSA"),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
