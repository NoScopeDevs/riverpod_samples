import 'package:equatable/equatable.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'flags_model.g.dart';

@JsonSerializable()
class FlagsModel extends Equatable {
  FlagsModel({
    this.explicit,
    this.nsfw,
    this.political,
    this.racist,
    this.religious,
    this.sexist,
  });

  //Json Serializable
  factory FlagsModel.fromJson(Map<String, dynamic> json) =>
      _$FlagsModelFromJson(json);

  final bool? explicit;
  final bool? nsfw;
  final bool? political;
  final bool? racist;
  final bool? religious;
  final bool? sexist;

  @override
  List<Object?> get props => [
        explicit,
        nsfw,
        political,
        racist,
        religious,
        sexist,
      ];
}
