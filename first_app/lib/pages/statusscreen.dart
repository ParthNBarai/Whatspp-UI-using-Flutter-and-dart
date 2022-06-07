import 'package:flutter/material.dart';

class statusscreen extends StatelessWidget {
  const statusscreen({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
     return const Center(
      child: Text(
        'STATUS',
        style: TextStyle(fontSize: 20.0),
      ),
    );
  }
}