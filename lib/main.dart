import 'package:dynamictheme/CustomThemeClass.dart';
import 'package:dynamictheme/themesdart.dart';
import 'package:flutter/material.dart';

void main(){
 runApp(
   CustomTheme(
     initialThemeKey: MyKeys.LIGHT_MODE,
     child: MyApp(),
   ),
 );
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Dynmaic Theme",
      debugShowCheckedModeBanner: false,
      theme: CustomTheme.of(context),
      home: HomePage(),
    );
  }
}

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {


  void _changeTheme(BuildContext buildContext, MyKeys key) {
    CustomTheme.instanceOf(buildContext).changeTheme(key);
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Dymanic Theme"),
      ),
      body: Center(
          child: Text("Hello World!"),
      ),
      drawer: Drawer(
        child: ListView(
          children: <Widget>[
            ListTile(
              title: Text("Tap any one to change"),
            ),
            Divider(),
            ListTile(
               title: Text("Light Mode"),
                onTap: (){
                    print("Light Mode Pressed");
                  _changeTheme(context, MyKeys.LIGHT_MODE);
                },
            ),
            Divider(),
            ListTile(
              title: Text("Night Mode"),
              onTap: (){
                print("Night Mode Pressed");
                _changeTheme(context,MyKeys.NIGHT_MODE);
              },
            ),
            Divider(),
            ListTile(
              title: Text("Dark Mode"),
              onTap: (){
                print("Dark Mode Pressed");
                _changeTheme(context, MyKeys.DARK_MODE);
              },
            ),
          ],
        ),
      ),
    );
  }
}

