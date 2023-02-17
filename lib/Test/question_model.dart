class Question {
  final String questionText;
  final List<Answer> answersList;

  Question(this.questionText, this.answersList);
}

class Answer {
  final String answerText;
  final int mark;

  Answer(this.answerText, this.mark);
}

List<Question> getQuestions() {
  List<Question> list = [];
  //ADD questions and answer here

  list.add(Question(
    "Little interest or pleasure in doing things?",
    [
      Answer("NOT AT ALL", 0),
      Answer("SEVERAL DAYS", 1),
      Answer("MORE THAN HALF THE DAYS", 2),
      Answer("NEARLY EVERY DAY", 3),
    ],
  ));

  list.add(Question(
    "Feeling down, depressed, or hopeless",
    [
      Answer("NOT AT ALL", 0),
      Answer("SEVERAL DAYS", 1),
      Answer("MORE THAN HALF THE DAYS", 2),
      Answer("NEARLY EVERY DAY", 3),
    ],
  ));

  list.add(Question(
    "Trouble falling or staying asleep, or sleeping too much",
    [
      Answer("NOT AT ALL", 0),
      Answer("SEVERAL DAYS", 1),
      Answer("MORE THAN HALF THE DAYS", 2),
      Answer("NEARLY EVERY DAY", 3),
    ],
  ));

  list.add(Question(
    "Feeling tired or having little energy",
    [
      Answer("NOT AT ALL", 0),
      Answer("SEVERAL DAYS", 1),
      Answer("MORE THAN HALF THE DAYS", 2),
      Answer("NEARLY EVERY DAY", 3),
    ],
  ));

  list.add(Question(
    "Poor appetite or overeating",
    [
      Answer("NOT AT ALL", 0),
      Answer("SEVERAL DAYS", 1),
      Answer("MORE THAN HALF THE DAYS", 2),
      Answer("NEARLY EVERY DAY", 3),
    ],
  ));

  list.add(Question(
    "Feeling bad about yourself - or that you are a failure or have let yourself or your family down",
    [
      Answer("NOT AT ALL", 0),
      Answer("SEVERAL DAYS", 1),
      Answer("MORE THAN HALF THE DAYS", 2),
      Answer("NEARLY EVERY DAY", 3),
    ],
  ));

  list.add(Question(
    "Trouble concentrating on things, such as reading the newspaper or watching television",
    [
      Answer("NOT AT ALL", 0),
      Answer("SEVERAL DAYS", 1),
      Answer("MORE THAN HALF THE DAYS", 2),
      Answer("NEARLY EVERY DAY", 3),
    ],
  ));

  list.add(Question(
    "Moving or speaking so slowly that other people could have noticed\nOr the opposite - being so fidgety or restless that you have been moving around a lot more than usual",
    [
      Answer("NOT AT ALL", 0),
      Answer("SEVERAL DAYS", 1),
      Answer("MORE THAN HALF THE DAYS", 2),
      Answer("NEARLY EVERY DAY", 3),
    ],
  ));

  list.add(Question(
    "Thoughts that you would be better off dead, or of hurting yourself",
    [
      Answer("NOT AT ALL", 0),
      Answer("SEVERAL DAYS", 1),
      Answer("MORE THAN HALF THE DAYS", 2),
      Answer("NEARLY EVERY DAY", 3),
    ],
  ));

  list.add(Question(
    "If you checked off any problems, how difficult have these problems made it for you at work, home, or with other people?",
    [
      Answer("NOT DIFFICULT AT ALL", 0),
      Answer("SOMEWHAT DIFFICULT", 0),
      Answer("VERY DIFFICULT", 0),
      Answer("EXTREMELY DIFFICULT", 0),
    ],
  ));

  return list;
}
