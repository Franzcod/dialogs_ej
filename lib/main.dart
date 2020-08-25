import 'package:flutter/material.dart';
 
void main() => runApp(MyApp());
 
class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Material App',
      home: DialogScreen(),
    );
  }
}

class DialogScreen extends StatelessWidget {


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Material App Bar'),
      ),
      body: Center(
        child: RaisedButton(
          child: Text('Abre el cuadro de dialogo'),
          onPressed: (){
            showDialog(
              context: context,
              barrierDismissible: false,
              builder: (context) => AlertDialog(
                title: Text("Este es el titulo"),
                content: Text("Contenido del cuadro de dialogo"),
                actions: <Widget>[
                  FlatButton(
                    onPressed: (){
                      Navigator.of(context).pop('Ok');
                    }, 
                    child: Text('Ok')),
                  FlatButton(
                    onPressed: (){
                      Navigator.of(context).pop('Cancel');
                    },
                    child: Text('Cancel')
                  )
                ],
              ), 
            ).then((result) => {
              print(result)
            });
          },
        ),
      ),
    );
  }
}