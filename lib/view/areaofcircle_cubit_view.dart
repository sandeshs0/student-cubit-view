import 'package:bottomnavigationview/cubit/areaofcircle_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class CircleAreaCubitView extends StatefulWidget {
  const CircleAreaCubitView({super.key});

  @override
  State<CircleAreaCubitView> createState() => _CircleAreaCubitViewState();
}

class _CircleAreaCubitViewState extends State<CircleAreaCubitView> {
  final TextEditingController _radiusController = TextEditingController();

  @override
  void dispose() {
    _radiusController.dispose();
    super.dispose();
  }

  double _parseInput(String value) {
    return double.tryParse(value) ?? 0.0; // Default to 0.0 if parsing fails.
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Circle Area Calculator'),
        centerTitle: true,
      ),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            children: [
              TextFormField(
                controller: _radiusController,
                keyboardType: TextInputType.number,
                decoration: InputDecoration(
                  labelText: 'Radius',
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(8),
                  ),
                ),
              ),
              const SizedBox(height: 10),
              BlocBuilder<AreaofcircleCubit, double>(
                builder: (context, area) {
                  return Text(
                    "Area: $area",
                    style: const TextStyle(fontSize: 18),
                  );
                },
              ),
              const SizedBox(height: 10),
              SizedBox(
                width: double.infinity,
                child: ElevatedButton(
                  onPressed: () {
                    final radius = _parseInput(_radiusController.text);
                    context.read<AreaofcircleCubit>().calculate(radius);
                  },
                  child: const Text("Calculate Area"),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
