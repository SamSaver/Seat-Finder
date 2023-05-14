import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:seat_app/components/seat.dart';
import 'package:seat_app/components/seat_alt.dart';
import 'package:seat_app/components/three_seat.dart';
import 'package:seat_app/components/three_seat_alt.dart';

class Compartment extends StatelessWidget {
  const Compartment(
      {super.key, required this.startingSeatNumber, required this.seatState});

  final int startingSeatNumber;
  final Map<int, bool> seatState;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Column(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
          ThreeSeat(
              startingSeatNumber: startingSeatNumber, seatState: seatState),
          const SizedBox(
            height: 30,
          ),
          ThreeSeatAlt(
              startingSeatNumber: startingSeatNumber + 3, seatState: seatState),
        ]),
        Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Seat(
                seatNumber: startingSeatNumber + 6,
                seatStatus: seatState[startingSeatNumber + 6]!,
                seatType: 'Side Lower'),
            const SizedBox(
              height: 30,
            ),
            SeatAlt(
                seatNumber: startingSeatNumber + 7,
                seatStatus: seatState[startingSeatNumber + 7]!,
                seatType: 'Side Upper'),
          ],
        )
      ],
    );
  }
}
