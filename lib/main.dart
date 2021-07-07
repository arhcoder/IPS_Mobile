import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import 'Screens/Home.dart';

void main()
{
    // Se hace transparente la barra superior de Android //
    SystemChrome.setSystemUIOverlayStyle(
        SystemUiOverlayStyle
        (
            statusBarColor: Colors.transparent,
            statusBarBrightness: Brightness.light
        )
    );
    runApp(MyApp());
}

class MyApp extends StatelessWidget
{
    @override
    Widget build(BuildContext context)
    {
        return MaterialApp
        (
            debugShowCheckedModeBanner: false,
            
            title: 'IP SHOWER',
            home: Scaffold
            (
                appBar: AppBar(title: Text("IP shower"), backgroundColor: Colors.blueAccent),
                body: Center(child: Home())
            )
        );
    }
}