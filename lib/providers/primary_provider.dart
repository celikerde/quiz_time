import 'package:flutter/cupertino.dart';

class PrimaryProvider with ChangeNotifier{
  final titleEditingController = TextEditingController();
  int selectedQuestionNumber = 0;
}