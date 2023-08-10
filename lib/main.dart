import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:smar_noty/services/notificaciones.services.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await initNotifications();
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  @override

  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Smartwatch App',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MySmartwatchApp(),
    );
  }
}

class MySmartwatchApp extends StatefulWidget {
  @override
  _MySmartwatchAppState createState() => _MySmartwatchAppState();
}

class _MySmartwatchAppState extends State<MySmartwatchApp> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Notificacion',
        style: TextStyle(fontSize:  20),),
        centerTitle: true, // Esto centrará el título 
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(
              'aqui se muestra el SMS!',
              style: TextStyle(fontSize: 18),
            ),
            SizedBox(height: 20),
            CupertinoButton(
              child: Text('notificacion'),
              onPressed: () {
                // Add your button's action here
                mostrarNotificacion();
              },
            ),
          ],
        ),
      ),
    );
  }
}
