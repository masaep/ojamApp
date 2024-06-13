import 'package:flutter/material.dart';
import 'package:tubes/login_page.dart'; 
import 'package:tubes/halaman_produk.dart';
import 'package:tubes/detail_produk.dart';
import 'package:tubes/tambah_produk.dart';
import 'package:tubes/edit_produk.dart';
import 'package:http/http.dart' as http;

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Ojam Application',
      home: LoginPage(),
    );
  }
}
