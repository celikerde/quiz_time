import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:quiz_time/providers/primary_provider.dart';

class QuizzesScreen extends StatefulWidget {
  const QuizzesScreen({super.key});

  @override
  State<QuizzesScreen> createState() => _QuizzesScreenState();
}

class _QuizzesScreenState extends State<QuizzesScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Quizzes "),
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            ListView.builder(
              padding: const EdgeInsets.all(8),
              physics: NeverScrollableScrollPhysics(),
              shrinkWrap: true,
              itemCount: Provider.of<PrimaryProvider>(context).selectedQuestionNumber,
              itemBuilder: (BuildContext context, int index) {
                return Column(
                  children: [
                    Card(
                      child: ListTile(
                        title:Text('${index+1}. ${Provider.of<PrimaryProvider>(context).titleEditingController.text}'),
                        trailing: Wrap(
                          spacing: 8,
                          children: [
                            Icon(Icons.check,color: Colors.green,),
                            ElevatedButton(onPressed: () {}, child: Text("Solve the quiz")),
                          ],
                        ),
                      ),
                    ),
                  ],
                );
              },
            ),
          ]
        ),
      ),
    );
  }
}
