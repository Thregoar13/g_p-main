import 'package:http/http.dart' as http;
import 'dart:convert';

class ParkingLot {
  String lotName = 'default' ;
  String lotURL = 'jojo';
  int totalStalls = 0;
  List<ParkingStalls> parkingStalls = const[];


  ParkingLot({this.lotName = "name error", this.lotURL = "oops.jpeg", this.totalStalls = 1, this.parkingStalls = const [] });

  ParkingLot.fromJson(Map<String, dynamic> json) {
    lotName = json['lotName'];
    lotURL = json['lotURL'];
    totalStalls = json['totalStalls'];

    parkingStalls = <ParkingStalls>[];
    json['parking_stalls'].forEach((v) {
      parkingStalls.add(new ParkingStalls.fromJson(v));
    });

  }



  Future<ParkingLot> setupDetailed() async {


    try {

      String url = "https://storage.googleapis.com/getparked/CHW%20lot1.json"; //https://lora.mydevices.com/v1/networks/ttn/uplink    https://storage.googleapis.com/getparked/CHW%20lot1.json
      //https://nam1.cloud.thethings.network/api/v3/as/applications/get-parked-lot-0/devices/eui-70b3d57ed0061863/packages/storage/uplink_message
      final response = await http.get(Uri.parse(url));
      //print(response);
      return ParkingLot.fromJson(jsonDecode(response.body));
    }

    catch (e) {
      print(e);
      throw e; // Rethrow the exception to handle it in the UI
    }
  }


}

class ParkingStalls {
  int id = 0;
  int x = 0;
  int y = 0;

  ParkingStalls({
    this.id = 0,
    this.x = 0,
    this.y = 0});

  ParkingStalls.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    x = json['x'];
    y = json['y'];
  }

}