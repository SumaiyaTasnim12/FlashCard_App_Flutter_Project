import 'package:flash_card_app/flashcard.dart';
import 'package:flash_card_app/flashcard_view.dart';
import 'package:flip_card/flip_card.dart';
import 'package:flutter/material.dart';

void main(){
  runApp(MyApp());
}

class MyApp extends StatefulWidget{
  const MyApp({super.key});
  @override
  State<StatefulWidget> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp>{
  List<Flashcard> _flashcard =[
    Flashcard(
      question: " What programming Language the Flutter use ? ",
     answer: "Dart"),

     Flashcard(question: " Who you gonna Call ?"
     , answer: "Sumaiya"),

     Flashcard(question: " Who teach you All ? ", 
     answer: "Sumaiya tasnim"),
     Flashcard(question: "who is going to marry me? " ,
      answer: "Sumaiya soitan"),
  ];

  int _currentIndex = 0;


  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SizedBox(
                
                width: 250,
                height: 250,

                child: FlipCard(
                  front:  FlashcardView(
                    text: _flashcard[_currentIndex].question,),
                  back:  FlashcardView(
                    text: _flashcard[_currentIndex].answer,),
                ),
              ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                OutlinedButton.icon(
                  onPressed: showPreviousCard,
                  icon: Icon(Icons.chevron_left), 
                  label: Text("Previous"),
                  ),

                   OutlinedButton.icon(
                  onPressed: showNextCard,
                  icon: Icon(Icons.chevron_right), 
                  label: Text("Next"),
                  ),

                  ],
                  ), 
              ],
            ),
            
          ),
        ),
      );
    
  }

void showNextCard(){
  setState(() {
    _currentIndex = _currentIndex +1 < _flashcard.length ? _currentIndex + 1 : 0 ;
  });
}

void showPreviousCard(){
  setState(() {
    _currentIndex = (_currentIndex -1 >=0 ) ? _currentIndex - 1 : _flashcard.length-1 ;
  });
}

}