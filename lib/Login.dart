import 'package:flutter/material.dart';
import 'package:new_project_flutter/Verification.dart';

class Login extends StatelessWidget {
  @override
  const Login({super.key});

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
            const SizedBox(height: 72),
            ClipRRect(
              borderRadius: BorderRadius.circular(10),
              child: Stack(
                children: [
                  Positioned.fill(
                    child: Container(
                      decoration: BoxDecoration(
                        gradient: LinearGradient(
                          begin: Alignment.centerLeft,
                          end: Alignment.centerRight,
                          colors: <Color>[
                            Color(0xff27AE63).withOpacity(0.2),
                            Color(0xff27AE9E).withOpacity(0.2),
                          ],
                        ),
                      ),
                    ),
                  ),
                  SizedBox(
                    width: 253,
                    height: 50,
                    child: TextField(
                      decoration: InputDecoration(
                        border: OutlineInputBorder(),
                        labelText: 'Телефон',
                        labelStyle: TextStyle(
                          fontSize: 16,
                          color: Colors.white,
                          fontFamily: 'Montserrat',
                          fontWeight: FontWeight.w400,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            const SizedBox(height: 25),
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
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) =>  const Verification(),
                          ),
                        );
                      },
                      child: Text(
                        'Далее',
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
