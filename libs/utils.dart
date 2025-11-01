void header(String content, {int width = 20}) {
  final lrWidth = width - content.length;
  print("${'=' * lrWidth} $content ${'=' * lrWidth}");
}
