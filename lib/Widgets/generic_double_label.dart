import 'package:flutter/material.dart';

class GenericDoubleLabel extends StatelessWidget
{
    // Atributos //
    String title = "";
    String text = "";
    double width;
    double height;
    Color backgroundColor;
    Color fontTitleColor;
    Color fontTextColor;

    // Constructor //
    GenericDoubleLabel
    (
        {
            Key key,
            @required this.title,
            @required this.text,
            this.width,
            this.height,
            this.backgroundColor,
            this.fontTitleColor,
            this.fontTextColor
        }
    );

    @override
    Widget build(BuildContext context)
    {
        return Container
        (
            margin: EdgeInsets.only
            (
                top: 20.0,
                bottom: 20.0
            ),

            child: Column
            (
                children:
                [
                    Text
                    (
                        this.title,
                        style: TextStyle
                        (
                            color: this.fontTitleColor,
                            fontSize: 24.0,
                        )
                    ),
                    Container
                    (
                        width: this.width,
                        height: this.height,
                        decoration: BoxDecoration(color: this.backgroundColor),
                        child: Center
                        (
                            child: Text
                            (
                                this.text,
                                style: TextStyle
                                (
                                    color: this.fontTextColor,
                                    fontSize: 20.0,
                                    fontWeight: FontWeight.bold
                                )
                            )
                        )
                    )
                ]
            )
        );
    }
}