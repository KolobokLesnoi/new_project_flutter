import 'package:flutter/material.dart';
import 'package:flutter_otp_text_field/flutter_otp_text_field.dart';

class Verification extends StatelessWidget {
  const Verification({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: const BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
            colors: <Color>[
              Color(0xff0A3137),
              Color(0xff094A46),
            ],
          ),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  'СВАЙП',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                      fontSize: 41.62,
                      color: Colors.white,
                      fontWeight: FontWeight.w900,
                      fontFamily: 'Montserrat'),
                ),
                // ),
              ],
            ),
            const SizedBox(height: 40),
            Text(
              'Введите код который мы\n отправили на указаный\n вами номер телефона',
              textAlign: TextAlign.center,
              style: TextStyle(
                fontWeight: FontWeight.w400,
                fontSize: 14,
                color: Colors.white,
                fontFamily: 'Montserrat',
              ),
            ),
            const SizedBox(height: 55),
            OtpTextField(
              showFieldAsBox: false,
              numberOfFields: 4,
              focusedBorderColor: Colors.white,
              borderWidth: 2,
              borderColor: Colors.white,
              textStyle: TextStyle(
                fontWeight: FontWeight.w400,
                fontSize: 40.6,
                color: Colors.white,
                fontFamily: 'Montserrat',
              ),
            ),
            const SizedBox(height: 55),
            ClipRRect(
              borderRadius: BorderRadius.circular(10),
              child: Stack(
                children: [
                  Positioned.fill(
                    child: Container(
                      decoration: BoxDecoration(
                        gradient: LinearGradient(
                          begin: Alignment.topCenter,
                          end: Alignment.bottomCenter,
                          colors: <Color>[
                            Color(0xff56C385),
                            Color(0xff41BFB5),
                          ],
                        ),
                      ),
                    ),
                  ),
                  SizedBox(
                    width: 253,
                    height: 50,
                    child: TextButton(
                      onPressed: () {},
                      child: Text(
                        'Войти',
                        style: TextStyle(
                          fontSize: 16,
                          color: Colors.white,
                          fontFamily: 'Montserrat',
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
