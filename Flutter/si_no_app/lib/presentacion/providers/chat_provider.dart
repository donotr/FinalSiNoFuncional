import 'package:flutter/material.dart';
import 'package:si_no_app/config/helpers/get_yes_no_answer.dart';
import 'package:si_no_app/domain/entities/message.dart';
import 'package:si_no_app/presentacion/widgets/chat/otro_message_burbuja.dart';

class ChatProvider extends ChangeNotifier{

  final getYesNoAnswer = GetYesNoAnswer();
  final ScrollController chatScrollController = ScrollController();

List<Message> messageList = [
Message(text: 'Que ondas', fromWho: FromWho.mine),
Message(text: 'Ya regresaste', fromWho: FromWho.mine)
];

Future<void> sendMessage (String text) async{
  if(text.isEmpty) return;

  final newMessage = Message(text: text, fromWho: FromWho.mine);
  messageList.add(newMessage);
  if(text.endsWith('?')){
    await otherReply();
  }
  notifyListeners();
  moveScrollToBottom();
}

Future<void> moveScrollToBottom() async{
  await Future.delayed(const Duration(milliseconds: 100));
  chatScrollController.animateTo(
  chatScrollController.position.maxScrollExtent,
  duration: const Duration(milliseconds: 300),
  curve: Curves.easeOut
  );
}

Future<void> otherReply() async{
  final otherMessage = await getYesNoAnswer.getAnswer();
  messageList.add(otherMessage);
  notifyListeners();
  moveScrollToBottom();
}

}