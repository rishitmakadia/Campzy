import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'auth/services/auth_service.dart';
import 'package:mad_4/providers/post_provider.dart';
import 'package:mad_4/providers/theme_provider.dart';
import 'package:mad_4/core/splash_screen.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(
    MultiProvider(
      providers: [
        Provider(create: (context) => AuthService()),
        ChangeNotifierProvider(create: (context) => PostProvider()),
        ChangeNotifierProvider(create: (context) => ThemeProvider()),
      ],
      child: const MyApp(),
    ),
  );
}

class MyApp extends StatelessWidget {
  // const MyApp({super.key});
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    final themeProvider = Provider.of<ThemeProvider>(context);

    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Campzy',
      themeMode: themeProvider.themeMode, // Uses ThemeProvider's theme mode
      theme: ThemeData.light(), // Default Light Theme
      darkTheme: ThemeData.dark(), // Dark Theme
      home: SplashScreen(),
    );
  }
}
