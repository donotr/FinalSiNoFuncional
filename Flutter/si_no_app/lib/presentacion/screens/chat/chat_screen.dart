import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:si_no_app/domain/entities/message.dart';
import 'package:si_no_app/presentacion/providers/chat_provider.dart';
import 'package:si_no_app/presentacion/widgets/chat/message_burbuja.dart';
import 'package:si_no_app/presentacion/widgets/chat/otro_message_burbuja.dart';
import 'package:si_no_app/presentacion/widgets/shared/message_field_box.dart';

class ChatScreen extends StatelessWidget {
  const ChatScreen({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: const Padding(
          padding: const EdgeInsets.all(3.0),
          child: CircleAvatar(
            backgroundImage: NetworkImage("https://cdn-icons-png.flaticon.com/256/147/147144.png"),
          ),
        ),
        title: const Text("Juanito Perez"),
        centerTitle: false,
      ),
      body: _ChartView(),
    );
  }
}

class _ChartView extends StatelessWidget{

  @override
  Widget build(BuildContext context){

    final chatProvider = context.watch<ChatProvider>();
    // el parentesis aqui al final se usa para poder instanciar la clase y acceder a la clase
    
    return SafeArea(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 10),
    child: Column(
      children: [
        Expanded(
          child: ListView.builder(
            controller: chatProvider.chatScrollController,
            itemCount: chatProvider.messageList.length,
            itemBuilder: (context, index){ 
              final message = chatProvider.messageList[index];
              return (message.fromWho == FromWho.other ) 
              ?  OtroMessage(message: message,) 
              //(Property : value)
              : MyMessageBubble(message: message);
              },
              )),
              //caja de texto de mensajes
           MessageFieldBox(
            //onValue: (value) => chatProvider.sendMessage(value),
            onValue: chatProvider.sendMessage,
          )
        ],)
      ),
      );
  }
}