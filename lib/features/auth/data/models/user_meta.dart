import 'package:equatable/equatable.dart';
import 'package:json_annotation/json_annotation.dart';

part 'user_meta.g.dart';

@JsonSerializable(explicitToJson: true)
class UserMeta extends Equatable {
  @JsonKey(name: "token")
  final String token;

  // @JsonKey(name: "wc_token")
  // final String wcToken;

  const UserMeta({required this.token});

  factory UserMeta.fromJson(Map<String, dynamic> json) =>
      _$UserMetaFromJson(json);

  Map<String, dynamic> toJson() => _$UserMetaToJson(this);

  @override
  List<Object?> get props => [token];
  // List<Object?> get props => [token, wcToken];
}
