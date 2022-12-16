class Question {
  final id;
  final title;
  final userId;
  final contentText;
  final List<String> images;

  const Question(
  {
    required this.id,
    required this.title,
    required this.userId,
    required this.contentText,
    required this.images
  });
}