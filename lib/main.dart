import 'package:flutter/material.dart';
import 'package:audioplayers/audioplayers.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    const title = '科目三手动模拟';
    final player = AudioPlayer();

    return MaterialApp(
      title: title,
      home: Scaffold(
        appBar: AppBar(
          title: const Text(title),
        ),
        body: GridView.extent(
          maxCrossAxisExtent: 120,
          padding: const EdgeInsets.all(12),
          mainAxisSpacing: 8,
          crossAxisSpacing: 8,
          children: [
            ElevatedButton.icon(
                onPressed: () async {
                  await player.play(AssetSource('audios/direct.mp3'));
                },
                icon: const ImageIcon(
                  AssetImage('assets/images/direct.png'),
                ),
                label: const Text('前方路口请直行')),
            ElevatedButton.icon(
              onPressed: () async {
                await player.play(AssetSource('audios/dt.mp3'));
              },
              label: const Text('前方请掉头'),
              icon: const ImageIcon(
                AssetImage('assets/images/dt.png'),
              ),
            ),
            ElevatedButton.icon(
              onPressed: () async {
                await player.play(AssetSource('audios/hc.mp3'));
              },
              label: const Text('与机动车会车'),
              icon: const ImageIcon(
                AssetImage('assets/images/hc.png'),
              ),
            ),
            ElevatedButton.icon(
              onPressed: () async {
                await player.play(AssetSource('audios/cc.mp3'));
              },
              label: const Text('超车'),
              icon: const ImageIcon(
                AssetImage('assets/images/cc.png'),
              ),
            ),
            ElevatedButton.icon(
                onPressed: () async {
                  await player.play(AssetSource('audios/bgcd.mp3'));
                },
                icon: const ImageIcon(
                  AssetImage('assets/images/bgcd.png'),
                ),
                label: const Text('请变更车道')),
            ElevatedButton.icon(
                onPressed: () async {
                  await player.play(AssetSource('audios/tgxy.mp3'));
                },
                icon: const ImageIcon(
                  AssetImage('assets/images/tgxy.png'),
                ),
                label: const Text('通过学校')),
            ElevatedButton.icon(
                onPressed: () async {
                  await player.play(AssetSource('audios/gjz.mp3'));
                },
                icon: const ImageIcon(
                  AssetImage('assets/images/gjz.png'),
                ),
                label: const Text('通过公交站')),
            ElevatedButton.icon(
                onPressed: () async {
                  await player.play(AssetSource('audios/rxd.mp3'));
                },
                icon: const ImageIcon(
                  AssetImage('assets/images/rxd.png'),
                ),
                label: const Text('通过人行道')),
            ElevatedButton.icon(
                onPressed: () async {
                  await player.play(AssetSource('audios/left.mp3'));
                },
                icon: const ImageIcon(
                  AssetImage('assets/images/left.png'),
                ),
                label: const Text('前方路口请左转')),
            ElevatedButton.icon(
                onPressed: () async {
                  await player.play(AssetSource('audios/right.mp3'));
                },
                icon: const ImageIcon(
                  AssetImage('assets/images/right.png'),
                ),
                label: const Text('前方路口请右转')),
            ElevatedButton.icon(
                onPressed: () async {
                  await player.play(AssetSource('audios/tc.mp3'));
                },
                icon: const ImageIcon(
                  AssetImage('assets/images/tc.png'),
                ),
                label: const Text('请靠边停车'))
          ],
        ),
      ),
    );
  }
}
