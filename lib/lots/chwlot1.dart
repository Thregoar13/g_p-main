import 'package:flutter/material.dart';
import 'package:g_p/format/LotLayout.dart';


class piselot extends StatelessWidget {
   piselot({super.key});

   ParkingLot? parkingLot = ParkingLot(
     lotName: "Default Lot",
     lotURL: "https://example.com/default-lot.jpg",
     totalStalls: 0,
     parkingStalls: [],
   );

   Future<ParkingLot> futureParkingLot = ParkingLot().setupDetailed();

   double imageHeight = 1080;
   double imageWidth = 1920;
   int rotation = 0;
   List<bool> avab = [
     true, false, true, true, true, false, true, true,true, false, true, true,true, false, true, true,
     true, false, true, true, true, false, true, true,true, false, true, true,true, false, true, true,
     true, false, true, true,true, false, true, true,true, false, true, true,true, false, true, true,
     true, false, true, true,true, false, true, true,true, false, true, true,true, false, true, true,
     true, false, true, true,true, false, true, true,true, false, true, true,true, false, true, true,
     true, false, true, true,true, false, true, true,true, false, true, true,true, false, true, true,
     true, false, true, true,true, false, true, true,true, false, true, true,true, false, true, true,
     true, false, true, true,true, false, true, true,true, false, true, true,true, false, true, true,
     true, false, true, true, true, false, true, true,true, false, true, true,true, false, true, true,
     true, false, true, true, true, false, true, true,true, false, true, true,true, false, true, true,
     true, false, true, true, true, false, true, true,true, false, true, true,true, false, true, true,
     true, false, true, true, true, false, true, true,true, false, true, true,true, false, true, true,];



   @override
 Widget build(BuildContext context) {
    String binaryString = '110010101';
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.black12,
        title: Text('CHW lot1')
      ),
      
