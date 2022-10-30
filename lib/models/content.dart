class Content {
  late String model;
  late String extra;
  late String url;
  late int rScore;
  late int nScore;

  Content({
    required this.model,
    required this.extra,
    required this.url,
    required this.rScore,
    required this.nScore,
  });

  Content.fromMap(Map<String, dynamic>? map) {
    model = map?['model'] ?? '';
    rScore = map?['rScore'] ?? 0.0;
    nScore = map?['nScore'] ?? 0.0;
  }
}
