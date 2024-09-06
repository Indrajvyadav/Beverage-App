import 'package:beverage_app/screens/login_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

final cartProvider = StateProvider<int>((ref) => 0);
final nameProvider = StateProvider<String?>((ref) => 'User Name');

void main() {
  runApp(const ProviderScope(child: SwiftCafeApp()));
}

class SwiftCafeApp extends StatelessWidget {
  const SwiftCafeApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: LoginScreen(),
    );
  }
}
