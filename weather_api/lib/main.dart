import 'package:flutter/material.dart';
import 'package:weather_api/screens/loading.dart';
void main() => runApp(MaterialApp(
  initialRoute: '/loading',
  routes:{
    '/loading': (context)=> Loading(),
  },
)
);

