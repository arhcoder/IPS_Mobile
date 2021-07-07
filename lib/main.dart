import 'package:flutter/material.dart';

import 'Screens/Home.dart';

void main()
{
    runApp(MyApp());
}

class MyApp extends StatelessWidget
{
    @override
    Widget build(BuildContext context)
    {
        return MaterialApp
        (
            title: 'IP SHOWER',
            home: Scaffold
            (
                appBar: AppBar(title: Text("IP shower"), backgroundColor: Colors.blueAccent),
                body: Center(child: Home())
            )
        );
    }
}