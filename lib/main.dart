import 'package:flutter/material.dart';
import 'package:islamiapp/islamiProvider.dart';
import 'package:islamiapp/ui/screens/homeIslami.dart';
import 'package:provider/provider.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (_) => ChangeTabProvider()),
      ],
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        routes: {HomeIslami.routename: (_) => HomeIslami()},
        initialRoute: HomeIslami.routename,
      ),
    );
  }
}
