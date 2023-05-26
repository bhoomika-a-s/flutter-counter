import 'package:flutter/material.dart';

class ScreenHome extends StatefulWidget {
  const ScreenHome({super.key});

  @override
  State<ScreenHome> createState() => ScreenHomeState();
}

class ScreenHomeState extends State<ScreenHome> {
  int counter=0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child:DisplayText(counterText:counter.toString()),//statelss used
        //child:Text(counter.toString()), //step without stateless
      ),
      floatingActionButton: FloatingActionButton(child: Icon(Icons.add),
      onPressed: (){
        print(counter);
        setState(() {
          counter = counter + 1;  
        });
      }
      ) ,
    );
  }
}

class DisplayText extends StatelessWidget { //statelss in statefull
  final String counterText;

  const DisplayText({super.key, required this.counterText});
  

  @override
  Widget build(BuildContext context) {
    return Text(counterText);
  }
}