import 'package:flutter/material.dart';

class CronometroBotao extends StatelessWidget {
  final String texto;
  final IconData icone;
  final void Function()? click;
  const CronometroBotao(
      {super.key, required this.texto, required this.icone, this.click});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 200,
      height: 80,
      child: FloatingActionButton.large(
          backgroundColor: Colors.black,
          onPressed: this.click,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(5),
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Padding(
                padding: const EdgeInsets.only(right: 8.0),
                child: Icon(
                  icone,
                  color: Colors.white,
                ),
              ),
              SizedBox(width: 5),
              Text(
                texto,
                style: TextStyle(
                  fontSize: 30,
                  color: Colors.white,
                ),
              ),
            ],
          )),
    );
  }
}
