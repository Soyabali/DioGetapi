import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
void main(){
  runApp(const MyApp());
}
class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              TextButton(onPressed: (){
                fetchData();
              }, child: Text('Get Data'))
            ],
          ),
        ),
      ),
    );
  }
}
void fetchData() async{
  var dio = Dio();
  var response = await dio.get('https://jsonplaceholder.typicode.com/posts');
  print(response.statusCode);
  print(response.data.toString());
}

