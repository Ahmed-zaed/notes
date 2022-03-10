import 'package:flutter/material.dart';

class NotesScreen extends StatefulWidget {
  const NotesScreen({Key? key}) : super(key: key);

  @override
  State<NotesScreen> createState() => _NotesScreenState();
}

class _NotesScreenState extends State<NotesScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        toolbarHeight: 120,
        shape: const RoundedRectangleBorder(
          borderRadius: BorderRadiusDirectional.only(
            bottomStart: Radius.circular(40),
          ),
        ),
        backgroundColor: Colors.blue,
        centerTitle: true,
        title: const Text(
          'My Notes',
          style: TextStyle(
              color: Colors.white, fontSize: 20, fontWeight: FontWeight.bold),
        ),
      ),
      body: ListView.builder(
        padding: const EdgeInsets.symmetric(vertical: 40, horizontal: 20),
        itemCount: 10,
        itemBuilder: (context, index) {
          return Padding(
            padding: const EdgeInsets.symmetric(vertical: 10),
            child: ListTile(
              tileColor: Colors.black26,
              contentPadding:
                  const EdgeInsets.symmetric(vertical: 10, horizontal: 15),
              title: const Text('Ahmed Abu Zaed'),
              subtitle: const Text('Aheeneeeee\n...\nfdfds'),
              leading: const Icon(Icons.note),
              trailing: const Icon(Icons.delete),
              shape: const RoundedRectangleBorder(
                borderRadius: BorderRadius.all(
                  Radius.circular(20),
                ),
              ),
              onTap: () {},
            ),
          );
        },
      ),
    );
  }
}
