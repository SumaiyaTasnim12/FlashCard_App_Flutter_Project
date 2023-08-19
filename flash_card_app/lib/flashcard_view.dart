import 'package:flutter/material.dart';

class FlashcardView extends StatelessWidget{
  final String text;

  const FlashcardView({super.key, required this.text});
// FlashcardView({Key key,this.text}):super(key: key);
  
  @override
  Widget build(BuildContext context) {
   return Card(
               elevation: 15,
               child: Center(
               child: Text(text,textAlign: TextAlign.center,),
                    ),
                  );
  }

}