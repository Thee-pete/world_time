import 'package:http/http.dart';
import 'dart:convert';
import 'package:intl/intl.dart';

class WorldTime {

  String location; //location name fo ui
  String time; //time in that location
  String flag; //url to asset flag icon
  String url; //location url for api endpoint
  bool isDayTime;//true or false if daytime or not

  WorldTime({this.location, this.flag, this.url});

  Future<void> getTime() async {
//make request

    try {
      Response response = await get(
          'http://worldtimeapi.org/api/timezone/$url');
      Map data = jsonDecode(response.body);
      //get properties from data

      String datetime = data['datetime'];
      String offset = data['utc_offset'].substring(1,3);

      //create DateTime object
      DateTime now = DateTime.parse(datetime);
      now = now.add(Duration(hours: int.parse(offset)));

      //set time property
      isDayTime = now.hour > 6 && now.hour < 10 ? true : false ;
      time = DateFormat.jm().format(now);
    }
    catch (e) {
      print('caught error: $e');
      time = 'could not get time data';
    }
  }

}
