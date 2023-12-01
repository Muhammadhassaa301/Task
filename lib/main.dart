import 'package:flutter/material.dart';
import 'package:flutter_stripe/flutter_stripe.dart';
import 'package:paymentmethod/Sign_up_screen.dart';

void main() {
  Stripe.publishableKey =
      "pk_test_51M6zKNB3RqMD3YeSiorXM9b2y2XScGGHAGgd0BZiUlwWi5A3DgM47k9vgR6GyiAZFEstamaB3R9w5NF4HYhmQ4Pg00TcPUW2Fn";
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: SignUpScreeen(),
    );
  }
}
