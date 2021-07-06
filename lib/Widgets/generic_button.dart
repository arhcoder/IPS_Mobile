import 'package:flutter/material.dart';

class GenericButton extends StatefulWidget
{
    // Atributos //
    String text = "";
    VoidCallback method;
    double width;
    double height;
    Color backgroundColor;
    Color fontColor;

    // Constructor //
    GenericButton
    (
        {
            Key key,
            @required this.text,
            @required this.method,
            this.width,
            this.height,
            this.backgroundColor,
            this.fontColor
        }
    );

    @override
    State <StatefulWidget> createState()
    {
        return GenericButtonState();
    }
}

class GenericButtonState extends State <GenericButton>
{    
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
            
            child: Material
            (
                child: InkWell
                (
                    onTap: widget.method,
                    child: Container
                    (
                        width: widget.width,
                        height: widget.height,
                        child: Center
                        (
                            child: Text
                            (
                                widget.text,
                                style: TextStyle
                                (
                                    fontSize: 24.0,
                                    color: widget.fontColor,
                                    fontWeight: FontWeight.bold
                                )
                            )
                        )
                    )
                ),
                color: Colors.transparent,
            ),
            color: widget.backgroundColor
        );
    }
}