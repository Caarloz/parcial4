import 'package:flutter/material.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:parcial4/app/ui/paginas/home/principalcontroller.dart';

class PrincipalPage extends StatefulWidget {
  PrincipalPage({Key? key}) : super(key: key);

  @override
  State<PrincipalPage> createState() => _PrincipalPageState();
}

class _PrincipalPageState extends State<PrincipalPage> {
  final _controller = PrincipalController();

  @override
  void initState() {
    _controller.addListener(() {});
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('Sucursales MovilSV'),
          backgroundColor: Colors.black,
        ),
        body: Column(
          children: [
            SizedBox(
              width: MediaQuery.of(context).size.width,
              height: MediaQuery.of(context).size.height - 90,
              child: GoogleMap(
                //markers: Set<Marker>.of(_controller.markers),
                markers: {mar1},
                //markers: _controller.markers,
                onMapCreated: _controller.onMapCreated,
                initialCameraPosition: _controller.initialCameraPosition,
                compassEnabled: true,
                onTap: _controller.onTap,
              ),
            ),
          ],
        ));
  }
}

Marker mar1 = Marker(
    markerId: MarkerId('Arce'),
    position: LatLng(13.699727, -89.2003444),
    infoWindow: InfoWindow(
        title: "Sucursal Ubicada en Calle Arce, San Salvador", snippet: '*'),
    icon: BitmapDescriptor.defaultMarkerWithHue(BitmapDescriptor.hueViolet));

Marker mar2 = Marker(
    markerId: MarkerId('Salvador del Mundo'),
    position: LatLng(13.7013266, -89.2289186),
    infoWindow: InfoWindow(
        title: "Sucursal ubicada cerca de la Rotonda Divino Salvador del Mundo",
        snippet: '*'),
    icon: BitmapDescriptor.defaultMarkerWithHue(BitmapDescriptor.hueAzure));

Marker mar3 = Marker(
    markerId: MarkerId('Soyapango'),
    position: LatLng(13.7102391, -89.1485734),
    infoWindow: InfoWindow(
        title: "Sucursal ubicada en el Centro de SOyapango", snippet: '*'),
    icon: BitmapDescriptor.defaultMarkerWithHue(BitmapDescriptor.hueAzure));

Marker mar4 = Marker(
    markerId: MarkerId('San Jacinto'),
    position: LatLng(13.9683696, -89.4817548),
    infoWindow:
        InfoWindow(title: "Sucursal ubicada en San Jacinto", snippet: '*'),
    icon: BitmapDescriptor.defaultMarkerWithHue(BitmapDescriptor.hueAzure));
