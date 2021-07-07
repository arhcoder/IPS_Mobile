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
                        margin: EdgeInsets.only(top: 14.0),

                        decoration: BoxDecoration
                        (
                            color: this.backgroundColor,
                            borderRadius: BorderRadius.circular(10.0)
                        ),

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
                                ),
                                textAlign: TextAlign.center,
                            )
                        )
                    )
                ]
            )
        );
    }
}