import 'dart:math';

class RandomMovie {
  final List _movieNameList = ["Inception", "Pirates", "Batman", "Family", "Formula"];

  String choiceRandomMovie() {
    int index = Random().nextInt(_movieNameList.length);
    String movieName = _movieNameList[index].toString();
    return movieName;
  }
}
