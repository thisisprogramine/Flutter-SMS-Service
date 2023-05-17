import 'package:flutter/material.dart';
import 'package:sms_autofill/sms_autofill.dart';

class OTPScreen extends StatefulWidget {
  @override
  _OTPScreenState createState() => _OTPScreenState();
}

class _OTPScreenState extends State<OTPScreen> {

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _listenOtp();
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text('Siddhant', style: Theme.of(context).textTheme.headline6,),
            Container(
              padding: EdgeInsets.all(40.0),
              child: PinFieldAutoFill(
                codeLength: 4,
                onCodeChanged: (val) {
                  print(val);
                },
              ),
            ),
          ],
        ),
      ),
    );
  }

  void _listenOtp() async {
    await SmsAutoFill().listenForCode();
  }
}
