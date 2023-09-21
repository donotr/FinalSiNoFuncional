import 'package:flutter/material.dart';

import '../../../domain/entities/message.dart';
class MyMessageBubble extends StatelessWidget {

  final Message message;

  const MyMessageBubble({
    super.key,
    required this.message
    });

  @override
  Widget build(BuildContext context) {

    final colorsitos = Theme.of(context).colorScheme;
    return Column(
      crossAxisAlignment: CrossAxisAlignment.end,
      children: [
        Container(
          decoration:BoxDecoration(
            color: colorsitos.primary,
            borderRadius: BorderRadius.circular(20),
          ),
          child:  Padding(
            padding: EdgeInsets.symmetric(horizontal: 20, vertical:10),
            child: Text(message.text,
            style: TextStyle(color: Colors.white),),
          )
        ),
        const SizedBox(height: 10,)

      ],);
  }
}