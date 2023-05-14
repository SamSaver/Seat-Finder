import 'package:flutter/material.dart';
import 'package:seat_app/components/coach.dart';

import '../components/search_bar.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  var buttonActive = false;
  Map<int, bool> seatState = {};

  // override initial state
  @override
  void initState() {
    super.initState();
    for (var i = 1; i <= 64; i++) {
      seatState[i] = false;
    }
  }

  void updateSeatState(int seatNumber) {
    // toggle the previous seat state and update the current seat state
    for (var i = 1; i <= 64; i++) {
      seatState[i] = false;
    }

    setState(() {
      seatState[seatNumber] = true;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // body: const Placeholder(),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 50),
        child: SingleChildScrollView(
          child: Column(
            children: [
              Text(
                "Seat Finder",
                style: TextStyle(
                    fontSize: 30,
                    fontWeight: FontWeight.bold,
                    color: Colors.lightBlueAccent[100]),
              ),
              const SizedBox(
                height: 20,
              ),
              SearchBar(updateSeatState: updateSeatState),
              const SizedBox(
                height: 20,
              ),
              // Coach widget
              Coach(seatState: seatState),
            ],
          ),
        ),
      ),
    );
  }
}
