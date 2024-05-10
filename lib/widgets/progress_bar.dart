


import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';


Widget linearProgressBar(BuildContext context, {double progress = 1.0}) {
  return Container(
    margin: const EdgeInsets.symmetric(vertical: 16.0),
    child: Column(
      children: [
        Stack(
          children: [
            Container(
              height: 10,
              decoration: BoxDecoration(
                color: Colors.grey[300],
                borderRadius: BorderRadius.circular(5),
              ),
            ),
            AnimatedContainer(
              duration: const Duration(milliseconds: 500),
              height: 10,
              width: MediaQuery.of(context).size.width * progress,
              decoration: BoxDecoration(
                gradient: LinearGradient(
                  colors: [
                    Colors.lightBlue.withOpacity(0.3), // Lighter shade of blue
                    Colors.lightBlue, // Original blue
                    Colors.lightBlueAccent, // Light blue accent
                  ],
                  begin: Alignment.centerLeft,
                  end: Alignment.centerRight,
                ),
                borderRadius: BorderRadius.circular(5),
              ),
            ),
          ],
        ),
        const SizedBox(height: 8.0),
        Text(
          '${(progress * 100).toInt()}%',
          style: TextStyle(
            color: Colors.lightBlue,
            fontWeight: FontWeight.bold,
          ),
        ),
      ],
    ),
  );
}
