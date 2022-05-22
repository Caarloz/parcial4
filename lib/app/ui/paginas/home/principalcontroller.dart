import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:flutter/widgets.dart';

class PrincipalController extends ChangeNotifier {
  Map<MarkerId, Marker> _markers = {};

  final initialCameraPosition =
      const CameraPosition(target: LatLng(13.7001138, -89.2007482), zoom: 25);

  Set<Marker> get markers => _markers.values.toSet();
  PrincipalController();
  void onMapCreated(GoogleMapController controller) {
    final markerId = MarkerId(_markers.length.toString());

    final Marker marker = Marker(
      markerId: markerId,
      position: LatLng(13.7001138, -89.2007482),
      infoWindow: InfoWindow(title: "markerIdVal", snippet: '*'),
    );

    //final maker = Marker(markerId: markerId, position: position);
    _markers[markerId] = marker;
    notifyListeners();
  }

  void onTap(LatLng position) {}
}
