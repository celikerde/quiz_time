import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text("QUIZ TIME"),
      ),
      drawer: SafeArea(
        child: Drawer(
          backgroundColor: Colors.blue,
          child: Padding(
            padding: EdgeInsets.all(8.0),
            child: ListView(
              padding: EdgeInsets.all(8),
              children: [
                Card(
                  child: ListTile(
                    trailing: Icon(Icons.home),
                    title: Text('Ana Sayfa'),
                    onTap: () {
                      // Then close the drawer
                      Navigator.pop(context);
                    },
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
      body: Stack(
        children: [
          Image.asset(
            "assets/images/home_image.jpg",
            fit: BoxFit.cover,
            height: double.infinity,
            width: double.infinity,
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Center(child: FittedBox(fit: BoxFit.fitWidth, child: Text("WELCOME to QUIZ TIME!",style: TextStyle(fontSize: 48)))),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  ElevatedButton(
                    onPressed: () {
                      Navigator.pushNamed(context,'/questionsScreen');
                      },
                      child: Text("Prepare a Quiz",style: TextStyle(fontSize: 28))
                  ),
                  ElevatedButton(
                    onPressed: () {},
                    child: Text("Solve a Quiz",style: TextStyle(fontSize: 28)),
                  ),
                ],
              ),
            ],
          ),
        ]
      )
    );
  }
}
