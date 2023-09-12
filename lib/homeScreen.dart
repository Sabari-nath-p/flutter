import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  TextEditingController controller = TextEditingController();
  List MessageList = [];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: Icon(Icons.menu),
        title: Text("My Todo"),
        actions: [
          InkWell(
              onTap: () {
                MessageList.add(controller.text);
                setState(() {});
                print(MessageList);
              },
              child: Icon(Icons.add))
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              margin: EdgeInsets.all(10),
              padding: EdgeInsets.all(8),
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(15),
                  color: Colors.green.shade400),
              child: TextField(
                controller: controller,
                decoration: InputDecoration(
                    border: InputBorder.none, hintText: "Type your message"),
              ),
            ),
            for (int i = 0; i < MessageList.length; i++)
              TaskCard(MessageList[i])
          ],
        ),
      ),
    );
  }

  TaskCard(String value) {
    return Container(
      padding: EdgeInsets.all(20),
      margin: EdgeInsets.all(20),
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20), color: Colors.white),
      child: Row(
        children: [
          Icon(Icons.verified_rounded),
          SizedBox(
            width: 20,
          ),
          Expanded(child: Text(value)),
          InkWell(
              onTap: () {
                MessageList.remove(value);
                setState(() {});
              },
              child: Icon(Icons.delete))
        ],
      ),
    );
  }
}
