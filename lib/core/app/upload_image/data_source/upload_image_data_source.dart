import 'package:dio/dio.dart';
import 'package:image_picker/image_picker.dart';
import 'package:mahmoud_store/core/app/upload_image/model/upload_image_response.dart';
import 'package:mahmoud_store/core/service/graphql/api_service.dart';
// DataSource مسؤول عن الرفع فقط.

// Repository مسؤول عن معالجة النتيجة (نجاح أو خطأ) وإرجاع ApiResult بشكل موحد.
// Repository بيعتبر واجهة واحدة للتعامل مع الداتا (سواء API أو Local Storage).

// بكده Cubit/Bloc يشتغل دايمًا مع Repo بدل DataSource مباشرة.
class UploadImageDataSource {
  const UploadImageDataSource(this._api);

  final ApiService _api;

  Future<UploadImageResourse> uploadImage({
    required XFile imageFile,
  }) async {
    final fromData = FormData();

    fromData.files.add(
      MapEntry('file', await MultipartFile.fromFile(imageFile.path)),
    );

    final response = await _api.uploadImage(fromData);

    return response;
  }
}
