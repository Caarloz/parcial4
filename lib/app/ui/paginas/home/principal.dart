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
    markerId: MarkerId('Marca1'),
    position: LatLng(13.7001138, -89.2007472),
    infoWindow: InfoWindow(title: "markerIdVal", snippet: '*'),
    icon: BitmapDescriptor.defaultMarkerWithHue(BitmapDescriptor.hueViolet));
