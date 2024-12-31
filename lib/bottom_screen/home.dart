import 'package:flutter/material.dart';

class HomeView extends StatefulWidget {
  const HomeView({super.key});

  @override
  State<HomeView> createState() => _HomeViewState();
}

class _HomeViewState extends State<HomeView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "Home",
          style: TextStyle(
            fontFamily: "Montserrat Bold",
            fontSize: 20,
          ),
        ),
      ),
      body: Column(
        children: [
          // Border.all(color: const Colors.red, width: 5,),
          TextFormField(
            decoration: InputDecoration(
                labelText: 'Write here',
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(12.2),
                )),
          ),
          ElevatedButton(onPressed: () {}, child: const Text("Button")),
          ElevatedButton(
            style: ElevatedButton.styleFrom(
              backgroundColor: const Color(0xff20D21A),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(20),
              ),
            ),
            onPressed: () {},
            child: const Text(
              "Green Button",
              style: TextStyle(color: Colors.black),
            ),
          ),
        ],
      ),
    );
  }
}
