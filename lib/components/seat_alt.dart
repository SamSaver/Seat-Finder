import 'package:flutter/material.dart';

class SeatAlt extends StatelessWidget {
  const SeatAlt(
      {super.key,
      required this.seatNumber,
      required this.seatType,
      required this.seatStatus});

  final int seatNumber;
  final String seatType;
  final bool seatStatus;

  @override
  Widget build(BuildContext context) {
    return Stack(
      alignment: Alignment.bottomCenter,
      children: [
        Container(
          width: 70,
          height: 40,
          decoration: BoxDecoration(
            color: const Color.fromRGBO(128, 203, 255, 1),
            borderRadius: BorderRadius.circular(10),
          ),
        ),
        Column(
          children: [
            Container(
              width: 60,
              height: 50,
              padding: const EdgeInsets.all(5),
              decoration: BoxDecoration(
                color: seatStatus
                    ? const Color.fromRGBO(0, 150, 255, 1)
                    : const Color.fromRGBO(206, 234, 255, 1),
                borderRadius: BorderRadius.circular(10),
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    seatType,
                    style: TextStyle(
                      fontSize: 10,
                      fontWeight: FontWeight.bold,
                      color: seatStatus
                          ? Colors.white
                          : const Color.fromRGBO(84, 149, 220, 1),
                    ),
                  ),
                  Text(
                    seatNumber.toString(),
                    style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                      color: seatStatus
                          ? Colors.white
                          : const Color.fromRGBO(84, 149, 220, 1),
                    ),
                  ),
                ],
              ),
            ),
            const SizedBox(
              height: 5,
            ),
          ],
        ),
      ],
    );
  }
}
