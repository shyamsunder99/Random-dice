import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'dart:math';

void main() {
  runApp(
    MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Colors.tealAccent,
        appBar: AppBar(
          title: Text('DICE'),
          backgroundColor: Colors.blue,
          centerTitle: true,
        ),
        body: Diceapp(),
      ),
    ),
  );
}
class Diceapp extends StatefulWidget {
  const Diceapp({Key? key}) : super(key: key);

  @override
  State<Diceapp> createState() => _DiceappState();
}

class _DiceappState extends State<Diceapp> {

  int count=6;
  int b=6;
  int c=6;
  void change()
  {
    setState(() {
      b=Random().nextInt(6)+1;
      count=Random().nextInt(6)+1;
      c=b+count;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,

        children: [
          Row(
            children: [
              Expanded(
                child: Padding(
                  padding: const EdgeInsets.all(16.0),
                  child: TextButton(
                    onPressed: (){
                      change();

                    },
                    child: Image.asset('images/dice$count.png'),
                  ),
                ),
              ),
              Expanded(
                child: Padding(
                  padding: const EdgeInsets.all(16.0),
                  child: TextButton(
                    onPressed: (){
                      change();
                    },
                    child: Image.asset('images/dice$b.png'),),
                ),
              ),

            ],
          ),
          Card(
            color: Colors.teal,
            child:  Text('$b,$count=$c',style: GoogleFonts.aBeeZee(fontSize: 50,color: Colors.yellow),),
          ),
        ],
      ),

    );
  }
}


