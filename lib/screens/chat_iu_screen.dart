import 'package:flutter/material.dart';
import 'package:web_socket_channel/web_socket_channel.dart';

class ChatUiScreen extends StatefulWidget {
  const ChatUiScreen({super.key});

  @override
  State<ChatUiScreen> createState() => __ChatUiScreenState();
}

class __ChatUiScreenState extends State<ChatUiScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        
        child: ElevatedButton(child: const Text("click"),onPressed:(){
          binWs();

        } ,)
      )
    );
  }
  Future<void> binWs()async{
    final channel = WebSocketChannel.connect(Uri.parse("wss://stream.binance.com:9443/ws/etheur@trade")
    );
    await channel.ready;

  channel.stream.listen((message){
    print(message);
    channel.sink.add('received!');
  });
  }
}
