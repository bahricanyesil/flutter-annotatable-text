class Annotation {
  const Annotation({
    this.id,
    this.startIndex = 0,
    this.endIndex = 0,
    this.upVote,
    this.content,
    this.createdAt,
    this.updatedAt,
  });

  factory Annotation.dummy(int id, {int? startIndex, int? endIndex}) =>
      Annotation(
        id: id.toString(),
        startIndex: startIndex ?? 12,
        endIndex: endIndex ?? 26,
        upVote: 2,
        content:
            "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book.",
        createdAt: DateTime.now().subtract(const Duration(days: 1)),
        updatedAt: DateTime.now(),
      );

  factory Annotation.fromJson(Map<String, dynamic> json) => Annotation(
        id: json['id'],
        content: json['content'],
        startIndex: json['start_index'],
        endIndex: json['end_index'],
        upVote: json['upvote'],
      );

  Annotation copyWith(
          {String? content, int? startIndex, int? endIndex, int? upVote}) =>
      Annotation(
        id: id,
        startIndex: startIndex ?? this.startIndex,
        endIndex: endIndex ?? this.endIndex,
        upVote: upVote ?? this.upVote,
        content: content ?? this.content,
        createdAt: createdAt,
        updatedAt: updatedAt,
      );

  final String? id;
  final String? content;
  final int startIndex;
  final int endIndex;
  final int? upVote;
  final DateTime? createdAt;
  final DateTime? updatedAt;

  @override
  Annotation fromJson(Map<String, dynamic> json) => Annotation.fromJson(json);

  @override
  Map<String, dynamic> get toJson => <String, dynamic>{
        'id': id,
        'content': content,
        'start_index': startIndex,
        'end_index': endIndex,
        'upvote': upVote,
        'createdAt': createdAt,
        'updatedAt': updatedAt,
      };

  @override
  List<Object?> get props => <Object?>[
        id,
        content,
        startIndex,
        endIndex,
        upVote,
        createdAt,
        updatedAt
      ];
}
