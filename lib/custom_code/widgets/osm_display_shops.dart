// Automatic FlutterFlow imports
import '/backend/backend.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'index.dart'; // Imports other custom widgets
import '/custom_code/actions/index.dart'; // Imports custom actions
import '/flutter_flow/custom_functions.dart'; // Imports custom functions
import 'package:flutter/material.dart';
// Begin custom widget code
// DO NOT REMOVE OR MODIFY THE CODE ABOVE!

import 'package:flutter_map/flutter_map.dart';
import 'package:latlong2/latlong.dart' as ll;

import 'package:auto_fixin/components/shop_details/shop_details_widget.dart'
    as wg;

class OsmDisplayShops extends StatefulWidget {
  const OsmDisplayShops({
    super.key,
    this.width,
    this.height,
    this.currentLocation,
    required this.shopList,
  });

  final double? width;
  final double? height;
  final LatLng? currentLocation;
  final List<UsersRecord> shopList;

  @override
  State<OsmDisplayShops> createState() => _OsmDisplayShopsState();
}

class _OsmDisplayShopsState extends State<OsmDisplayShops> {
  final MapController _mapController = MapController();
  late double curLat;
  late double curLong;
  List<Marker> shopMarkers = [];

  void getShopLocs() {
    try {
      if (widget.shopList.isNotEmpty) {
        for (int i = 0; i < widget.shopList.length; i++) {
          double shopLat = widget.shopList[i].shopLocation!.latitude;
          double shopLong = widget.shopList[i].shopLocation!.longitude;
          shopMarkers.add(Marker(
            point: ll.LatLng(shopLat, shopLong),
            width: 45,
            height: 45,
            alignment: Alignment.center,
            child: GestureDetector(
              onTap: () async {
                await showModalBottomSheet(
                  isScrollControlled: true,
                  backgroundColor: Colors.transparent,
                  enableDrag: false,
                  context: context,
                  builder: (context) {
                    return GestureDetector(
                      onTap: () {
                        FocusScope.of(context).unfocus();
                        FocusManager.instance.primaryFocus?.unfocus();
                      },
                      child: Padding(
                        padding: MediaQuery.viewInsetsOf(context),
                        child: Container(
                          height: 550,
                          child: wg.ShopDetailsWidget(
                            shop: widget.shopList[i],
                          ),
                        ),
                      ),
                    );
                  },
                ).then((value) => safeSetState(() {}));
              },
              child: Icon(
                Icons.location_on,
                size: 45,
                color: Colors.red,
              ),
            ),
          ));
        }
      }
    } catch (e) {}
  }

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    try {
      curLat = widget.currentLocation!.latitude;
      curLong = widget.currentLocation!.longitude;
    } catch (e) {
      curLat = 14.327520;
      curLong = 120.940792;
    }
    if (curLat == 0 && curLong == 0) {
      curLat = 14.327520;
      curLong = 120.940792;
    }
    shopMarkers.add(
      Marker(
        point: ll.LatLng(curLat, curLong),
        width: 60,
        height: 60,
        alignment: Alignment.center,
        child: Icon(
          Icons.my_location,
          size: 60,
          color: Colors.red,
        ),
      ),
    );
    getShopLocs();
  }

  @override
  Widget build(BuildContext context) {
    return FlutterMap(
      mapController: _mapController,
      options: MapOptions(
        initialCenter: ll.LatLng(curLat, curLong),
        initialZoom: 17,
        minZoom: 14,
        maxZoom: 19,
        interactionOptions: const InteractionOptions(
          flags: InteractiveFlag.all &
              ~InteractiveFlag.rotate &
              ~InteractiveFlag.pinchMove,
        ),
      ),
      children: [
        TileLayer(
          urlTemplate: 'https://tile.openstreetmap.org/{z}/{x}/{y}.png',
          userAgentPackageName: 'com.testMap.app',
          maxZoom: 19,
        ),
        MarkerLayer(
          markers: shopMarkers,
        ),
      ],
    );
  }
}
