import 'package:flutter/material.dart';

import 'dart:convert';
import 'package:http/http.dart' as http;

import 'package:ivan_alejandro_ramos_herrera_4493981375/Widgets/generic_double_label.dart';
import 'package:ivan_alejandro_ramos_herrera_4493981375/Widgets/generic_button.dart';

void main()
{
    runApp(MyApp());
}

class MyApp extends StatelessWidget
{
    @override
    Widget build(BuildContext context)
    {
        // Variables de Tema //
        //double device_width = MediaQuery.of(context).size.width;
        //double device_height = /* MediaQuery.of(context).size.height;
        Color app_primary_color = Colors.blueAccent;
        Color app_secundary_color = Colors.blue;
        Color font_primary_color = Colors.grey;
        Color font_secundary_color = Colors.blueGrey;

        String device_ip = "";
        String device_localitation = "";

        // Métodos //
        String getIp()
        {
            /// Accede al API de Ipify y cambia la IP del dispositivo actual ///
            final url = "https://api.ipify.org/?format=json";
            
            http.get(Uri.parse(url)).then((http.Response response)
            {
                final APImap = jsonDecode(response.body);
                return "${APImap['ip']}";
            });
        }

        String geoIp(String ip)
        {
            /// Recibe una IP de referencia y regresa su locaclización ///
            final url = "https://ipinfo.io/${ip}/geo";
            
            http.get(Uri.parse(url)).then((http.Response response)
            {
                final APImap = jsonDecode(response.body);
                return "${APImap['city']}, ${APImap['region']}, ${APImap['country']}";
            });
        }

        return MaterialApp
        (
            title: 'IP SHOWER',
            home: Scaffold
            (
                appBar: AppBar(title: Text("IP shower"), backgroundColor: app_primary_color),
                body: Column
                (
                    //mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,

                    children:
                    [
                        // Etiqueta que muestra el IP del dispositivo //
                        Expanded
                        (
                            child: GenericDoubleLabel
                            (
                                title: "IP de este dispositivo",
                                text: device_ip,
                                width: 300.0,
                                height: 60.0,
                                backgroundColor: Color(0xFFF2F2F2),
                                fontTitleColor: font_primary_color,
                                fontTextColor: font_secundary_color
                            )
                        ),
                        // Botón para obtener la ip del dispositivo //
                        Expanded
                        (
                            child: GenericButton
                            (
                                text: "Obtener IP",
                                method: (){},
                                width: 300,
                                height: 30.0,
                                backgroundColor: app_secundary_color,
                                fontColor: Colors.white,
                            )
                        ),
                        // Etiqueta que muestra la localización de la IP //
                        Expanded
                        (
                            child: GenericDoubleLabel
                            (
                                title: "Localización de la IP",
                                text: device_localitation,
                                width: 300.0,
                                height: 60.0,
                                backgroundColor: Color(0xFFF2F2F2),
                                fontTitleColor: font_primary_color,
                                fontTextColor: font_secundary_color
                            )
                        ),
                        // Botón para obtener la localización de la IP //
                        Expanded
                        (
                            child: GenericButton
                            (
                                text: "Obtener Localización",
                                method: (){},
                                width: 300.0,
                                height: 30.0,
                                backgroundColor: app_secundary_color,
                                fontColor: Colors.white,
                            )
                        )
                    ]
                )
            )
        );
    }
}