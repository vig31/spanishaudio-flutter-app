import 'package:flutter/material.dart';
import 'AudioHelper.dart';
import 'package:audioplayers/audio_cache.dart' ;

class Homepage extends StatefulWidget {
  @override
  _HomepageState createState() => _HomepageState();
}

class _HomepageState extends State<Homepage> {
  AudioCache audioplayer = AudioCache();
  List<AudioNumber> numberlist = [
    AudioNumber("one.wav", Colors.amber, "One"),
    AudioNumber("two.wav", Colors.green, "Two"),
    AudioNumber("three.wav", Colors.brown, "Three"),
    AudioNumber("four.wav", Colors.red, "Four"),
    AudioNumber("five.wav", Colors.deepPurple, "Five"),
    AudioNumber("six.wav", Colors.indigo, "Six"),
    AudioNumber("seven.wav", Colors.deepOrange, "Seven"),
    AudioNumber("eight.wav", Colors.grey, "Eight"),
    AudioNumber("nine.wav", Colors.pink, "Nine"),
    AudioNumber("ten.wav", Colors.indigo, "Ten"),
  ];
  play(String uri) {
    audioplayer.play(uri);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Learn Spanish Numbers"),
      ),
      backgroundColor: Color.fromARGB(255, 233, 230, 223),
      body: Container(
        child: Center(
          child: Row(
            children: [
              Image(
                image: AssetImage("images/logo.png"),
              ),
              Expanded(
                child: GridView.builder(
                  padding: EdgeInsets.all(10),
                  gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 1,
                    crossAxisSpacing: 10.0,
                    childAspectRatio: 5.0,
                    mainAxisSpacing: 10.0,

                  ),
                  itemCount: numberlist.length,
                  itemBuilder: (context, i) => SizedBox(
                    height: 5,
                    width: 7,
                    //  child: RaisedButton(
                    //    color: numberlist[i].buttonColor,
                    //    splashColor: Colors.black38,
                    //    child: Text(numberlist[i].buttonText,
                    //    style: TextStyle(fontWeight: FontWeight.bold,),
                    //   onPressed: (){
                    //     play(numberlist[i].audioUri);
                    //   },
                    //   ),),
                    child: ElevatedButton(
                      child: Text(numberlist[i].buttonText),
                      onPressed: () {
                        play(numberlist[i].audioUri);
                      },
                      style: ButtonStyle(
                        backgroundColor: MaterialStateProperty.all(numberlist[i].buttonColor) ,
                      overlayColor: MaterialStateProperty.all(Colors.black45) ,
                      shadowColor: MaterialStateProperty.all(Colors.black) ,
                      elevation: MaterialStateProperty.all(5.7),
                      ),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
