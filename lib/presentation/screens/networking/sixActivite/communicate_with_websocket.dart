// import 'package:flutter/material.dart';
// import 'package:web_socket';

// class ActiviteSix extends StatelessWidget {
//   const ActiviteSix({super.key});

//   @override
//   Widget build(BuildContext context) {
//     const title = 'WebSocket Demo';
//     return const MaterialApp(
//       title: title,
//       home: CommunicateWithWebSocket(
//         title: title,
//       ),
//     );
//   }
// }

// class CommunicateWithWebSocket extends StatefulWidget {
//   const CommunicateWithWebSocket({super.key, required this.title});

//   final String title;

//   @override
//   State<CommunicateWithWebSocket> createState() => _CommunicateWithWebSocket();
// }

// class _CommunicateWithWebSocket extends State<CommunicateWithWebSocket> {
//   final TextEditingController _controller = TextEditingController();
//   final channel = WebSocketChannel.connect(
//     Uri.parse('wss://echo.websocket.events'),
//   );

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: Text(widget.title),
//       ),
//       body: Padding(
//         padding: const EdgeInsets.all(20),
//         child: Column(
//           children: [
//             Form(
//                 child: TextFormField(
//               controller: _controller,
//               decoration: const InputDecoration(labelText: 'Send a message'),
//             )),
//             const SizedBox(
//               height: 24,
//             ),
//             StreamBuilder(
//               stream: channel.stream,
//               builder: (context, snapshot) {
//                 return Text(snapshot.hasData ? '${snapshot.data}' : '');
//               }
//             ),
//           ],
//         ),
//       ),
//       floatingActionButton: const FloatingActionButton(
//         onPressed: _sendMessage,
//         tooltip: 'Send message',
//         child: Icon(Icons.send),
//       ),
//     );
//   }
// }

// void _sendMessage() {
//   if (_controller.text.isNotEmpty) {
//     _channel.sink.add(_controller.text);
//   }
// }

// @override
// void dispose() {
//   _channel.sink.close();
//   _controller.dispose();
//   super.dispose();
// }
