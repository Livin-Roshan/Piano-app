import 'package:audioplayers/audioplayers.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'piano',
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Colors.grey,
        body: Center(
          child: Container(
            padding:
            const EdgeInsets.only(left: 50, top: 5, right: 10, bottom: 5),
            height: 589,
            width: 400,
            decoration: BoxDecoration(
              color: Colors.black,
              borderRadius: BorderRadius.circular(10),
            ),
            child: const Stack(
              children: [
                Column(
                  children: [
                    WhitePianoKey(
                      soundPath: 'piano_notes/piano-c_C_major.wav',
                    ),
                    SizedBox(height: 2),
                    WhitePianoKey(
                      soundPath: 'piano_notes/piano-d_D_major.wav',
                    ),
                    SizedBox(height: 2),
                    WhitePianoKey(
                      soundPath: 'piano_notes/piano-e_E_major.wav',
                    ),
                    SizedBox(height: 2),
                    WhitePianoKey(
                      soundPath: 'piano_notes/piano-f_F_major.wav',
                    ),
                    SizedBox(height: 2),
                    WhitePianoKey(
                      soundPath: 'piano_notes/piano-g_G_major.wav',
                    ),
                    SizedBox(height: 2),
                    WhitePianoKey(
                      soundPath: 'piano_notes/piano-a_A_major.wav',
                    ),
                    SizedBox(height: 2),
                    WhitePianoKey(
                      soundPath: 'piano_notes/piano-b_B_major.wav',
                    ),
                  ],
                ),
                Positioned(
                  bottom: 60,
                  left: 0,
                  child: BlackPianoKey(
                    soundPath: 'piano_notes/piano-c_C1_major.wav',
                  ),
                ),
                Positioned(
                  bottom: 160,
                  left: 0,
                  child: BlackPianoKey(
                    soundPath: 'piano_notes/piano-eb_D1_major.wav',
                  ),
                ),
                Positioned(
                  bottom: 306,
                  left: 0,
                  child: BlackPianoKey(
                    soundPath: 'piano_notes/piano-f_F1_major.wav',
                  ),
                ),
                Positioned(
                  bottom: 400,
                  left: 0,
                  child: BlackPianoKey(
                    soundPath: 'piano_notes/piano-g_G1_major.wav',
                  ),
                ),
                Positioned(
                  bottom: 490,
                  left: 0,
                  child: BlackPianoKey(
                    soundPath: 'piano_notes/piano-bb_A1_major.wav',
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class WhitePianoKey extends StatelessWidget {
  final String soundPath;

  const WhitePianoKey({required this.soundPath});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        AudioPlayer().play(AssetSource(soundPath));
      },
      child: Container(
        width: 350,
        height: 81,
        decoration: const BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.only(
            topRight: Radius.circular(10),
            bottomRight: Radius.circular(10),
          ),
        ),
      ),
    );
  }
}

class BlackPianoKey extends StatelessWidget {
  final String soundPath;

  const BlackPianoKey({required this.soundPath});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        AudioPlayer().play(AssetSource(soundPath));
      },
      child: Container(
        width: 180,
        height: 55,
        decoration: BoxDecoration(
          color: Colors.black,
          borderRadius: const BorderRadius.only(
            topRight: Radius.circular(10),
            bottomRight: Radius.circular(10),
          ),
          border: Border.all(color: Colors.black, width: 8),
          gradient: const LinearGradient(
            colors: [Colors.white, Colors.black],
            begin: Alignment.bottomLeft,
            end: Alignment.bottomRight,
            stops: [0.2, 0.8],
          ),
        ),
      ),
    );
  }
}