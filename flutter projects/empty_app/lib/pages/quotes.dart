import 'package:flutter/material.dart';

class Quotes extends StatefulWidget {
  const Quotes({ Key? key }) : super(key: key);

  @override
  _QuotesState createState() => _QuotesState();
}

class _QuotesState extends State<Quotes> {

  var quotes = [ "Do the best you can until you know better. Then when you know better, do better", 
                  "Hard work spotlights the character of people: some turn up their sleeves",
                 "The only place where success comes before work is in the dictionary.",];

  int idx=0;

  void nextQuote(){
    setState(() {
      idx=(idx+1) % quotes.length;
    });
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Center(
          child: Text(
            quotes[idx],
            style: const TextStyle(fontSize: 12),
          ),
        ),
        floatingActionButton: FloatingActionButton(
          onPressed: (){
          nextQuote();
        }, 
        child: const Icon(Icons.skip_next),
        ),
      );
  }
}