import 'dart:ui';
import 'package:flutter/material.dart';

class ChatScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Column(
            children: [
              //  App Bar
              Container(
                padding:
                    EdgeInsets.only(top: 40, left: 16, right: 16, bottom: 8),
                decoration: BoxDecoration(
                  color: Colors.white,
                  border: Border(
                    bottom: BorderSide(color: Colors.grey.shade300, width: 1),
                  ),
                ),
                child: Row(
                  children: [
                    Icon(Icons.arrow_back,
                        color: Colors.black, size: 24), // السهم
                    SizedBox(width: 8),
                    Text(
                      "Chat",
                      style: TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.bold,
                          color: Colors.black),
                    ),
                  ],
                ),
              ),

              // Messages List
              Expanded(
                child: ListView(
                  padding: EdgeInsets.symmetric(horizontal: 16, vertical: 10),
                  children: [
                    buildChatBubble("Hello chatGPT, how are you today?", true),
                    buildChatBubble(
                        "Hello, I'm fine. How can I help you?", false),
                    buildChatBubble(
                        "What is the best programming language?", true),
                    buildChatBubble(
                      "There are many programming languages in the market that are used in designing and building websites, various applications and other tasks.",
                      false,
                    ),
                    buildChatBubble("So explain to me more", true),
                  ],
                ),
              ),
            ],
          ),

          // Input Box behined the bottom
          Positioned(
            bottom: 70,
            left: 16,
            right: 16,
            child: ClipRect(
              child: BackdropFilter(
                filter: ImageFilter.blur(sigmaX: 5, sigmaY: 5),
                child: Opacity(
                  opacity: 0.6,
                  child: buildChatBubble(
                    "There are many programming languages in the market that are used in designing...",
                    false,
                  ),
                ),
              ),
            ),
          ),

          //  Bottom Message Box
          Positioned(
            bottom: 80,
            left: 8,
            right: 8,
            child: Container(
              padding: EdgeInsets.symmetric(horizontal: 12),
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(30),
                boxShadow: [
                  BoxShadow(
                    color: Colors.black12,
                    blurRadius: 4,
                    offset: Offset(0, 2),
                  ),
                ],
              ),
              child: Row(
                children: [
                  Expanded(
                    child: TextField(
                      decoration: InputDecoration(
                        hintText: "Write your message",
                        border: InputBorder.none,
                      ),
                    ),
                  ),
                  Container(
                    padding: EdgeInsets.all(10),
                    decoration: BoxDecoration(
                      color: Colors.green,
                      shape: BoxShape.circle,
                    ),
                    child: Icon(Icons.send, color: Colors.white, size: 20),
                  ),
                ],
              ),
            ),
          ),

          // Bottom Navigation Bar
          Positioned(
            bottom: 0,
            left: 0,
            right: 0,
            child: Image.asset(
              'assets/Bottom Navv.png',
              fit: BoxFit.fitWidth,
            ),
          ),
        ],
      ),
    );
  }

  //  Widget for build the chats as designed
  Widget buildChatBubble(String message, bool isMe) {
    return Align(
      alignment: isMe ? Alignment.centerRight : Alignment.centerLeft,
      child: Container(
        margin: EdgeInsets.symmetric(vertical: 4),
        padding: EdgeInsets.symmetric(horizontal: 14, vertical: 10),
        decoration: BoxDecoration(
          color: isMe ? Colors.green : Colors.grey.shade200,
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(16),
            topRight: Radius.circular(16),
            bottomLeft: isMe ? Radius.circular(16) : Radius.zero,
            bottomRight: isMe ? Radius.zero : Radius.circular(16),
          ),
        ),
        constraints: BoxConstraints(maxWidth: 250),
        child: Text(
          message,
          style: TextStyle(
            color: isMe ? Colors.white : Colors.black,
            fontSize: 14,
          ),
        ),
      ),
    );
  }
}
