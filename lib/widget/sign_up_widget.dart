import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_sign_in_example/provider/google_sign_in.dart';
import 'package:provider/provider.dart';

class SignUpWidget extends StatelessWidget {
  const SignUpWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            FaIcon(
              Icons.login,
              size: 150,
              color: Colors.blue,
            ),
            SizedBox(height: 100),
            ElevatedButton.icon(
              style: ElevatedButton.styleFrom(
                primary: Colors.blue,
                minimumSize: Size(300, 50),
              ),
              onPressed: () {
                final provider =
                    Provider.of<GoogleSignInProvider>(context, listen: false);

                provider.googleLogin();
              },
              icon: FaIcon(
                FontAwesomeIcons.google,
                color: Colors.white,
              ),
              label: Text('Sign up with Google'),
            )
          ],
        ),
      ),
    );
  }
}
