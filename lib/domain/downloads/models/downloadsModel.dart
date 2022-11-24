import 'package:json_annotation/json_annotation.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
part 'downloadsModel.freezed.dart';
part 'downloadsModel.g.dart';

@freezed
class Downloads with _$Downloads {
  const factory Downloads({
    @JsonKey(name: "poster_path") required String posterPath,
  }) = _Download;

  factory Downloads.fromJson(Map<String, dynamic> json) =>
      _$DownloadsFromJson(json);
}
