import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_web_view.dart';
import '/flutter_flow/custom_functions.dart' as functions;
import 'package:flutter/material.dart';
import 'audio_player_model.dart';
export 'audio_player_model.dart';

class AudioPlayerWidget extends StatefulWidget {
  const AudioPlayerWidget({
    super.key,
    this.audioLink,
  });

  final String? audioLink;

  @override
  State<AudioPlayerWidget> createState() => _AudioPlayerWidgetState();
}

class _AudioPlayerWidgetState extends State<AudioPlayerWidget> {
  late AudioPlayerModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => AudioPlayerModel());

    WidgetsBinding.instance.addPostFrameCallback((_) => setState(() {}));
  }

  @override
  void dispose() {
    _model.maybeDispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return FlutterFlowWebView(
      content:
          '<!DOCTYPE html> <html> <head>   <title>Audio Player</title>   <style>     body {        display: flex;        justify-content: center;        align-items: center;        height: 100vh;        margin: 0;        background-color: #F3EDF7;        font-family: \'Arial\', sans-serif;      }      .audio-player  {        display: flex;        flex-direction:column;        align-items: center;        background-color: #ECE6F0;        border-radius: 15px;        padding: 10px;        box-shadow: 0 4px 8px rgba(0, 0, 0, 0.1);      }     .audio-controls  {        display: flex;        justify-content: center;        align-items: center;        margin-top: 5px;      }      .audio-controls button  {        background-color: #6750A4;        border: none;        color: white;        padding: 5px 5px;        margin: 5px;        border-radius: 5px;        cursor: pointer;        transition: background-color 0.3s ease;      }      .audio-controls button:hover  {        background-color: #625B71;      }      .audio-controls input[type=\"range\"]  {        width: 100%;        margin: 10px;        appearance: none;        background: #625B71;        height: 5px;        border-radius: 5px;        outline: none;        cursor: pointer;        transition: background 0.3s ease;      }      .audio-controls input[type=\"range\"]::-webkit-slider-thumb  {        appearance: none;        width: 10px;        height: 10px;        background: #625B71;        border-radius: 50%;        cursor: pointer;        transition: background 0.3s ease;      }      .audio-controls input[type=\"range\"]::-webkit-slider-thumb:hover  {        background: ##D0BCFF;      }   </style> </head> <body>   <div class=\"audio-player\">     <audio id=\"audio\" controls autoplay style=\"display: none;\">        <source src=\"${functions.audioPathToString(widget.audioLink!)}\" type=\"audio/mpeg\">       Your browser does not support the audio element.     </audio>     <div class=\"audio-controls\">       <button onclick=\"playAudio()\">Play</button>       <button onclick=\"pauseAudio()\">Pause</button>     </div>     <input type=\"range\" id=\"seekbar\" value=\"0\" max=\"100\" onchange=\"seekAudio()\">   </div>    <script>     const audio = document.getElementById(\'audio\');     const seekbar = document.getElementById(\'seekbar\');      audio.addEventListener(\'timeupdate\', () => {       const value = (audio.currentTime / audio.duration) * 100;       seekbar.value = value;     });      function playAudio() {       audio.play();     }      function pauseAudio() {       audio.pause();     }      function seekAudio() {       const seekTo = (seekbar.value / 100) * audio.duration;       audio.currentTime = seekTo;     }   </script> </body> </html>',
      width: 210.0,
      height: 120.0,
      verticalScroll: false,
      horizontalScroll: false,
      html: true,
    );
  }
}
