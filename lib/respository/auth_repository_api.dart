import 'package:twongere/modules/User.dart';
import 'package:twongere/respository/auth_repository_base.dart';

import 'package:http/http.dart' as http;
import 'package:twongere/util/app_constansts.dart';

class AuthRepositoryApi implements AuthRepositoryBase{

  

  @override
  Future<int> login({
    required String email, 
    required String password}) async{
      
    final uri = Uri.parse(AppConstansts.login);

    final payload = {
      "email": email,
      "password": password,
    };

    try{

      final res = await http.post(
        uri,
        body: payload
      );


      if(res.statusCode == 200 || res.statusCode == 201){
        print("::::::::::>> Logged in successfull:   ${res.statusCode}  ${res.body}");
        return 1;
      }else if(res.statusCode == 404){
        print("::::::::::>> User not found   ${res.statusCode}  ${res.body}");
        return 0;
      }else if(res.statusCode == 401){
        print("::::::::::>> Invalid Credentials   ${res.statusCode}  ${res.body}");
        return -1;
      }else {
        print("::::::::::>> Failed to login   ${res.statusCode}  ${res.body}");
        return -2;
      }

    }catch(err){
      print(">>>>>>>> Error loging in >>> $err");
      return -3;
    }
  }

  @override
  Future<int> verifyEmail({required String email, required String otp}) async{
    final uri = Uri.parse(AppConstansts.verifyEmail);

    final payload = {
      "email": email,
      "velification_code": otp
    };

    try{

      final res = await http.post(
        uri,
        body: payload
      );


      if(res.statusCode == 200 || res.statusCode == 201){
        print("::::::::::>> Email verified successfully:   ${res.statusCode}  ${res.body}");
        return 1;
      }else {
        print("::::::::::>> Failed verify email    ${res.statusCode}  ${res.body}");
        return 0;
      }      


    }catch(err){
      print("::::::::::>> Verifying email failed   $err");
      return -3;
    }
  }

  @override
  Future<int> signup({
    required String name, 
    required String email, 
    required String phone, 
    required String password, 
    required String gender}) async{
    final uri = Uri.parse(AppConstansts.signUp);

    final payload = {
      "name": name,
      "email": email,
      "password": password,
      "phone": phone,
      "product": "twogere",
      "gender": gender
    };

    try{

      final res = await http.post(
        uri,
        body: payload
      );


      if(res.statusCode == 200 || res.statusCode == 201){
        print("::::::::::>> User sign up successfull:   ${res.statusCode}  ${res.body}");
        return 1;
      }else if(res.statusCode == 422){
        print("::::::::::>> Account with email already exists    ${res.statusCode}  ${res.body}");
        return -1;
      }else {
        print("::::::::::>> Failed to signup    ${res.statusCode}  ${res.body}");
        return 0;
      }

    }catch(err){
      print(">>>>>>>> Error signing up >>> $err");
      return -3;
    }
  }
  
  @override
  Future<User?> getProfile({
    required String token}) {
    // TODO: implement getProfile
    throw UnimplementedError();
  }
  
}