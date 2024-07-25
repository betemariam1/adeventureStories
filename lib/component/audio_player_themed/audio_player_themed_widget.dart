import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_web_view.dart';
import 'package:flutter/material.dart';
import 'audio_player_themed_model.dart';
export 'audio_player_themed_model.dart';

class AudioPlayerThemedWidget extends StatefulWidget {
  const AudioPlayerThemedWidget({
    super.key,
    this.audioLink,
  });

  final String? audioLink;

  @override
  State<AudioPlayerThemedWidget> createState() =>
      _AudioPlayerThemedWidgetState();
}

class _AudioPlayerThemedWidgetState extends State<AudioPlayerThemedWidget> {
  late AudioPlayerThemedModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => AudioPlayerThemedModel());

    WidgetsBinding.instance.addPostFrameCallback((_) => setState(() {}));
  }

  @override
  void dispose() {
    _model.maybeDispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return const FlutterFlowWebView(
      content:
          '<!DOCTYPE html>\n<html>\n<head>\n  <title>Audio Player</title>\n  <style>\n    body {\n      display: flex;\n      justify-content: center;\n      align-items: center;\n      height: 100vh;\n      margin: 0;\n      background-color: #fef7ff;\n      font-family: \'Arial\', sans-serif;\n    }\n    .audio-player {\n      display: flex;\n      flex-direction: column;\n      align-items: center;\n      background-color: #fef7ff;\n      border-radius: 0px;\n      padding: 0px;\n      box-shadow: 0 0px 0px rgba(0, 0, 0, 0.1);\n    }\n    .audio-controls {\n      display: flex;\n      justify-content: center;\n      align-items: center;\n      margin-top: 0px;\n    }\n    .audio-controls button {\n      background-color: #6750a4;\n      border: none;\n      color: white;\n      padding: 10px 20px;\n      margin: 5px;\n      border-radius: 10px;\n      cursor: pointer;\n      transition: background-color 0.3s ease;\n    }\n    .audio-controls button:hover {\n      background-color: #d0bcff;\n    }\n    .audio-controls input[type=\"range\"] {\n      width: 100%;\n      margin: 10px;\n      appearance: none;\n      background: #bdc3c7;\n      height: 5px;\n      border-radius: 5px;\n      outline: none;\n      cursor: pointer;\n      transition: background 0.3s ease;\n    }\n    .audio-controls input[type=\"range\"]::-webkit-slider-thumb {\n      appearance: none;\n      width: 15px;\n      height: 15px;\n      background: #3498db;\n      border-radius: 50%;\n      cursor: pointer;\n      transition: background 0.3s ease;\n    }\n    .audio-controls input[type=\"range\"]::-webkit-slider-thumb:hover {\n      background: #2980b9;\n    }\n  </style>\n</head>\n<body>\n  <div class=\"audio-player\">\n    <audio id=\"audio\" controls style=\"display: none;\">\n      <source src=\"https://www.soundhelix.com/examples/mp3/SoundHelix-Song-1.mp3\" type=\"audio/mpeg\">\n      Your browser does not support the audio element.\n    </audio>\n    <div class=\"audio-controls\">\n      <button onclick=\"playAudio()\">Play</button>\n      <button onclick=\"pauseAudio()\">Pause</button>\n\n  <script>\n    const audio = document.getElementById(\'audio\');\n    const seekbar = document.getElementById(\'seekbar\');\n\n    window.addEventListener(\'load\', () => {\n      playAudio();\n    });\n\n    audio.addEventListener(\'timeupdate\', () => {\n      const value = (audio.currentTime / audio.duration) * 100;\n      seekbar.value = value;\n    });\n\n    function playAudio() {\n      audio.play();\n    }\n\n    function pauseAudio() {\n      audio.pause();\n    }\n\n    function seekAudio() {\n      const seekTo = (seekbar.value / 100) * audio.duration;\n      audio.currentTime = seekTo;\n    }\n  </script>\n</body>\n</html>\n',
      width: 180.0,
      height: 54.0,
      verticalScroll: false,
      horizontalScroll: false,
      html: true,
    );
  }
}
