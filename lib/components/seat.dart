import 'package:flutter/material.dart';

class Seat extends StatelessWidget {
  const Seat(
      {super.key,
      required this.seatNumber,
      required this.seatStatus,
      required this.seatType});

  final int seatNumber;
  final bool seatStatus;
  final String seatType;

  @override
  Widget build(BuildContext context) {
    // I want to return a widget that looks like this:
    // A darker share of light blue rounded rectangle on which a small light blue shade rectangle is placed on which seat no. and seat type is mentioned,
    return Stack(
      alignment: Alignment.topCenter,
      children: [
        Container(
          width: 70,
          height: 40,
          decoration: BoxDecoration(
            color: const Color.fromRGBO(128, 203, 255, 1),
            borderRadius: BorderRadius.circular(10),
          ),
        ),
        Align(
          alignment: Alignment.bottomCenter,
          child: Column(
            children: [
              const SizedBox(
                height: 5,
              ),
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
                      seatNumber.toString(),
                      style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                        color: seatStatus
                            ? Colors.white
                            : const Color.fromRGBO(84, 149, 220, 1),
                      ),
                    ),
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
                  ],
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
