import 'package:flutter/material.dart';

class GivePage extends StatelessWidget {
  const GivePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
          centerTitle: true,
          leading: GestureDetector(
            onTap: () {
              Navigator.pop(context);
            },
            child: Container(
              height: 70,
              width: 70,
              child: Icon(Icons.arrow_back_ios, color: Colors.black87),
            ),
          ),
          title: const Text(
            "Give",
            style: TextStyle(
              color: Colors.black87,
            ),
          ),
          backgroundColor: Colors.white),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.only(top: 30),
          child: Column(
            children: [
              Container(
                child: const Text(
                  'Give Your Offerings Via Momo',
                  style: TextStyle(fontSize: 20, color: Colors.black45),
                ),
              ),
              SizedBox(height: 20),
              Container(
                child: Image.asset('asset/GIVE.jpg'),
              ),
              SizedBox(height: 20),
            ],
          ),
        ),
      ),
    );
  }
}
