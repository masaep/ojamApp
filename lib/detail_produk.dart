import 'package:flutter/material.dart';

class DetailProduk extends StatefulWidget {
  final Map listdata;
  DetailProduk({Key? key, required this.listdata}) : super(key: key);
  //const DetailProduk({super.key});

  @override
  State<DetailProduk> createState() => _DetailProdukState();
}

class _DetailProdukState extends State<DetailProduk> {
  final formkey = GlobalKey<FormState>();
  TextEditingController id_produk = TextEditingController();
  TextEditingController nama_produk = TextEditingController();
  TextEditingController harga_produk = TextEditingController();

  @override
  Widget build(BuildContext context) {
    id_produk.text = widget.listdata['id_produk'];
    nama_produk.text = widget.listdata['nama_produk'];
    harga_produk.text = widget.listdata['harga_produk'];
    return Scaffold(
    appBar: AppBar(
    title: Text('Detail Produk'),
    backgroundColor: Colors.deepOrange,
    ),
    body: Padding(
      padding: const EdgeInsets.all(30),
      child: Card(
        elevation: 12,
        child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: 
        Column(crossAxisAlignment: CrossAxisAlignment.start, 
        children:[
          ListTile(
            title: Text('ID Produk'),
            subtitle: Text(widget.listdata['id_produk']),
          ),
           ListTile(
            title: Text('Nama Produk'),
            subtitle: Text(widget.listdata['nama_produk']),
          ),
           ListTile(
            title: Text('Harga Produk'),
            subtitle: Text(widget.listdata['harga_produk']),
          )
        ]),
      ),
    ),
    ),
    );
  }
}