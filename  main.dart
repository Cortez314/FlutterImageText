import 'package:flutter/material.dart';

/*
The purpose of this syntax is to import the flutter material design library
widgets, UI Design (google design system)

import - dart keywords to include external libraries

package:flutter/ - refers to material package that comes w/ flutter widgets
this is essential for building Flutter apps  w/ standard UI.

 */

void main(){
  runApp(const MyApp());
}


/*
Entry point of the Flutter app

void main() - main function, starting point of any dart program.

runApp() Flutter Function that initializes the app and attaches the root widget
(MyApp) to the screen

const MyApp() - creates an instance of the MyApp widget, marked const for
compile-time optimization ( immutable configuration )

* */


class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override //indicates this method overrides StatelessWidget build
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Hello Flutter',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(),
    );

  }
}

class MyHomePage extends StatelessWidget {
  const MyHomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold ( //provides a standard page layout, AppBar, Body, Text etc.
      appBar: AppBar(
        title: const Text('The Global K-pop Girl Groups'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment:  MainAxisAlignment.center,
          children: [
            Image.asset('assets/profile.jpg',
              width: 500,
              height: 500,
            ),
            const SizedBox(height:20),
            const Text(
              'BLACKPINK',
              style: TextStyle(fontSize: 50, color: Colors.pink)
            ),

            const SizedBox(height:20),
            const Text(
              'BLACKPINK is made up of four powerhouse performers, namely, Jisoo, Jennie, Rosé, and Lisa. '
                  'Together, they’ve become one of the most successful girl groups in K-pop history',
                style: TextStyle(fontSize: 20),
                textAlign: TextAlign.center ,
            )
          ]
        )
      )
    );

  }
}


/*
defined as the root widget (main container) of the app

class MyApp extends StatelessWidget - MyApp is a custom class that extends StatelessWidget

StatelessWidget - base class for widgets that do not hold mutable state

const MyApp({super.key}); - constructor super.key passes an optional key to the base class

key uniquely identify widgets tree

const - ensures immutable constructor

MaterialApp
- sets up app structure: navigation, theme, home screen
- title - visible in the task switcher
- theme - ThemeData(primarySwatch: Colors.blue) sets primary color palette
- home: const  MyHomePage() sets an initial screen


* */