import 'package:get/get.dart';

import 'dart:convert';
import 'package:http/http.dart' as http;

class IPController extends GetxController
{
    var ip = "-".obs;
    var location = "".obs;

    // Métodos //
    getIp()
    {
        /// Accede al API de Ipify y cambia la IP del dispositivo actual ///
        final url = "https://api.ipify.org/?format=json";
        
        http.get(Uri.parse(url)).then((http.Response response)
        {
            final APImap = jsonDecode(response.body);
            ip.value = "${APImap['ip']}";
        });
    }

    geoIp(String ip)
    {
        /// Recibe una IP de referencia y regresa su locaclización ///
        final url = "https://ipinfo.io/189.239.24.18/geo";
        
        http.get(Uri.parse(url)).then((http.Response response)
        {
            final APImap = jsonDecode(response.body);
            location.value = "${APImap['city']}, ${APImap['region']}, ${APImap['country']}";
        });
    }
}