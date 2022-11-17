import 'package:flutter/material.dart';
import 'package:get/get.dart';


void main() => runApp(GetMaterialApp(

  theme: ThemeData(
    colorScheme: ColorScheme.fromSwatch().copyWith(
      primary: Colors.redAccent,
      secondary: Colors.green,
    ),
    textTheme: const TextTheme(bodyText2: TextStyle(color: Colors.purple)),
  ),

  debugShowCheckedModeBanner: false,
  home: Home()
  ));


// class myController extends GetxController{
//   var count = 0;

//   void increment(){
//     count++;
//     update();
//   }
// }


class Home extends StatelessWidget {
   
// final controller  = Get.put(myController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Center(child: Text("Alarm app"))),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(
              child: Text('Set Alarms'),
              onPressed: () {
                Get.to(() => AlarmPage());
              },
            ),
            SizedBox(height: 10,),
            ElevatedButton(
              child: Text('Stopwatch'),
              onPressed: () {
                Get.to(() => StopwatchPage());
              },
            ),
            SizedBox(height: 10,),
            ElevatedButton(
              child: Text('Set Timer'),
              onPressed: () {
                Get.to(() => TimerPage());
              },
            ),
          ],
        ),
      ),
    );
  }
}


class AlarmPage extends StatelessWidget {
  @override
  Widget build(context){
     return Scaffold(body: Center(child: Text("Welcome to Alarm Page")));
  }
}

class StopwatchPage extends StatelessWidget {
  @override
  Widget build(context){
     return Scaffold(body: Center(child: Text("Welcome to Stopwatch Page")));
  }
}


class TimerPage extends StatelessWidget {
  @override
  Widget build(context){
     return Scaffold(body: Center(child: Text("Welcome to Timer Page")));
  }
}