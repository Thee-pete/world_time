import 'package:flutter/material.dart';
import 'package:world_time/services/world_time.dart';

class ChooseLocation extends StatefulWidget {
  @override
  _ChooseLocationState createState() => _ChooseLocationState();
}

class _ChooseLocationState extends State<ChooseLocation> {

  List<WorldTime> locations =[
    WorldTime(url:'Africa/Abidjan',location:'Abidjan', flag:'day.jpg'),
    WorldTime(url:'Africa/Accra',location:'Accra', flag:'day.jpg'),
    WorldTime(url:'Africa/Algiers',location:'Algiers', flag:'day.jpg'),
    WorldTime(url:'Africa/Bissau',location:'Bissau', flag:'day.jpg'),
    WorldTime(url:'Africa/Cairo',location:'Cairo', flag:'day.jpg'),
    WorldTime(url:'Africa/Casablanca',location:'Casablanca', flag:'day.jpg'),
    WorldTime(url:'Africa/Ceuta',location:'Ceuta', flag:'day.jpg'),
    WorldTime(url:'Africa/El_Aaiun',location:'El_Aaiun', flag:'day.jpg'),
    WorldTime(url:'Africa/Johannesburg',location:'Johannesburg', flag:'day.jpg'),
    WorldTime(url:'Africa/Juba',location:'Juba', flag:'day.jpg'),
    WorldTime(url:'Africa/Khartoum',location:'Khartoum', flag:'day.jpg'),
    WorldTime(url:'Africa/Lagos',location:'Lagos', flag:'day.jpg'),
    WorldTime(url:'Africa/Maputo',location:'Maputo', flag:'day.jpg'),
    WorldTime(url:'Africa/Monrovia',location:'Monrovia', flag:'day.jpg'),
    WorldTime(url:'Africa/Nairobi',location:'Nairobi', flag:'day.jpg'),
    WorldTime(url:'Africa/Ndjamena',location:'Ndjamena', flag:'day.jpg'),
    WorldTime(url:'Africa/Sao_Tome',location:'Sao Tome', flag:'day.jpg'),
    WorldTime(url:'Africa/Tripoli',location:'Tripoli', flag:'day.jpg'),
    WorldTime(url:'Africa/Windhoek',location:'Windhoek', flag:'day.jpg'),
    WorldTime(url:'America/Adak',location:'London', flag:'day.jpg'),
    WorldTime(url:'America/Anchorage',location:'London', flag:'day.jpg'),
    WorldTime(url:'America/Araguaina',location:'London', flag:'day.jpg'),
    WorldTime(url:'America/Argentina/Buenos_Aires',location:'London', flag:'day.jpg'),
    WorldTime(url:'America/Argentina/Catamarca',location:'London', flag:'day.jpg'),
    WorldTime(url:'America/Argentina/Cordoba',location:'London', flag:'day.jpg'),
    WorldTime(url:'America/Argentina/Jujuy',location:'London', flag:'day.jpg'),
    WorldTime(url:'America/Argentina/La_Rioja',location:'London', flag:'day.jpg'),
    WorldTime(url:'America/Argentina/Mendoza',location:'London', flag:'day.jpg'),
    WorldTime(url:'America/Bahia',location:'London', flag:'day.jpg'),
    WorldTime(url:'America/Barbados',location:'London', flag:'day.jpg'),
    WorldTime(url:'America/Belem',location:'London', flag:'day.jpg'),
    WorldTime(url:'America/Cambridge_Bay',location:'London', flag:'day.jpg'),
    WorldTime(url:'America/Caracas',location:'London', flag:'day.jpg'),
    WorldTime(url:'America/Chicago',location:'London', flag:'day.jpg'),
    WorldTime(url:'America/Dawson',location:'London', flag:'day.jpg'),
    WorldTime(url:'America/Denver',location:'London', flag:'day.jpg'),
    WorldTime(url:'America/Detroit',location:'London', flag:'day.jpg'),
    WorldTime(url:'America/El_Salvador',location:'London', flag:'day.jpg'),
    WorldTime(url:'America/Guatemala',location:'London', flag:'day.jpg'),
    WorldTime(url:'America/Havana',location:'London', flag:'day.jpg'),
    WorldTime(url:'America/Indiana/Indianapolis',location:'London', flag:'day.jpg'),
    WorldTime(url:'Europe/London',location:'London', flag:'day.jpg'),
    WorldTime(url:'Europe/London',location:'London', flag:'day.jpg'),
    WorldTime(url:'Europe/London',location:'London', flag:'day.jpg'),
    WorldTime(url:'Europe/London',location:'London', flag:'day.jpg'),
    WorldTime(url:'Europe/London',location:'London', flag:'day.jpg'),
    WorldTime(url:'Europe/London',location:'London', flag:'day.jpg'),
    WorldTime(url:'Europe/London',location:'London', flag:'day.jpg'),
    WorldTime(url:'Europe/London',location:'London', flag:'day.jpg'),
    WorldTime(url:'Europe/London',location:'London', flag:'day.jpg'),
    WorldTime(url:'Europe/London',location:'London', flag:'day.jpg'),





  ];

  void updateTime(index) async{
    WorldTime instance = locations[index];
    await instance.getTime();
    //navigate to home screen
    Navigator.pop(context,{
      'location': instance.location,
      'flag': instance.flag,
      'time': instance.time,
      'isDayTime': instance.isDayTime,
    });
  }

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      backgroundColor: Colors.grey[200],
      appBar: AppBar(
        backgroundColor: Colors.blue[900],
        title: Text('Choose a location'),
        centerTitle: true,
        elevation: 0,
      ),
      body: ListView.builder(
          itemCount: locations.length,
          itemBuilder:(context, index){
            return Padding(
              padding: const EdgeInsets.symmetric(vertical: 1.0, horizontal: 4.0),

              child: Card(
                child: ListTile(
                  onTap: (){
                    updateTime(index);
                  },
                  title: Text(locations[index].location),
                  leading: CircleAvatar(
                    backgroundImage: AssetImage('assets/${locations[index].flag}'),
                  ),
                ),
              ),
            );
    }
    ),
    );
  }
}
