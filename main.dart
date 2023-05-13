import 'dart:convert';
import 'dart:developer' as developer;
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'package:flutter_bloc/flutter_bloc.dart';

void main() {
 runApp(const MyApp());
}

class MyApp extends StatefulWidget {
 const MyApp({Key? key}) : super(key: key);
 @override
 MyAppState createState() {
   return MyAppState();
  }
}

class MyAppState extends State<MyApp> {
 @override
 Widget build(BuildContext context) {
   return MaterialApp(
     title: 'Hello App',
     home: Scaffold(
       appBar: AppBar(
           leading: const FlutterLogo(),
           backgroundColor: Colors.blueGrey,
           title: const Text('My App', textAlign: TextAlign.center,)),
       body: 
       Center(
         child: ListView(children: [
            // CONTAINER JANJI
            Container( 
                padding: const EdgeInsets.all(14), 
                child: const Text('2005319, Adinda Salsabilla; 2007339, Farah Balqist; Saya berjanji tidak akan berbuat curang data atau membantu orang lain berbuat curang', textAlign: TextAlign.center ,
                style: TextStyle(
                  fontSize: 15, color: Colors.black))),
            
            // CONTAINER BUTTON
            Container( 
                padding: const EdgeInsets.all(14),
                child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                    Padding(
                      padding: const EdgeInsets.only(bottom: 20),
                      child: ElevatedButton(
                        onPressed: () {
                          //futureActivity = fetchData();
                          // aktivitas.fetchData();
                        },
                        child: const Text("Reload Daftar UMKM"),
                      ),
                    ),
                      ]
                    ),
                  ),
            
            // CARD CV GORENGAN
            Card( 
                child: ListTile(
                    onTap: () {},
                    leading: Image.network(
                        'https://flutter.github.io/assets-for-api-docs/assets/widgets/owl-2.jpg'),
                    trailing: const Icon(Icons.more_vert),
                    title: const Text('CV Gorengan Sejahtera'),
                    subtitle: const Text("makanan/minuman"),
                    tileColor: Colors.white70
                  )
                ),
            
            // CARD TOKO KELONTONG
            Card( 
                child: ListTile(
                    onTap: () {},
                    leading: Image.network(
                        'https://flutter.github.io/assets-for-api-docs/assets/widgets/owl-2.jpg'),
                    trailing: const Icon(Icons.more_vert),
                    title: const Text('Toko Kelontong Makmur'),
                    subtitle: const Text("sembako"),
                    tileColor: Colors.white70
                  )
                ),

            // CARD WARUNG MAKAN
            Card( 
                child: ListTile(
                    onTap: () {},
                    leading: Image.network(
                        'https://flutter.github.io/assets-for-api-docs/assets/widgets/owl-2.jpg'),
                    trailing: const Icon(Icons.more_vert),
                    title: const Text('Warung Makan Sederhana'),
                    subtitle: const Text("makanan/minuman"),
                    tileColor: Colors.white70
                  )
                ),

            // CARD BENGKEL MOBIL
            Card( 
                child: ListTile(
                    onTap: () {},
                    leading: Image.network(
                        'https://flutter.github.io/assets-for-api-docs/assets/widgets/owl-2.jpg'),
                    trailing: const Icon(Icons.more_vert),
                    title: const Text('Bengkel Mobil Jaya'),
                    subtitle: const Text("jasa"),
                    tileColor: Colors.white70
                  )
                )
          ]), 
       ),
  ),
);
}
}
