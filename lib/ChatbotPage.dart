import 'dart:io';
import 'dart:convert'; 
import 'dart:typed_data';

import 'package:flutter/material.dart';
import 'package:dash_chat_2/dash_chat_2.dart';
import 'package:flutter_gemini/flutter_gemini.dart';
import 'package:image_picker/image_picker.dart';
import 'package:shared_preferences/shared_preferences.dart';

class ChatbotPage extends StatefulWidget {
  const ChatbotPage({Key? key}) : super(key: key);

  @override
  _ChatbotPageState createState() => _ChatbotPageState();
}

class _ChatbotPageState extends State<ChatbotPage> {
  final Gemini gemini = Gemini.instance;

  List<ChatMessage> messages = [];
  bool isTyping = false;

  final ChatUser currentUser = ChatUser(id: "0", firstName: "User");
  final ChatUser geminiUser = ChatUser(
    id: "1",
    firstName: "Gemini",
    profileImage:
        "https://seeklogo.com/images/G/google-gemini-logo-A5787B2669-seeklogo.com.png",
  );

  final List<String> suggestions = [
    "Types Of Yoga?",
    "Best Yoga To Help LifeStyle?",
    "Benefits Of Fit Body",
    "History Of Yoga?",
    "When Yoga Day Celebrated?",
  ];

  @override
  void initState() {
    super.initState();
    _loadMessagesFromStorage();
  }

  Future<void> _loadMessagesFromStorage() async {
    final prefs = await SharedPreferences.getInstance();
    final String? messagesJson = prefs.getString('chat_messages');
    if (messagesJson != null) {
      final List<dynamic> decodedMessages = jsonDecode(messagesJson);
      setState(() {
        messages = decodedMessages
            .map((message) => ChatMessage.fromJson(message))
            .toList();
      });
    } else {
      _sendBotGreeting(); 
    }
  }

  Future<void> _saveMessagesToStorage() async {
    final prefs = await SharedPreferences.getInstance();
    final String messagesJson =
        jsonEncode(messages.map((message) => message.toJson()).toList());
    await prefs.setString('chat_messages', messagesJson);
  }

  void _sendBotGreeting() {
    Future.delayed(const Duration(milliseconds: 800), () {
      setState(() {
        messages.insert(
          0,
          ChatMessage(
            user: geminiUser,
            createdAt: DateTime.now(),
            text:
                '👋 Hey there! I\'m here to Assist You. Ask me anything!',
          ),
        );
        _saveMessagesToStorage();
      });
    });
  }

  void _sendMessage(ChatMessage chatMessage) {
    setState(() {
      messages.insert(0, chatMessage);
      isTyping = true;
      _addTypingIndicator();
      _saveMessagesToStorage();
    });

    try {
      final String question = chatMessage.text;
      List<Uint8List>? images;

      if (chatMessage.medias?.isNotEmpty ?? false) {
        images = [
          File(chatMessage.medias!.first.url).readAsBytesSync(),
        ];
      }

      gemini.streamGenerateContent(question, images: images).listen((event) {
        String response = event.content?.parts?.fold(
              "",
              (previous, part) {
                if (part is TextPart) {
                  return "$previous ${part.text}";
                }
                return previous;
              },
            ) ??
            "🤔 I\'m here to help! Could you rephrase or ask something else?";

        response = response.trim().replaceAll('\n\n', '\n');

        final ChatMessage botMessage = ChatMessage(
          user: geminiUser,
          createdAt: DateTime.now(),
          text: response,
        );

        setState(() {
          _removeTypingIndicator();
          messages.insert(0, botMessage);
          isTyping = false;
          _saveMessagesToStorage();
        });
      });
    } catch (e) {
      debugPrint("Error: $e");
      setState(() {
        isTyping = false;
        _removeTypingIndicator();
        messages.insert(
          0,
          ChatMessage(
            user: geminiUser,
            createdAt: DateTime.now(),
            text: "⚠️ Something went wrong. Please try again.",
          ),
        );
        _saveMessagesToStorage();
      });
    }
  }

  void _addTypingIndicator() {
    final ChatMessage typingMessage = ChatMessage(
      user: geminiUser,
      createdAt: DateTime.now(),
      text: "...",
    );

    setState(() {
      messages.insert(0, typingMessage);
    });
  }

  void _removeTypingIndicator() {
    if (messages.isNotEmpty &&
        messages.first.user == geminiUser &&
        messages.first.text == "typing-indicator") {
      setState(() {
        messages.removeAt(0);
      });
    }
  }

  void _sendMediaMessage() async {
    final ImagePicker picker = ImagePicker();
    final XFile? file = await picker.pickImage(
      source: ImageSource.gallery,
    );
    if (file != null) {
      final ChatMessage chatMessage = ChatMessage(
        user: currentUser,
        createdAt: DateTime.now(),
        text: "Describe this picture?",
        medias: [
          ChatMedia(
            url: file.path,
            fileName: "",
            type: MediaType.image,
          ),
        ],
      );
      _sendMessage(chatMessage);
    }
  }

  void _sendSuggestion(String text) {
    final ChatMessage userMessage = ChatMessage(
      user: currentUser,
      createdAt: DateTime.now(),
      text: text,
    );
    _sendMessage(userMessage);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("FITNESS GUIDE"),
        backgroundColor: const Color.fromARGB(255, 20, 103, 32),
        actions: [
          IconButton(
            icon: const Icon(Icons.refresh),
            onPressed: () async {
              final prefs = await SharedPreferences.getInstance();
              await prefs.remove('chat_messages');
              setState(() {
                messages.clear();
              });
              _sendBotGreeting();
            },
          ),
        ],
      ),
      body: Column(
        children: [
          Expanded(
            child: Stack(
              children: [
                DashChat(
                  inputOptions: InputOptions(
                    trailing: [
                      IconButton(
                        onPressed: _sendMediaMessage,
                        icon: const Icon(Icons.image),
                      ),
                    ],
                  ),
                  currentUser: currentUser,
                  onSend: _sendMessage,
                  messages: messages,
                  messageOptions: const MessageOptions(showTime: true),
                ),
                if (isTyping)
                  Positioned(
                    bottom: 10,
                    right: 10,
                    child: Container(
                      padding: const EdgeInsets.all(8),
                      decoration: BoxDecoration(
                        color: Colors.black.withOpacity(0.7),
                        borderRadius: BorderRadius.circular(20),
                      ),
                      child:const Row(
                        mainAxisSize: MainAxisSize.min,
                        children:  [
                          Text("Thinking...",
                              style: TextStyle(color: Colors.white)),
                          SizedBox(width: 8),
                          CircularProgressIndicator(
                            strokeWidth: 2,
                            color: Colors.white,
                          ),
                        ],
                      ),
                    ),
                  ),
              ],
            ),
          ),
          Container(
            color: Colors.grey[200],
            padding: const EdgeInsets.symmetric(vertical: 8, horizontal: 12),
            height: 100,
            child: SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: suggestions.map((suggestion) {
                  return Padding(
                    padding: const EdgeInsets.only(right: 8.0),
                    child: ElevatedButton(
                      onPressed: () => _sendSuggestion(suggestion),
                      child: Text(suggestion),
                    ),
                  );
                }).toList(),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
