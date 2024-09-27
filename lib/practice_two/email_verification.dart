import 'package:flutter/material.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:random/practice_two/user.dart';

class EmailVerificationPage extends StatefulWidget {
  const EmailVerificationPage({super.key});
  @override
  _EmailVerificationPageState createState() => _EmailVerificationPageState();
}

class _EmailVerificationPageState extends State<EmailVerificationPage> {
  final _auth = FirebaseAuth.instance;
  User? user;

  @override
  void initState() {
    super.initState();
    user = _auth.currentUser;
    _sendVerificationEmail();
  }

  Future<void> _sendVerificationEmail() async {
    if (user != null && !user!.emailVerified) {
      await user!.sendEmailVerification();
      ScaffoldMessenger.of(context).showSnackBar(
        const SnackBar(
          content: Text('Verification email sent. Check your inbox.'),
        ),
      );
    }
  }

  Future<void> _checkEmailVerified() async {
    await user!.reload();
    setState(() {
      user = _auth.currentUser;
    });

    if (user!.emailVerified) {
      Navigator.of(context).pushReplacement(
        // Navigate to your app's home page after verification
        MaterialPageRoute(
            builder: (context) => UserScreen(
                  userEmail: user!.email!,
                )),
      );
    } else {
      // Show a message or handle accordingly
      ScaffoldMessenger.of(context).showSnackBar(
        const SnackBar(
          content: Text('Please verify your email.'),
        ),
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Verify Your Email'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            const Text(
                'A verification email has been sent to your email address. Please verify to continue.'),
            ElevatedButton(
              onPressed: _sendVerificationEmail,
              child: const Text('Resend Email'),
            ),
            ElevatedButton(
              onPressed: _checkEmailVerified,
              child: const Text('I have verified'),
            ),
          ],
        ),
      ),
    );
  }
}
