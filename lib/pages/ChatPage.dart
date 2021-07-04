//import 'dart:ui' as prefix0;

import 'package:farme_app/model/Chat.dart';
import 'package:flutter/material.dart';
import 'package:flutter_icons/flutter_icons.dart';

import '../constants.dart';

class ChatPage extends StatelessWidget {
  final _chats = [
    Chat(
      userPhotoUrl:
          'https://images.unsplash.com/photo-1506794778202-cad84cf45f1d?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=634&q=80',
      username: 'Pak Steven',
      lastMessage: 'Hi nice to see you again!!',
      lastMessageDate: '02 Des',
      isOnline: true,
    ),
    Chat(
      userPhotoUrl:
          'http://www.freakingnews.com/pictures/98000/Ted-Danson-big-head--98266.jpg',
      username: 'Pak Huran',
      lastMessage: 'Hi nice to see you again!!',
      lastMessageDate: '02 Des',
      isOnline: true,
    ),
    Chat(
      userPhotoUrl:
          'http://www.freakingnews.com/pictures/98000/George-Bush-big-head--98295.jpg',
      username: 'Bu Zuidah',
      lastMessage: 'Hi nice to see you again!!',
      lastMessageDate: '02 Des',
      isOnline: false,
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        centerTitle: true,
        title: Text(
          'Chat',
          style: TextStyle(
            color: kTextGrayColor,
            fontWeight: FontWeight.bold,
            fontSize: 25,
          ),
        ),
        actions: <Widget>[
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: Icon(
              FontAwesome.search,
              color: Colors.black,
            ),
          )
        ],
      ),
      body: Container(
        color: Colors.white,
        child: ListView.separated(
            separatorBuilder: (context, count) {
              return Divider(
                color: kGoodGrayColor,
              );
            },
            itemCount: 3,
            itemBuilder: (context, count) {
              Chat chat = _chats[count];
              return ChatItem(
                chat: chat,
              );
            }),
      ),
    );
  }
}

class ChatItem extends StatelessWidget {
  final Chat chat;

  const ChatItem({this.chat});

  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: Text(
        chat.username,
        style: TextStyle(
          fontSize: 18,
          color: kTextGrayColor,
          fontWeight: FontWeight.bold,
        ),
      ),
      leading: CircleAvatar(
        radius: 25,
        backgroundImage: NetworkImage(chat.userPhotoUrl),
      ),
      subtitle: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: <Widget>[
          Text(
            chat.lastMessage,
            overflow: TextOverflow.ellipsis,
            style: TextStyle(
              color: kTextLightGrayColor,
              fontSize: 16,
              fontWeight: FontWeight.w400,
            ),
          ),
          Text(
            chat.lastMessageDate,
            overflow: TextOverflow.ellipsis,
            style: TextStyle(
              color: kTextGrayColor,
              fontSize: 16,
              fontWeight: FontWeight.w600,
            ),
          ),
        ],
      ),
      trailing: Visibility(
        maintainAnimation: true,
        maintainState: true,
        maintainSize: true,
        visible: chat.isOnline != null ? chat.isOnline : false,
        child: CircleAvatar(
          radius: 5,
          backgroundColor: kGoodGreenColor,
        ),
      ),
    );
  }
}
