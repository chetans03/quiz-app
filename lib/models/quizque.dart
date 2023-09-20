class QuizQuestions {
  const QuizQuestions(this.Questions, this.Answers);
  final String Questions;
  final List<String> Answers;
  List<String> getShuffeled() {
    final List<String> shuffeled = List.of(Answers);
    shuffeled.shuffle();
    return shuffeled;
  }
}
