import 'package:flutter/material.dart';

class FAQ extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<FAQ> {
  List<bool> expanded = [false, false];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
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
            "FAQs",
            style: TextStyle(
              color: Colors.black87,
            ),
          ),
          backgroundColor: Colors.white),
      body: SingleChildScrollView(
        child: Container(
            child: Column(
                children: [
          ExpansionTile(
              title: Padding(
                padding: const EdgeInsets.only(top: 20),
                child: const Text(
                  "How do i pay my tithe?",
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 22,color: Colors.black87 ),
                ),
              ),
              children: [
                Container(
                    color: Colors.white12,
                    padding: const EdgeInsets.all(10),
                    width: double.infinity,
                    child: Column(
                      children: [
                        Text(
                            '1. Verify your Tithe number at the Church’s Concierge Desk. Pick up an envelope, write\n'
                            'your tithe number on the back e.g. “MHK 0001” and the words “TITHE”',style: TextStyle(fontSize: 17),),
                        SizedBox(height: 20),
                        Text(
                            '2. Pay via the church’s approved Mobile Money platforms. At the reference section enter\n'
                            'your tithe number and month of payment. E.g. “MHK 0001 Tithe Jan”',style: TextStyle(fontSize: 17),),
                      ],
                    ),
                ),
              ]),
              SizedBox(height: 40),
          ExpansionTile(
            title: const Text(
              "What time does service start?",
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 22,color: Colors.black87),
            ),
            children: [
              Column(
                children: [
                  Container(
                    color: Colors.white12,
                    padding: const EdgeInsets.all(20),
                    width: double.infinity,
                    child: const Text(
                        "SUNDAY SERVICE\nFirst Service                Second Service\n"
                        "7:00am - 9:00am        9:30am - 11:30am",style: TextStyle(fontSize: 17)),
                  ),
                ],
              ),
              Container(
                color: Colors.white12,
                padding: const EdgeInsets.all(20),
                width: double.infinity,
                child: const Text("POWER UP\nEvery Sunday\n"
                    "11:30pm - 12:30am",style: TextStyle(fontSize: 17)),
              ),
              Container(
                color: Colors.white12,
                padding: const EdgeInsets.all(20),
                width: double.infinity,
                child: const Text("COMMAND YOUR MORNING\nMonday - Friday\n"
                    "4:55am - 6:00am",style: TextStyle(fontSize: 17)),
              ),
              Container(
                color: Colors.white12,
                padding: const EdgeInsets.all(20),
                width: double.infinity,
                child: const Text("TEACHING SERVICE\nEvery Wednesday\n"
                    "5:30pm - 6:30pm",style: TextStyle(fontSize: 17)),
              ),
              Container(
                color: Colors.white12,
                padding: const EdgeInsets.all(20),
                width: double.infinity,
                child: const Text("MORNING AURA\nEvery Saturday\n"
                    "6:00am - 8:30am",style: TextStyle(fontSize: 17)),
              ),
              Container(
                color: Colors.white12,
                padding: const EdgeInsets.all(20),
                width: double.infinity,
                child: const Text(
                    "ALL NIGHT SERVICE\n1st Friday of Each Month\n"
                    "9:00am - 4:00am",style: TextStyle(fontSize: 17)),
              )
            ],
          ),
              SizedBox(height: 40),
          ExpansionTile(
              title: const Text(
                "How do i become a member?",
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 22,color: Colors.black87),
              ),
              children: [
                Container(
                    color: Colors.white12,
                    padding: const EdgeInsets.all(20),
                    width: double.infinity,
                    child: Column(
                      children: [
                        Text(
                            'Per the church’s procedure, a prospective member has to attend a discipleship class.Afterward,the facilitator gives out membership forms. A membership number is then generated for new member',style: TextStyle(fontSize: 17),),
                      ],
                    ))
              ]),
              SizedBox(height: 40),
          ExpansionTile(
              title: const Text(
                "How can i access sermons and other church content?",
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 22,color: Colors.black87),
              ),
              children: [
                Container(
                    color: Colors.white12,
                    padding: const EdgeInsets.all(20),
                    width: double.infinity,
                    child: Column(
                      children: [
                        Text(
                            'Sermons and other church content can be found on all our social media handles. Books, CDS,Pen drives and other paraphernalia by the church can be found in the “Brain Hub Bookshop” on'
                            'the church Premises.',style: TextStyle(fontSize: 17)),
                      ],
                    ))
              ]),
              SizedBox(height: 40),
          ExpansionTile(
              title: const Text(
                "How do I contact the church?",
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 22,color: Colors.black87),
              ),
              children: [
                Container(
                    color: Colors.white12,
                    padding: const EdgeInsets.all(20),
                    width: double.infinity,
                    child: Column(
                      children: [
                        Text(
                            'To contact the church, tap on Email us on the app.'
                            ' You can send your email through the app',style: TextStyle(fontSize: 17)),
                      ],
                    ))
              ]),
              SizedBox(height: 40),
          ExpansionTile(
              title: const Text(
                "How can I give a donation to the church?",
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 22,color: Colors.black87),
              ),
              children: [
                Container(
                    color: Colors.white12,
                    padding: const EdgeInsets.all(20),
                    width: double.infinity,
                    child: Column(
                      children: [
                        Padding(
                          padding: const EdgeInsets.all(20),
                          child: Text('The church’s approved payment platforms are,',style: TextStyle(fontSize: 17)),
                        ),

                        Padding(
                          padding: const EdgeInsets.all(20),
                          child: Text('MTN MOBILE MONEY 055 794 0748,',style: TextStyle(fontSize: 17)),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(20),
                          child: Text('VODAFONE CASH 050 633 9303',style: TextStyle(fontSize: 17)),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(20),
                          child: Text('NAME; THE MAKER’S HOUSE CHAPEL INTERNATIONAL'),
                        ),
                      ],
                    ))
              ]),
        ])),
      ),
    );
  }
}
