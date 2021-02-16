import 'package:flutter/material.dart';

class FollowingUsers extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: EdgeInsets.fromLTRB(20, 20, 20, 10),
          child: Text(
            "Follwing",
            style: TextStyle(
                fontSize: 24, fontWeight: FontWeight.bold, letterSpacing: 2.0),
          ),
        )
      ],
    );
  }
}
