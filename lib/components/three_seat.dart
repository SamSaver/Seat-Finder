import 'package:flutter/material.dart';
import 'package:seat_app/components/seat.dart';

class ThreeSeat extends StatelessWidget {
  const ThreeSeat(
      {super.key, required this.startingSeatNumber, required this.seatState});

  final int startingSeatNumber;
  final Map<int, bool> seatState;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        Seat(
          seatNumber: startingSeatNumber,
          seatStatus: seatState[startingSeatNumber]!,
          seatType: "Lower",
        ),
        Seat(
          seatNumber: startingSeatNumber + 1,
          seatStatus: seatState[startingSeatNumber + 1]!,
          seatType: "Middle",
        ),
        Seat(
          seatNumber: startingSeatNumber + 2,
          seatStatus: seatState[startingSeatNumber + 2]!,
          seatType: "Upper",
        ),
      ],
    );
  }
}
