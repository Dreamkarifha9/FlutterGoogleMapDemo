import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'page.dart';

const CameraPosition _kInitialPosition =
    CameraPosition(target: LatLng(-33.852, 151.211), zoom: 11.0);

class LiteModePage extends GoogleMapExampleAppPage {
  LiteModePage() : super(const Icon(Icons.map), 'Lite mode');

  @override
  Widget build(BuildContext context) {
    return const _LiteModeBody();
  }
}

class _LiteModeBody extends StatelessWidget {
  const _LiteModeBody();

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: 30.0),
        child: Center(
          child: SizedBox(
            width: 300.0,
            height: 300.0,
            child: GoogleMap(
              initialCameraPosition: _kInitialPosition,
            ),
          ),
        ),
      ),
    );
  }
}
