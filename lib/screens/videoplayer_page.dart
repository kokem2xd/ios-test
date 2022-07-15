

// import 'package:flutter/material.dart';
// import 'package:youtube_player_flutter/youtube_player_flutter.dart';

// class VideoPlayerPage extends StatefulWidget {
//   const VideoPlayerPage({Key? key}) : super(key: key);

//   @override
//   State<VideoPlayerPage> createState() => _VideoPlayerPageState();
// }

// class _VideoPlayerPageState extends State<VideoPlayerPage> {
//   late YoutubePlayerController ytController;
//   TextEditingController linkController = TextEditingController();
//   TextEditingController seekController = TextEditingController();

//   @override
//   void initState() {
//     ytController = YoutubePlayerController(
//       initialVideoId: 'Tlc-n1JeWNE',
//       flags: const YoutubePlayerFlags(
//         autoPlay: true,
//         mute: true,
//         startAt: 50,
//       ),
//     );
//     super.initState();
//   }

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       body: Column(
//         children: [
//           Wrap(
//             children: [
//               YoutubePlayer(
//                 controller: ytController,
//                 showVideoProgressIndicator: true,
//               ),
//             ],
//           ),
//           TextFormField(
//             controller: linkController,
//             decoration: const InputDecoration(
//               hintText: "Paste a link",
//             ),
//           ),
//           GestureDetector(
//             onTap: () {
//               ytController.load(YoutubePlayer.convertUrlToId(linkController.text)!);
//             },
//             child: Container(
//               height: 50,
//               width: 120,
//               color: Colors.greenAccent,
//               child: const Center(
//                 child: Text("Load Video"),
//               ),
//             ),
//           ),
//           TextFormField(
//             controller: seekController,
//             decoration: const InputDecoration(
//               hintText: "Seek to (Seconds)",
//             ),
//           ),
//           GestureDetector(
//             onTap: () {
//               ytController.seekTo(Duration(seconds: int.parse(seekController.text)));
//             },
//             child: Container(
//               height: 50,
//               width: 120,
//               color: Colors.greenAccent,
//               child: const Center(
//                 child: Text("Seek To"),
//               ),
//             ),
//           ),
//           Row(
//             mainAxisAlignment: MainAxisAlignment.center,
//             children: [
//               GestureDetector(
//                 onTap: () {
//                   ytController.play();
//                 },
//                 child: Container(
//                   height: 50,
//                   width: 120,
//                   color: Colors.greenAccent,
//                   child: const Center(
//                     child: Text("Play"),
//                   ),
//                 ),
//               ),
//               GestureDetector(
//                 onTap: () {
//                   ytController.pause();
//                 },
//                 child: Container(
//                   height: 50,
//                   width: 120,
//                   color: Colors.greenAccent,
//                   child: const Center(
//                     child: Text("Pause"),
//                   ),
//                 ),
//               ),
//               GestureDetector(
//                 onTap: () {
//                   ytController.toggleFullScreenMode();
//                 },
//                 child: Container(
//                   height: 50,
//                   width: 120,
//                   color: Colors.greenAccent,
//                   child: const Center(
//                     child: Text("Full Screen"),
//                   ),
//                 ),
//               ),
//             ],
//           )
//         ],
//       ),
//     );
//   }
// }