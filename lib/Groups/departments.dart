import 'package:flutter/material.dart';

class DMTPage extends StatefulWidget {

  @override
  State<DMTPage> createState() => _DMTPageState();
}

class _DMTPageState extends State<DMTPage> {
  final List<Map<String, dynamic>> _allUsers = [
    {"id": 1, "name": "music"},
    {"id": 2, "name": "house keeping"},
    {"id": 3, "name": "media"},
    {"id": 4, "name": "protocol"},
    {"id": 5, "name": "ushers"},
    {"id": 6, "name": "sound"},
    {"id": 7, "name": "E.protocol"},
    {"id": 8, "name": "prayer"},
    {"id": 9, "name": "greeters"},
    {"id": 10, "name": "security"},
  ];

  // This list holds the data for the list view
  List<Map<String, dynamic>> _foundUsers = [];
  @override
  initState() {

    _foundUsers = _allUsers;
    super.initState();
  }

  // This function is called whenever the text field changes
  void _runFilter(String enteredKeyword) {
    List<Map<String, dynamic>> results = [];
    if (enteredKeyword.isEmpty) {
      // if the search field is empty or only contains white-space, we'll display all users
      results = _allUsers;
    } else {
      results = _allUsers
          .where((user) =>
          user["name"].toLowerCase().contains(enteredKeyword.toLowerCase()))
          .toList();
      // we use the toLowerCase() method to make it case-insensitive
    }

  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
          centerTitle: true,
          leading: GestureDetector(
            onTap: (){
              Navigator.pop(context);
            },
            child: Container(
              height: 50,
              width: 50,
              child: const Icon(Icons.arrow_back_ios,
                  color: Colors.black87),
            ),
          ), title: const Text("Department",style: TextStyle(
            color: Colors.black87,
          ),
          ),
          backgroundColor: Colors.white
      ),
      body: Padding(
        padding: const EdgeInsets.all(10),
        child: Column(
          children: [
            const SizedBox(
              height: 20,
            ),
            TextField(
              onChanged: (value) => _runFilter(value),
              decoration: const InputDecoration(
                  labelText: 'Search',hoverColor: Colors.yellow, suffixIcon: Icon(Icons.search)),
            ),
            const SizedBox(
              height: 20,
            ),
            Expanded(
              child: _foundUsers.isNotEmpty
                  ? ListView.builder(
                itemCount: _foundUsers.length,
                itemBuilder: (context, index) => Card(
                  key: ValueKey(_foundUsers[index]["id"]),
                  color: Colors.green,
                  elevation: 4,
                  margin: const EdgeInsets.symmetric(vertical: 10),
                  child: ListTile(
                    leading: Text(
                      _foundUsers[index]["id"].toString(),
                      style: const TextStyle(fontSize: 24, color:Colors.white),
                    ),
                    title: Text(_foundUsers[index]['name'], style:TextStyle(
                        color:Colors.white
                    )),
                  ),
                ),
              )
                  : const Text(
                'No results found',
                style: TextStyle(fontSize: 24),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
