import 'package:flutter/material.dart';

class NetworkError extends StatelessWidget {
  final int statusCode;

  final onPressed;
  NetworkError({required this.statusCode, required this.onPressed});
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(
          '😔',
          style: Theme.of(context).textTheme.bodyMedium?.copyWith(
                color: Colors.blue,
                fontSize: 100,
              ),
        ),
        Text(
          'Clima couldn\'t connect the internet',
          style: Theme.of(context).textTheme.bodyMedium?.copyWith(
                color: Colors.white,
                fontSize: 18,
              ),
        ),
        Text(
          '$statusCode: Please check your internet connection',
          style: Theme.of(context).textTheme.bodyMedium?.copyWith(
                color: Colors.white,
                fontSize: 12,
              ),
        ),
        TextButton(
          onPressed: onPressed,
          child: Container(
            height: 40,
            width: 200,
            decoration: BoxDecoration(
              color: Colors.blue,
              borderRadius: BorderRadius.circular(8),
              boxShadow: [
                BoxShadow(
                  color: Colors.black.withOpacity(0.2), // Shadow color
                  spreadRadius: 2, // Spread radius
                  blurRadius: 5, // Blur radius
                  offset: Offset(0, 3), // Changes the position of the shadow
                ),
              ],
            ),
            child: Center(
              child: Text(
                'Try again',
                style: Theme.of(context).textTheme.bodyMedium?.copyWith(
                      color: Colors.blue[900],
                      fontSize: 15,
                    ),
              ),
            ),
          ),
        ),
      ],
    );
  }
}
