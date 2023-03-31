
import 'package:flutter/material.dart';
import 'package:hive/hive.dart';
import '../homePage.dart';
import 'editor_page.dart';
import 'note_mini.dart';
import 'package:page_transition/page_transition.dart';


class NotesPage extends StatefulWidget {
  const NotesPage({Key? key}) : super(key: key);

  @override
  State<NotesPage> createState() => _NotesPageState();
}

class _NotesPageState extends State<NotesPage> {
  final _notesBox = Hive.box('notes');

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBody: true,
      bottomNavigationBar: Row(
        children: [
          const Spacer(),
          const Opacity(
            opacity: 0.1,
            child: Padding(
              padding: EdgeInsets.only(bottom: 12.0),
              child: Text(
                'Swipe to change page'
              ),
            ),
          ),
          const Spacer()
        ],
      ),
      extendBodyBehindAppBar: true,
      appBar: AppBar(
        leading: GestureDetector(
        onTap: (){
          Navigator.push(
              context,
              MaterialPageRoute(
                  builder: (context) => HomePage()));
        },
        child: Container(
          height: 50,
          width: 50,
          child: Icon(Icons.arrow_back_ios,
              color: Colors.black87),
        ),
      ),

        automaticallyImplyLeading: false,
        centerTitle: true,
        title:  Text(
          'Your notes',style: TextStyle(
          color: Colors.green[900]),
           ),
        elevation: 0,
        backgroundColor: Colors.transparent,
      ),
      body: GestureDetector(
        onHorizontalDragEnd: (details) {
          if (details.velocity.pixelsPerSecond.dx < 1500.0) {
            Navigator.push(
                context,
                PageTransition(
                    alignment: Alignment.bottomCenter,
                    curve: Curves.easeInOut,
                    duration: const Duration(milliseconds: 600),
                    reverseDuration: const Duration(milliseconds: 600),
                    type: PageTransitionType.rightToLeftJoined,
                    child: const EditorPage(noteKey: 0, content: '', title: ''),
                    childCurrent: this.widget));
          }
        },
        child: Padding(
          padding: const EdgeInsets.all(10),
          child: GridView.count(
            crossAxisSpacing: 10,
            mainAxisSpacing: 10,
            crossAxisCount: 2,
            children: [
              GestureDetector(
                onTap: () {
                  Navigator.push(
                      context,
                      PageTransition(
                          alignment: Alignment.bottomCenter,
                          curve: Curves.easeInOut,
                          duration: const Duration(milliseconds: 600),
                          reverseDuration: const Duration(milliseconds: 600),
                          type: PageTransitionType.rightToLeftJoined,
                          child: const EditorPage(noteKey: 0, content: '', title: ''),
                          childCurrent: this.widget));
                },
                child: Material(
                  borderRadius: const BorderRadius.all(Radius.circular(20)),
                  elevation: 2,
                  shadowColor: Colors.yellow,
                  child: Container(
                    width: 10,
                    height: 150,
                    clipBehavior: Clip.antiAlias,
                    decoration: BoxDecoration(
                        color: const Color.fromARGB(54, 158, 158, 158),
                        border: Border.all(color: Colors.transparent),
                        borderRadius:  BorderRadius.all(Radius.circular(20))),
                    child:  Icon(Icons.add, color: Colors.yellow, shadows: [
                      Shadow(color: Colors.green, offset: Offset(1, 1))
                    ]),
                  ),
                ),
              ),
              for (int key in _notesBox.keys)
                GestureDetector(
                  onTap: () {
                    Navigator.push(
                        context,
                        PageTransition(
                            alignment: Alignment.bottomCenter,
                            curve: Curves.easeInOut,
                            duration: const Duration(milliseconds: 600),
                            reverseDuration: const Duration(milliseconds: 600),
                            type: PageTransitionType.rightToLeftJoined,
                            child: EditorPage(
                                noteKey: key,
                                content: _notesBox.get(key)[1],
                                title: _notesBox.get(key)[0]),
                            childCurrent: this.widget));
                  },
                  child: Material(
                    borderRadius: const BorderRadius.all(Radius.circular(20)),
                    elevation: 2,
                    shadowColor: Colors.amberAccent,
                    child: NoteMini(
                        title: _notesBox.get(key)[0],
                        content: _notesBox.get(key)[1]),
                  ),
                ),
            ],
          ),
        ),
      ),
    );
  }
}
