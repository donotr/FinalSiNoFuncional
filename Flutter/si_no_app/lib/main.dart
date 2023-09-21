import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:si_no_app/presentacion/providers/chat_provider.dart';
import 'package:si_no_app/presentacion/screens/chat/chat_screen.dart';
import 'package:si_no_app/config/theme/app_theme.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {

    

    return MultiProvider( 
      providers: [
        ChangeNotifierProvider(create: (_) => ChatProvider())
      ],
      child: MaterialApp(
      title: 'Si No App',
      debugShowCheckedModeBanner: false,
      theme: AppTheme(
        selectedColor: 3).theme(),
        home: const ChatScreen(),
)
    );

     /* home: Scaffold(
        appBar: AppBar(title:const Text('Material App Bar')
        
        ),
        body:Center(child: FilledButton.tonal(
          onPressed: (){},
           child: const Text('Click Me')),)
        )*/
    
  }
}
