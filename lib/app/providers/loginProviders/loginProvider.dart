import 'package:flutter/cupertino.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

final visibility_state = StateProvider((ref) => false);
final is_loading = StateProvider((ref) => false);
final formKey = GlobalKey<FormState>();

// final validator = FutureProvider((ref)=>validate());

Future validatorFunc() async {
  Future.delayed(const Duration(seconds: 3), () {
    return true;
  });
}

emailValidator(value) {
  if (value == null || value == '') {
    return 'Please Enter a value';
  } else {
    return null;
  }
}

passwordValidator(value) {
  if (value == null || value == '') {
    return 'Please Enter a value';
  } else if (value != '1234') {
    return 'Incorrect Password';
  } else {
    return null;
  }
}

// validate()async{
//   if (formKey.currentState!.validate()){
//     Future.delayed(const Duration(seconds: 3), (){
//     return true;            
//   });
// }else{
//   return false;
// }
// }

// 