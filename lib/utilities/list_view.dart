import 'package:flutter/material.dart';

class Excersises extends StatelessWidget {
  final icon;
  final color;
  final String excersiseName;
  final int numberOfExcersise;
  const Excersises({
    Key? key,
    this.icon,
    required this.excersiseName,
    required this.numberOfExcersise,
    this.color,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 12.0),
      child: Container(
        padding: const EdgeInsets.all(16),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(17),
          color: const Color(0xFFFFFFFF),
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Row(
              children: [
                ClipRRect(
                  borderRadius: BorderRadius.circular(12),
                  child: Container(
                    color: color,
                    padding: const EdgeInsets.all(16),
                    child: Icon(
                      icon,
                      color: Colors.white,
                    ),
                  ),
                ),
                const SizedBox(
                  width: 30,
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    // title
                    Text(
                      excersiseName,
                      style: const TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 16,
                      ),
                    ),
                    const SizedBox(
                      height: 5,
                    ),
                    //subtitle
                    Text(
                      "$numberOfExcersise Excersise",
                      style: TextStyle(
                        fontSize: 14,
                        color: Colors.grey[600],
                      ),
                    ),
                  ],
                ),
              ],
            ),
            const Icon(Icons.more_horiz_rounded)
          ],
        ),
      ),
    );
  }
}
