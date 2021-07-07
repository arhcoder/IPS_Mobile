import 'package:flutter/material.dart';

import 'package:ivan_alejandro_ramos_herrera_4493981375/Controller/ip_controller.dart';
import 'package:get/get.dart';

import 'package:ivan_alejandro_ramos_herrera_4493981375/Widgets/generic_double_label.dart';
import 'package:ivan_alejandro_ramos_herrera_4493981375/Widgets/generic_button.dart';

class Home extends StatelessWidget
{
    final controller = Get.put(IPController());

    @override
    Widget build(BuildContext context)
    {
        // Variables de Tema //
        double device_width = MediaQuery.of(context).size.width;
        double device_height = MediaQuery.of(context).size.height;
        Color app_primary_color = Colors.blueAccent;
        Color app_secundary_color = Colors.blue;
        Color font_primary_color = Colors.grey;
        Color font_secundary_color = Colors.blueGrey;

        return Obx (() => Container
        (
            child: Column
            (
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,

                children:
                [
                    // Etiqueta que muestra el IP del dispositivo //
                    Expanded
                    (
                        child: GenericDoubleLabel
                        (
                            title: "IP de este dispositivo",
                            text: "${controller.ip}",
                            width: device_width - 80.0,
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
                            method: controller.getIp(),
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
                            text: "${controller.location}",
                            width: device_width - 80.0,
                            height: 80.0,
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
                            method: controller.geoIp(controller.getIp()),
                            width: device_width - 80.0,
                            height: 30.0,
                            backgroundColor: app_secundary_color,
                            fontColor: Colors.white,
                        )
                    )
                ]
            )
        ));
    }
}