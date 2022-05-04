import 'package:flutter/cupertino.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

var visibility_state = StateProvider<bool>((ref) => false);

var is_loading = StateProvider((ref) => false);
GlobalKey<FormState> formKey = GlobalKey<FormState>();

var validator = FutureProvider<bool>((ref) => validate());

emailValidator(value) {
  if (value == null) {
    return 'Please Enter a value';
  } else {
    return null;
  }
}

passwordValidator(value) {
  if (value == null || value == '') {
    return 'Please Enter a value';
  } else if (value == '1234') {
    return null;
  } else {
    return 'Please Enter a value';
  }
}

validate() async {
  bool validated = formKey.currentState!.validate();

  if (validated) {
    Future.delayed(const Duration(seconds: 3), () {
      return true;
    });
  }
}
