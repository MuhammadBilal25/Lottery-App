import 'package:flutter/material.dart';
import 'dart:math';
void main() {
  runApp(Myapp());
}

class Myapp extends StatefulWidget {
  const Myapp({super.key});

  @override
  State<Myapp> createState() => _State();
}

class _State extends State<Myapp> {
  Random random=Random();
  int x = 0;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.cyanAccent,
        appBar: AppBar(
          title: Center(
            child: Text('LOTTERY APP ', style: TextStyle(fontSize: 30)),
          ),
          backgroundColor: Colors.greenAccent,
        ),
        body: SafeArea(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,

            children: [
              Text('WININNG NUMBER IS 4',
              style: TextStyle(
                fontSize: 20
              ),),
              Padding(
                padding: const EdgeInsets.symmetric(
                  vertical: 40,
                  horizontal: 40,
                ),
                child: Center(
                  child: Container(
                    height: 250,
                    decoration: BoxDecoration(color: Colors.grey,
                    borderRadius: BorderRadius.circular(10)),

                    child:  x==4 ?
                    Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Icon(Icons.done,size: 40,color: Colors.green,),
                           Text(
                            'Congratulation YOU WON THE LOTTERY' ,textAlign: TextAlign.center,
                            style: TextStyle(fontSize: 20),
                          ),

                      ],
                    ) :
                    Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                    Icon(Icons.error,size: 40,color: Colors.red,),
                  Text(
                    'BETTER LUCK NEXT TIME YOUR NUMBER IS $x Try again.' ,textAlign: TextAlign.center,
                    style: TextStyle(fontSize: 20),
                  ),

                  ],
                ),
                  ),
                ),
              ),
            ],
          ),
        ),
        floatingActionButton: FloatingActionButton(
          onPressed: () {
            x=random.nextInt(100);
            print(x);
            setState(() {});

          },
          backgroundColor: Colors.greenAccent,
          child: const Icon(Icons.refresh),
        ),
      ),
    );
  }
}
