import 'package:flutter/material.dart';
import 'package:hive_flutter/adapters.dart';
import 'package:infolks/controller/bottom_navigtion_provider.dart';
import 'package:infolks/model/user_model.dart';
import 'package:infolks/view/auth/login_screen.dart';
import 'package:infolks/view/auth/register_screen.dart';
import 'package:infolks/view/home/root_screen.dart';
import 'package:infolks/view/splash_screen.dart';
import 'package:provider/provider.dart';

void main() async {
  await Hive.initFlutter();
  if (!Hive.isAdapterRegistered(UserModelAdapter().typeId)) {
    Hive.registerAdapter(UserModelAdapter());
  }
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(
          create: (context) => BottomNavigationProvider(),
        )
      ],
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'InFolks Machine test',
        theme: ThemeData(
          colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
          useMaterial3: true,
        ),
        home: const SplashScreen(),
        routes: {
          '/login': (context) => LoginScreen(),
          '/register': (context) => RegisterScreen(),
          '/home': (context) => RootScreen(),
        },
      ),
    );
  }
}
