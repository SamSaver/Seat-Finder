import 'package:flutter/material.dart';
import 'package:seat_app/components/seat_alt.dart';

class ThreeSeatAlt extends StatelessWidget {
  const ThreeSeatAlt(
      {super.key, required this.startingSeatNumber, required this.seatState});

  final int startingSeatNumber;
  final Map<int, bool> seatState;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        SeatAlt(
          seatNumber: startingSeatNumber,
          seatStatus: seatState[startingSeatNumber]!,
          seatType: "Lower",
        ),
        SeatAlt(
          seatNumber: startingSeatNumber + 1,
          seatStatus: seatState[startingSeatNumber + 1]!,
          seatType: "Middle",
        ),
        SeatAlt(
          seatNumber: startingSeatNumber + 2,
          seatStatus: seatState[startingSeatNumber + 2]!,
          seatType: "Upper",
        ),
      ],
    );
  }
}
