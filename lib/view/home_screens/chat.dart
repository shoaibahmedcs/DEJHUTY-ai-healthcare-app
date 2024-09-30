import 'package:flutter/material.dart';
import 'package:chat_bubbles/chat_bubbles.dart';

class ChatsScreen extends StatefulWidget {
  const ChatsScreen({super.key});

  @override
  State<ChatsScreen> createState() => _ChatsScreenState();
}

class _ChatsScreenState extends State<ChatsScreen> {
  bool chatIsSelected = false;
  final TextEditingController _controller = TextEditingController();

  List<Map<String, String>> messages = [
    {'sender': 'user', 'text': 'Let\'s get lunch. How about pizza?'},
    {'sender': 'bot', 'text': 'Let\'s do it! I am in a meeting until noon.'},
    {'sender': 'user', 'text': 'That\'s perfect. There\'s a new place on Main St I\'ve been wanting to check out. I hear their hawaiian pizza is awesome!'},
    {'sender': 'bot', 'text': 'I don\'t know why people are so anti pineapple pizza. I kind of like it.'},
  ];

  void _sendMessage() {
    if (_controller.text.isNotEmpty) {
      setState(() {
        messages.add({'sender': 'user', 'text': _controller.text});
        messages.add({'sender': 'bot', 'text': 'This is a dummy reply.'});
        _controller.clear();
      });
    }
  }

  void selectChat() {
    setState(() {
      chatIsSelected = true;
    });
  }

  @override
  Widget build(BuildContext context) {
    return (!chatIsSelected) ? Column(
      children: [
        Container(
          color: const Color(0xff3A9864),
          height: 40,
          width: double.infinity,
          alignment: Alignment.center,
          child: const Text('Chat',
            style: TextStyle(
                color: Colors.white,
                fontSize: 25
            ),
          ),
        ),
        Expanded(
          child: SingleChildScrollView(
            child: Column(
              children: [
                Chats(),
                const SizedBox(
                  height: 10,
                ),
                Chats(),
                const SizedBox(
                  height: 10,
                ),
                Chats(),
                const SizedBox(
                  height: 10,
                ),
                Chats(),
                const SizedBox(
                  height: 10,
                ),
                Chats(),
                const SizedBox(
                  height: 10,
                ),
                Chats(),
                const SizedBox(
                  height: 10,
                ),
                Chats(),
                const SizedBox(
                  height: 10,
                ),
              ],
            ),
          ),
        )

      ],
    )
        :
    Container(
      //add background image
      decoration: const BoxDecoration(
        image: DecorationImage(
          image: AssetImage('assets/images/chat_background.png'),
          fit: BoxFit.cover,
        ),
      ),
      child: Column(
        children: [
          Container(
            padding: const EdgeInsets.all(10),
            color: const Color(0xff3A9864),
            width: double.infinity,
            alignment: Alignment.center,
            child: Row(
              children: [
                CircleAvatar(
                  radius: 30,
                    child: Image.asset('assets/images/inside_chat.png', height: 100, width: 100
                      ,)),
                const SizedBox(width: 10,),
                const Text('Mujtaba Shaikh',
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 25
                  ),
                ),
                const Spacer(),
                IconButton(onPressed: (){}, icon: const Icon(Icons.info), color: Colors.white, iconSize: 35
                ),
              ],
            )
          ),
          Expanded(
            child: ListView.builder(
              reverse: true,
              padding: const EdgeInsets.all(15.0),
              itemCount: messages.length,
              itemBuilder: (context, index) {
                final message = messages[messages.length - 1 - index];
                bool isUserMessage = message['sender'] == 'user';
                return Align(
                  alignment: isUserMessage
                      ? Alignment.centerRight
                      : Alignment.centerLeft,
                  // child: Container(
                  //   width: MediaQuery.of(context).size.width * 0.8,
                  //   margin: EdgeInsets.symmetric(vertical: 5.0),
                  //   padding: EdgeInsets.all(12.0),
                  //   decoration: BoxDecoration(
                  //     color: isUserMessage ? Color(0xff3A9864) : Color(0xffB5DAC6),
                  //     borderRadius: BorderRadius.circular(15.0),
                  //   ),
                  //   child: Text(message['text']!,
                  //   style: TextStyle(
                  //     color: isUserMessage ? Colors.white : Color(0xff000000),
                  //   ),
                  //   ),
                  // ),
                  child: BubbleSpecialThree(
                    text: message['text']!,
                    color: isUserMessage ? const Color(0xff3A9864) : const Color(0xffB5DAC6),
                    tail: true,
                    isSender: isUserMessage,
                    textStyle: TextStyle(
                        color: isUserMessage ? Colors.white : const Color(0xff000000),
                        fontSize: 16
                    ),
                  ),
                );
              },
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 15.0, vertical: 8),
            child: Row(
              children: [
                Expanded(
                  child: SizedBox(
                    height: 50,
                    child: TextField(
                      controller: _controller,
                      decoration: InputDecoration(
                        hintText: 'Type your message',
                        prefixIcon: const Icon(
                          Icons.emoji_emotions_outlined,
                          color: Color(0xff3A9864),
                        ),
                        // Apply green border when the TextField is not focused
                        enabledBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(50.0),
                          borderSide: const BorderSide(
                            color: Color(0xff3A9864), // Green border color
                            width: 2.0,
                          ),
                        ),
                        // Apply default behavior when the TextField is focused
                        focusedBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(50.0),
                          borderSide: const BorderSide(
                            color: Color(0xff3A9864), // Blue border when focused (or customize as needed)
                            width: 2.0,
                          ),
                        ),
                        filled: true,
                        fillColor: Colors.white,
                        suffixIcon: Row(
                          mainAxisSize: MainAxisSize.min,
                          children: [
                            IconButton(onPressed: () {}, icon: const Icon(Icons.mic, color: Color(0xff3A9864))),
                            IconButton(
                              icon: const Icon(Icons.send, color: Color(0xff3A9864)),
                              onPressed: _sendMessage,
                            ),
                          ],
                        ),
                      ),
                    )
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  Widget Chats(){
    return GestureDetector(
      onTap: (){
        selectChat();
      },
      child: Container(
        child: Row(
          children: [
            Image.asset('assets/images/chat.png', height: 100, width: 100),
            const Column(
              mainAxisSize: MainAxisSize.min,
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text('Dr.Mujtaba',
                  style: TextStyle(
                    color: Color(0xff3A9864),
                    fontSize: 17,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                Text('Specialize Degree Location',
                  style: TextStyle(
                    color: Color(0xff3A9864),
                    fontSize: 15,
                    fontWeight: FontWeight.bold,
                  ),),
              ],
            )
          ],
        ),
      ),
    );
  }
}
