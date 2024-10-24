import 'package:flutter/material.dart';
import 'package:inweb_tasks/First/FirstScreen.dart';
import 'package:inweb_tasks/Second/SecondScreen.dart';

void main() async
{
  runApp(MyApp());
}

class MyApp extends StatelessWidget {

  @override
  Widget build(BuildContext context)
  {
    return  const MaterialApp(
      debugShowCheckedModeBanner: false,
      home:  SecondScreen(),
    );
  }
}
//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--------> github token
// git init
// git add .
// git status
// git remote add origin https://github.com/YousefSheriff/BeInWebTasks.git
// git commit -m "commnts are added"
// git push origin master


// echo "# InWeb_Tasks" >> README.md
// git init
// git add README.md
// git commit -m "first commit"
// git branch -M main
// git remote add origin https://github.com/YousefSheriff/InWeb_Tasks.git
// git push -u origin main

