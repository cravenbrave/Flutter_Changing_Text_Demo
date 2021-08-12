import 'package:flutter/material.dart';

class TextControl extends StatelessWidget {
  final VoidCallback nextPage;

  TextControl(this.nextPage);
  @override
  Widget build(BuildContext context) {
    return Container(
      child: ElevatedButton(
          onPressed: nextPage, child: Text('Next Page')),
    );
  }
}
