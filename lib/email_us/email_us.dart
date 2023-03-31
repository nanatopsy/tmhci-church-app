import 'package:flutter/material.dart';
import 'package:flutter_email_sender/flutter_email_sender.dart';
import 'package:image_picker/image_picker.dart';

import 'dart:async';
import 'dart:io';




class EmailUs extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<EmailUs> {
  List<String> attachments = [];
  bool isHTML = false;

  final _recipientController = TextEditingController(
    text: 'mailto:tmh.digital2015@gmail.com',
  );

  final _subjectController = TextEditingController(text: 'The subject');

  final _bodyController = TextEditingController(
    text: 'body.',
  );

  final GlobalKey<ScaffoldState> _scaffoldKey = GlobalKey<ScaffoldState>();

  Future<void> send() async {
    final Email email = Email(
      body: _bodyController.text,
      subject: _subjectController.text,
      recipients: [_recipientController.text],
      attachmentPaths: attachments,
    );


    try {
      await FlutterEmailSender.send(email);
    } catch (error) {
    }

    if (!mounted) return;

  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(primaryColor: Colors.black87),
      home: Scaffold(
        key: _scaffoldKey,
        appBar: AppBar(
          centerTitle: true,
          backgroundColor: Colors.white,
          leading: GestureDetector(
            onTap: (){
              Navigator.pop(context);
            },
            child: Container(
              height: 50,
              width: 70,
              child: Icon(Icons.arrow_back_ios,
                  color: Colors.black87),
            ),
          ),
          title: Text('Email us',style: TextStyle(
            color: Colors.black87,
          ),
          ),
          actions: <Widget>[
            IconButton(
              icon: Icon(Icons.attach_file,color: Colors.black87,),
              onPressed: _openImagePicker,
            ),
            SizedBox(
              width: 40,
            ),
            IconButton(
              onPressed: send,
              icon: Icon(Icons.send,color: Colors.black87,),
            ),

          ],
        ),
        body: Padding(
          padding: EdgeInsets.all(8.0),
          child: Column(
            mainAxisSize: MainAxisSize.max,
            // mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[
              Padding(
                padding: EdgeInsets.all(8.0),
                child: TextField(
                  controller: _recipientController,
                  decoration: InputDecoration(
                    border: OutlineInputBorder(),
                    labelText: 'Recipient',
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsets.all(8.0),
                child: TextField(
                  controller: _subjectController,
                  decoration: InputDecoration(
                    border: OutlineInputBorder(),
                    labelText: 'Subject',
                  ),
                ),
              ),
              Expanded(
                child: Padding(
                  padding: EdgeInsets.all(8.0),
                  child: TextField(
                    controller: _bodyController,
                    maxLines: null,
                    expands: true,
                    textAlignVertical: TextAlignVertical.top,
                    decoration: InputDecoration(
                        labelText: 'Body', border: OutlineInputBorder()),
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsets.all(8.0),
                child: Wrap(
                  children: <Widget>[
                    for (var i = 0; i < attachments.length; i++)
                      Row(
                        mainAxisSize: MainAxisSize.min,
                        children: <Widget>[
                          Expanded(
                              flex: 0,
                              child: Container(
                                margin: EdgeInsets.all(10),
                                width: 100,
                                height: 100,
                                child: Image.file(File(attachments[i]),
                                    fit: BoxFit.cover),
                              )),
                          IconButton(
                            icon: Icon(Icons.remove_circle),
                            onPressed: () => {_removeAttachment(i)},
                          )
                        ],
                      ),

                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Future _openImagePicker() async {
    final pick = await ImagePicker().getImage(source: ImageSource.gallery);
    if (pick != null) {
      setState(() {
        attachments.add(pick.path);
      });
    }
  }

  void _removeAttachment(int index) {
    setState(() {
      attachments.removeAt(index);
    });
  }
}
