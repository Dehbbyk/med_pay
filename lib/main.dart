import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:med_pay/Features/widgets/slider_screen.dart';
import 'package:med_pay/Features/widgets/splash_screen001.dart';
import 'package:med_pay/Provider/auth_provider.dart';
import 'package:med_pay/Provider/splash_provider.dart';
import 'package:med_pay/firebase_options.dart';
import 'package:provider/provider.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (_) => SplashScreenState()),
        ChangeNotifierProvider(
          create: (context) => AuthProvider(),
        ),
      ],
      child: MaterialApp(
          title: 'Flutter Demo',
          debugShowCheckedModeBanner: false,
          theme: ThemeData(
              primaryColor: Colors.blue,
              colorScheme: ColorScheme.fromSeed(seedColor: Colors.blue),
              useMaterial3: true,
              scaffoldBackgroundColor: Colors.grey.shade100),
          home: Consumer<SplashScreenState>(
            builder: (context, state, _) {
              if (state.isInitialized) {
                return ScreenOne();
              } else {
                return const SplashScreen();
              }
            },
          )),
    );
  }
}
