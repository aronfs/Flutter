import 'package:flutter/material.dart';
import 'package:yes_no_app/config/helpers/get_yes_or_no.dart';
import 'package:yes_no_app/domain/entities/message.dart';

class ChatProvider extends ChangeNotifier {
  final ScrollController scrollController = ScrollController();
  final GetYesOrNo getYesOrNo = GetYesOrNo();

  List<Message> messageList = [
    Message(text: 'Hola Capitan', fromWho: FromWho.mine),
    Message(text: 'Hay Partido', fromWho: FromWho.mine)
  ];

  Future<void> herReply() async {
    final herMessage = await getYesOrNo.getAnswer();
    messageList.add(herMessage);
    notifyListeners();
    moveToScroll();
  }

  Future<void> sendMessage(String text) async {
    if (text.isEmpty) return;

    if (text.endsWith('!!')) {
      await herReply();
    }

    final newMessage = Message(text: text, fromWho: FromWho.mine);
    messageList.add(newMessage);
    //This notify change in the screen v
    notifyListeners();
    moveToScroll();
  }

  Future<void> moveToScroll() async {
    await Future.delayed(const Duration(milliseconds: 100));

    scrollController.animateTo(scrollController.position.maxScrollExtent,
        duration: const Duration(milliseconds: 500), curve: Curves.easeOut);
  }
}
