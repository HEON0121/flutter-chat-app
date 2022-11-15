import 'package:flutter/material.dart';
import 'package:flutter_demo/screens/chat_screen.dart';
import 'package:flutter_demo/screens/main_screen.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'firebase_options.dart';


void main() async{
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title : 'Chatting app',
      theme: ThemeData(
        primarySwatch: Colors.blue
      ),
      home: StreamBuilder(
        stream: FirebaseAuth.instance.authStateChanges(),
        builder: ((context, snapshot) {
         if(snapshot.hasData){
           return ChatScreen();
         }
         return LoginSignUpScreen();
        }),
      ),
    );
  }
}
