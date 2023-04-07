import '../../model/OtpResponseModel.dart';
import 'LoginRepo.dart';

class LoginProvider {
  final LoginRepo repo;
  LoginProvider(this.repo);

  Future<OtpResponseModel?> generateOtpApi(String mobile) async{
    var object = await repo.generateOtp(mobile);
    return OtpResponseModel.fromJson(object);
  }

}