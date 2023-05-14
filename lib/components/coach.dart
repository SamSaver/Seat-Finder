import 'package:flutter/material.dart';
import 'package:seat_app/components/compartment.dart';

// ignore: must_be_immutable
class Coach extends StatefulWidget {
  const Coach({super.key, required this.seatState});

  final Map<int, bool> seatState;

  @override
  State<Coach> createState() => _CoachState();
}

class _CoachState extends State<Coach> {
  // List of compartments
  var myList = [];

  // override initial state
  @override
  void initState() {
    super.initState();
    for (var i = 1; i <= 64; i += 8) {
      myList.add(i);
    }
  }

  @override
  Widget build(BuildContext context) {
    // return the list of compartment widgets
    return Column(
      // no space between the widgets
      mainAxisAlignment: MainAxisAlignment.start,
      children: myList
          .map((value) => Compartment(
              startingSeatNumber: value, seatState: widget.seatState))
          .toList(),
    );
  }
}
