import 'package:freezed_annotation/freezed_annotation.dart';

part 'upload_image_response.g.dart';

@JsonSerializable()
//from restapi files upload
//{
//   "originalname": "Djhv7NO - Imgur.png",
//   "filename": "f3a5.png",
//   "location": "https://api.escuelajs.co/api/v1/files/f3a5.png"
// }
class UploadImageResourse {
  UploadImageResourse({this.location});

  factory UploadImageResourse.fromJson(Map<String, dynamic> json) =>
      _$UploadImageResourseFromJson(json);

  final String? location;
}
