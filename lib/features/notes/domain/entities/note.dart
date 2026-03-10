class Note {
  final String id;
  final String title;
  final String content;
  final List<String> categories;

  const Note({
    required this.id,
    required this.title,
    required this.content,
    required this.categories,
  });

  Note copyWith({
    String? id,
    String? title,
    String? content,
    List<String>? categories,
  }) {
    return Note(
      id: id ?? this.id,
      title: title ?? this.title,
      content: content ?? this.content,
      categories: categories ?? this.categories,
    );
  }

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is Note && runtimeType == other.runtimeType && id == other.id;

  @override
  int get hashCode => id.hashCode;
}