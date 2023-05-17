import 'package:flutter/material.dart';
import 'package:sms_autofill/sms_autofill.dart';
import 'package:sms_service/screen/otp_screen.dart';

class AuthScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: Center(
          child: ElevatedButton(
            onPressed: () async {
              final signcode = await SmsAutoFill().getAppSignature;
              print(signcode);
              Navigator.of(context).push(MaterialPageRoute(builder: (builder) => OTPScreen()));
            },
            child: Text('Login', style: Theme.of(context).textTheme.headline6,),
          ),
        ),
      ),
    );
  }
}

