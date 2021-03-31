import 'package:flutter/material.dart';

// Untuk Tubuh
// ignore: camel_case_types
class bodi extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    const ukuran = TextStyle(fontSize: 20);
    return ListView(
      padding: const EdgeInsets.all(32.0),
      children: <Widget>[
        Container(
            height: 400,
            width: 200,
            margin: EdgeInsets.all(20),
            child: Image.asset("images/yusuf.jpg")),
        Text("Nama : M Yusuf Affandi", style: ukuran),
        Text("Kelas : Informatika", style: ukuran),
        Text("TTL : Lamongan, 09 Agustus 2002", style: ukuran),
        Text(
          "Hobi : voly",
          style: ukuran,
        ),
        ElevatedButton(
            style: ElevatedButton.styleFrom(primary: Colors.red),
            onPressed: () {
              showDialog(
                  context: context,
                  builder: (BuildContext context) => AlertDialog(
                        title: const Text("Mantap Gayn"),
                        content: const Text("Selamat Gayn!"),
                        actions: <Widget>[
                          TextButton(
                              onPressed: () => Navigator.pop(context, "Batal"),
                              child: const Text("Batal")),
                          TextButton(
                              onPressed: () => Navigator.pop(context, "Ya"),
                              child: const Text("ya")),
                        ],
                      )).then((returnVal) {
                if (returnVal != null) {
                  ScaffoldMessenger.of(context).showSnackBar(SnackBar(
                    content: Text("Kamu Klik $returnVal"),
                    action: SnackBarAction(
                      label: "Yoi",
                      onPressed: () {},
                    ),
                  ));
                }
              });
            },
            child: const Text("Tekan Gayn", style: ukuran))
      ],
    );
  }
}
