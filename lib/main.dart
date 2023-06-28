// THis is the main function
import 'package:flutter/material.dart';
import 'package:my_page/core/features/on_boarding/presentation/on_board_screen.dart';

void main(){
  WidgetsFlutterBinding.ensureInitialized();
  // FlutterNativeSplash.preserve(widgetsBinding: widgetsBinding);
  runApp(MyApp());

}
class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
          primaryColor: Colors.blue
      ),
      debugShowCheckedModeBanner: false,
      home: HomeScreen(),
    );
  }
}
