import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:flutter/widgets.dart';

class PrincipalController extends ChangeNotifier {
  Map<MarkerId, Marker> _markers = {};

  final initialCameraPosition =
      const CameraPosition(target: LatLng(13.7001138, -89.2007482), zoom: 9);

  Set<Marker> get markers => _markers.values.toSet();
  PrincipalController();
  void onMapCreated(GoogleMapController controller) {}

  void onTap(LatLng position) {}
}
