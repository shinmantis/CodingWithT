import 'package:first_flutter_app/screens/FormNav.dart';
import 'package:flutter/material.dart';
import 'screens/Home.dart';
import 'package:first_flutter_app/screens/Dashboard.dart';
import 'screens/DashboardButton.dart';
//Enter application through here

//Fat arrow for single line of code otherwise brackets like normal Main
void main() => runApp(CTStatelessClass());
//Everything is a widget so this text box also applied
//We need runApp otherwise after main we get a big ole NothingBurger
//Hot Reloads?  https://stackoverflow.com/questions/57127496/flutter-hot-reloading-not-working-in-android-studiomac
//https://stackoverflow.com/questions/59242815/what-is-the-difference-between-scaffold-and-container-in-flutter
//https://stackoverflow.com/questions/75962859/onpressed-doesnt-work-in-flutter
//https://medium.com/flutter-community/dart-what-are-mixins-3a72344011f3
//https://medium.com/flutter-community
//https://www.youtube.com/watch?v=g7lUIxVHTec
//https://app.flutterflow.io/project/travel-app-sn5100?tab=uiBuilder&page=HomePage
//https://pub.dev/packages/sodium
//https://docs.flutter.dev/data-and-backend/serialization/json
//https://stackoverflow.com/questions/62923903/auto-converting-json-to-object-in-dart-flutter
//https://pub.dev/packages/json_serializable
//https://www.geeksforgeeks.org/flutter-stateful-vs-stateless-widgets/
//https://api.flutter.dev/flutter/widgets/StatefulWidget-class.html
//https://www.reddit.com/r/FlutterDev/comments/10z6cka/flutter_3_book_recommendations/
//https://pub.dev/packages/upgrader
//https://ux.stackexchange.com/questions/135433/app-navigation-bottom-navigation-bar-vs-bottom-app-bar
//https://medium.com/coding-with-flutter/flutter-state-management-setstate-bloc-valuenotifier-provider-2c11022d871b
//https://stackoverflow.com/questions/69698548/how-to-redraw-only-single-widget-in-flutter
//https://docs.flutter.dev/cookbook/navigation/navigate-with-arguments
//https://blog.logrocket.com/understanding-flutter-navigation-routing/
//https://docs.flutter.dev/cookbook/persistence/sqlite
//https://blog.logrocket.com/choosing-right-database-flutter-application/
//https://medium.com/dhiwise/how-to-choose-right-flutter-database-a1f35237a7f9
//https://www.funwithflutter.dev/flutter-dart-when-to-use-var-final-const-static/#:~:text=Use%20final%20if%20you%20don,be%20immutable%2C%20should%20be%20final%20.
//https://pub.dev/documentation/sodium_libs/latest/sodium_libs_sumo/Auth-class.html
//Above sodium package requires SymLink support...?

//https://stackoverflow.com/questions/69421872/named-parameters-cant-start-with-an-underscore-on-null-safe-flutter
//https://stackoverflow.com/questions/73004239/flutter-dart-data-class
//https://stackoverflow.com/questions/75709685/flutter-create-object-data-class-dart
//https://www.linkedin.com/pulse/freezed-powerful-way-generate-data-classes-flutter-ahmad-al-ghamdi
//https://stackoverflow.com/questions/69312956/flutter-late-keyword-with-declaration
//https://www.bezkoder.com/dart-flutter-constructors/
//https://www.kindacode.com/article/using-chip-widget-in-flutter/



class CTStatelessClass extends StatelessWidget {
  const CTStatelessClass({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "3.4 Flutter Checkbox",
      theme: ThemeData.light(),
      home: MyForm(),
    );
  }
}


