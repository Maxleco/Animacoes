import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

class CriandoAnimacoesBasicas extends StatefulWidget {
  @override
  _CriandoAnimacoesBasicasState createState() =>
      _CriandoAnimacoesBasicasState();
}

class _CriandoAnimacoesBasicasState extends State<CriandoAnimacoesBasicas> {
  bool _status = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        title: Text("Meu App"),
      ),

      body: GestureDetector(
        onTap: () => setState(() => _status = !_status),
        child: AnimatedContainer(
          duration: Duration(milliseconds: 500),
          alignment: Alignment.center,
          height: 60,
          width: _status ? 60 : 160,
          decoration: BoxDecoration(
            color: Colors.blue,
            borderRadius: BorderRadius.circular(30),
          ),
          child: Stack(
            children: <Widget>[
              Align(
                alignment: Alignment.center,
                child: AnimatedOpacity(
                  opacity: _status ? 1 : 0,
                  duration: Duration(milliseconds: 250),
                  child: Icon(Icons.person_add, color: Colors.white),
                ),
              ),
              Align(
                alignment: Alignment.center,
                child: AnimatedOpacity(
                  opacity: _status ? 0 : 1,
                  duration: Duration(milliseconds: 250),
                  child: Text(
                    "Mensagem",
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 20,
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),

      // body: AnimatedContainer(
      //   duration: Duration(seconds: 1),
      //   color: Colors.green,
      //   padding: EdgeInsets.only(bottom: 100, top: 20),
      //   alignment: _status ? Alignment.bottomCenter : Alignment.topCenter,
      //   child: AnimatedOpacity(
      //     duration: Duration(seconds: 1),
      //     opacity: _status ? 1 : 0,
      //             child: Container(
      //       height: 50,
      //       child: Icon(
      //         Icons.airplanemode_active,
      //         size: 50,
      //         color: Colors.white,
      //       ),
      //     ),
      //   ),
      // ),

      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
      floatingActionButton: FloatingActionButton(
        backgroundColor: Colors.orangeAccent,
        foregroundColor: Colors.white,
        elevation: 6,
        child: Icon(Icons.add_box),
        onPressed: () {
          setState(() {
            _status = !_status;
          });
        },
      ),
    );
  }
}
