import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;


class Loading extends StatefulWidget {
  @override
  _LoadingState createState() => _LoadingState();
}

class _LoadingState extends State<Loading> {


  Future<void> getWeather() async {
      var reponse = await http.read("http://api.openweathermap.org/data/2.5/weather?id=2172797&&APPID=4a600954a47032546a919c58fb158bb8");



  }
  void initState(){
    super.initState();
    getWeather();

  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.green,
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(100.0),
          child: Column(
            children: [

              SizedBox(height: 15,),
              Text(
                'Loading',
                style: TextStyle(
                  fontSize: 25.0,
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}