import 'package:flutter/material.dart';
import "package:http/http.dart" as http;
import 'package:modflutter/config/constant.dart';
import 'package:modflutter/model/activity.dart';

class Dashboard extends StatefulWidget {
  const Dashboard({Key? key}) : super(key: key);

  @override
  _DashboardState createState() => _DashboardState();
}

class _DashboardState extends State<Dashboard> {
  var data;
  @override
  void initState() {
    super.initState();
    callActivity();
  }

  Future<void> callActivity() async {
    //print('Hello World');

    var url = Uri.parse("https://www.boredapi.com/api/activity");

    var response = await http.get(url);
    setState(() {
      data = cedFromJson(response.body);
      print(data.activity);
      print(data.type);
      print(data.participants);
      print(data.price);
    });

    print(response.statusCode);
    print(response.body);
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Scaffold(
        drawer: Drawer(
          child: ListView(
            children: <Widget>[
              DrawerHeader(
                child: Text('Menu Package'),
                decoration: BoxDecoration(color: Colors.orange[400]),
              ),
              ListTile(
                title: Text('Video'),
                leading: Icon(Icons.video_collection),
                onTap: () {
                  print('Menu Video');
                  Navigator.pushNamed(context, 'video');
                },
              ),
              ListTile(
                title: Text('Image'),
                leading: Icon(Icons.image_outlined),
                onTap: () {
                  print('Menu Image');
                  Navigator.pushNamed(context, 'Image');
                },
              ),
              ListTile(
                title: Text('GPS'),
                leading: Icon(Icons.map_outlined),
                onTap: () {
                  print('Menu GPS');
                  Navigator.pushNamed(context, 'location');
                },
              )
            ],
          ),
        ),
        appBar: AppBar(
          title: Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Icon(Icons.ac_unit_outlined),
              SizedBox(
                width: 10,
              ),
              Text('Dashboard'),
            ],
          ),
        ),
        body: Column(
          children: [
            Container(
              width: 500,
              color: Colors.cyan[100],
              padding: EdgeInsets.all(30),
              child: Text(
                data?.activity ?? "กำลังโหลด...",
                style: TextStyle(
                  fontSize: 20,
                ),
                textAlign: TextAlign.center,
              ),
            ),
            Container(
              width: 500,
              color: Colors.cyan[200],
              padding: EdgeInsets.all(30),
              child: Text(
                data?.type ?? "",
                style: TextStyle(
                  fontSize: 20,
                ),
                textAlign: TextAlign.center,
              ),
            ),
            Container(
              width: 500,
              color: Colors.cyan[300],
              padding: EdgeInsets.all(30),
              child: Text(
                '${data?.participants ?? ""}',
                style: TextStyle(
                  fontSize: 20,
                ),
                textAlign: TextAlign.center,
              ),
            ),
            Container(
              width: 500,
              color: Colors.cyan[400],
              padding: EdgeInsets.all(30),
              child: Text(
                '${data?.price ?? ""}',
                style: TextStyle(
                  fontSize: 20,
                ),
                textAlign: TextAlign.center,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