       body: SafeArea(
                child: Column(
                  mainAxisSize: MainAxisSize.max,
                  children: [

                   Stack(
                    alignment: Alignment.bottomCenter,
                   children: [


                    Container(
                      child: FutureBuilder<ParkingLot>(
                        future: futureParkingLot,
                        builder: (context, snapshot) {
                          if (snapshot.connectionState == ConnectionState.waiting) {
                            return CircularProgressIndicator();
                          } else if (snapshot.hasData) {
                            parkingLot = snapshot.data;
                            return Column(
                              children: [
                                RotatedBox(
                                  quarterTurns: rotation,
                                  child: FittedBox(
                                    child:CustomPaint(size: Size(imageWidth, imageHeight),
                                      child: Image.network(parkingLot!.lotURL),// Set the size as per your image dimensions
                                      foregroundPainter: RectanglePainter(

                                        parkingLot!.parkingStalls,
                                        imageWidth,
                                        imageHeight,
                                        avab,
                                      ),
                                    ),
                                  ),
                                ),

                              ],
                            );
                          } else {
                            return Text('Error: ${snapshot.error}');
                          }
                        },
                      ),
                    ),









                   ],
                   ),


























                      Padding(

                  padding: EdgeInsetsDirectional.fromSTEB(8, 50, 8, 8),
                  child: Container(
                    decoration: BoxDecoration(
                      color: Colors.black26,
                      borderRadius: BorderRadius.circular(3),
                      border: Border.all(
                        color: Colors.black,),),), ),



                      
                      const Padding(
                      padding: EdgeInsetsDirectional.fromSTEB(12, 12, 12, 12),
                      
                      child: Column(
                        mainAxisSize: MainAxisSize.max,
                        children: [
                          Text(
                            'Parking Lot Availability',
                            style:TextStyle(
                                  fontFamily: 'Readex Pro',
                                  letterSpacing: 1,
                                 fontSize: 16,
                                ),
                          ),
                          SingleChildScrollView(
                            scrollDirection: Axis.horizontal,
                            child: Row(
                              mainAxisSize: MainAxisSize.max,
                              mainAxisAlignment: MainAxisAlignment.end,
                              crossAxisAlignment: CrossAxisAlignment.end,
                              children: [
                                Padding(
                                  padding: EdgeInsetsDirectional.fromSTEB(
                                      0, 20, 0, 8),
                                  child: Text(
                                    'Available: ',
                                    style: TextStyle(
                                          fontFamily: 'Readex Pro',
                                          color: Colors.black,
                                          fontWeight: FontWeight.w600,
                                        ),
                                  ),
                                ),
                                Padding(
                                  padding: EdgeInsetsDirectional.fromSTEB(
                                      0, 8, 0, 8),
                                  child: Text(
                                    '354',
                                    style: TextStyle(
                                          fontFamily: 'Readex Pro',
                                          color: Color(0xFF5AEF39),
                                                                                   fontSize: 16,
                                        ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                          SingleChildScrollView(
                            scrollDirection: Axis.horizontal,
                            child: Row(
                              mainAxisSize: MainAxisSize.max,
                              children: [
                                Padding(
                                  padding: EdgeInsetsDirectional.fromSTEB(
                                      0, 8, 0, 8),
                                  child: Text(
                                    'Occupied: ',
                                    style: TextStyle(
                                          fontFamily: 'Readex Pro',
                                          color: Colors.black,
                                          fontWeight: FontWeight.w600,
                                        ),
                                  ),
                                ),
                                Padding(
                                  padding: EdgeInsetsDirectional.fromSTEB(
                                      0, 8, 0, 8),
                                  child: Text(
                                    '6',
                                    style: TextStyle(
                                          fontFamily: 'Readex Pro',
                                          color: Color(0xFFEF393C),
                                                                                   fontSize: 16,
                                        ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                          SingleChildScrollView(
                            scrollDirection: Axis.horizontal,
                            child: Row(
                              mainAxisSize: MainAxisSize.max,
                              children: [
                                Padding(
                                  padding: EdgeInsetsDirectional.fromSTEB(
                                      0, 8, 0, 8),
                                  child: Text(
                                    'Handicapped:',
                                    textAlign: TextAlign.center,
                                    style: TextStyle(
                                          fontFamily: 'Readex Pro',
                                          color: Colors.black,
                                          fontWeight: FontWeight.w600,
                                        ),
                                  ),
                                ),
                                Padding(
                                  padding: EdgeInsetsDirectional.fromSTEB(
                                      0, 8, 0, 8),
                                  child: Text(
                                    ' 0',
                                    textAlign: TextAlign.center,
                                    style: TextStyle(
                                          fontFamily: 'Readex Pro',
                                          color: Colors.blueGrey,
                                          fontWeight: FontWeight.normal,
                                         fontSize: 16,
                                        ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                  ),
                )
              
            );
  }
}

class RectanglePainter extends CustomPainter {
  final List<ParkingStalls> parkingStalls;
  final double imageWidth;
  final double imageHeight;
  final List<bool> avab; // List of availability statuses

  RectanglePainter(this.parkingStalls,  this.imageWidth, this.imageHeight, this.avab);

  @override
  void paint(Canvas canvas, Size size) {
    for (int i = 0; i < parkingStalls.length; i++) {
      final paint = Paint()
        ..style = PaintingStyle.fill;

      final paint2 = Paint()
        ..color = Colors.black87
        ..style = PaintingStyle.stroke
        ..strokeWidth = 4.0;


      final x = ((parkingStalls[i].x + 2) / imageWidth) * size.width;
      final y = ((parkingStalls[i].y + 2) / imageHeight) * size.height;
      final x2 = (parkingStalls[i].x / imageWidth) * size.width;
      final y2 = (parkingStalls[i].y / imageHeight) * size.height;

      final rect = Rect.fromPoints(Offset(x, y), Offset(x + 27, y + 76));
      final rect2 = Rect.fromPoints(Offset(x2, y2), Offset(x2 + 30, y2 + 80));

      paint.color = avab[i] ? Colors.green : Colors.red;
      canvas.drawRect(rect, paint);
      canvas.drawRect(rect2, paint2);
    }
  }
  @override
  bool shouldRepaint(CustomPainter oldDelegate) {
    return false;
  }
}