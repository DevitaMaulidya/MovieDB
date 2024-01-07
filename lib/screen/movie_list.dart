import 'package:flutter/material.dart';
import '../komponen/http_helper.dart';

class Movielist extends StatefulWidget {
  const Movielist({super.key});

  @override
  State<Movielist> createState() => _MovielistState();
}

class _MovielistState extends State<Movielist> {
  String result = '';
  HttpHelper helper = HttpHelper();

  @override
  Widget build(BuildContext context) {
    helper.getUpcoming().then((value){
      setState(() {
        result = value;
      });
    });
    return Scaffold(
      appBar: AppBar(
        title: Text('Daftar Film'),
      ),
      body: Text(result),
    );
  }
}
