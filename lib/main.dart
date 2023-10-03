import 'package:flutter/material.dart';
import 'screens/Home.dart';
import 'package:first_flutter_app/screens/Dashboard.dart';
import 'screens/DashboardButton.dart';
//Enter application through here

//Fat arrow for single line of code otherwise brackets like normal Main
void main() => runApp(const MyApp());
  //Everything is a widget so this text box also applied
  //We need runApp otherwise after main we get a big ole NothingBurger
  //Hot Reloads?  https://stackoverflow.com/questions/57127496/flutter-hot-reloading-not-working-in-android-studiomac
  //https://stackoverflow.com/questions/59242815/what-is-the-difference-between-scaffold-and-container-in-flutter



class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
        title: "Foo Yung Chu!",
        themeMode: ThemeMode.system,
        debugShowCheckedModeBanner: false,
        home: Home());
  }
}
