import 'package:flutter/material.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:random/practice_three/practice.dart';
import 'package:random/practice_two/signup.dart';
import 'package:random/practice_two/user_authentication.dart';
import 'package:google_fonts/google_fonts.dart';

var kColorScheme = ColorScheme.fromSeed(
    seedColor: const Color.fromARGB(234, 23, 94, 200),
    brightness: Brightness.dark,
    surface: const Color.fromARGB(123, 32, 123, 135));

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  try {
    await Firebase.initializeApp();

    runApp(
      const ProviderScope(child: MyApp()),
    );
  } catch (e) {
    print('Error: $e');
  }
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      // theme: ThemeData().copyWith(
      //   colorScheme: kColorScheme,
      //   scaffoldBackgroundColor: kColorScheme.onSecondary,
      //   textTheme: GoogleFonts.latoTextTheme(
      //     Theme.of(context).textTheme,
      //   ),
      // ),
      title: 'Random',
      home: Practice(),
    );
  }
}

class MasterPainter extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    Paint paint13 = Paint();
    paint13.strokeWidth = 2;
    paint13.color = Colors.black;
    paint13.style = PaintingStyle.stroke;

    Path path13 = Path();
    path13.moveTo(0, 0);
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    return false;
  }
}
