//only run my app and the route is homescreen
import 'package:fan_page/providers/login_form_provider.dart';
import 'package:fan_page/screens/auth/auth_service.dart';
import 'package:fan_page/screens/auth/register_screen.dart';
import 'package:fan_page/screens/screens.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

void main() => runApp(AppState());

class AppState extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (_) => AuthService()),
        ChangeNotifierProvider(create: (_) => LoginFormProvider()),
      ],
      child: MyApp(),
    );
  }
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'My App',
        home: LoginScreen(),
        routes: {
          'login': (_) => LoginScreen(),
          'register': (_) => RegisterScreen(),
          'home': (_) => HomeScreen(),
        });
  }
}
