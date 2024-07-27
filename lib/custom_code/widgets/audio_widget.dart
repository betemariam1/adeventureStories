// Automatic FlutterFlow imports
import '/backend/backend.dart';
import '/backend/schema/structs/index.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'index.dart'; // Imports other custom widgets
import '/custom_code/actions/index.dart'; // Imports custom actions
import '/flutter_flow/custom_functions.dart'; // Imports custom functions
import 'package:flutter/material.dart';
// Begin custom widget code
// DO NOT REMOVE OR MODIFY THE CODE ABOVE!

import 'package:just_audio/just_audio.dart';

class AudioWidget extends StatefulWidget {
  const AudioWidget(
      {super.key,
      this.width,
      this.height,
      required this.url,
      required this.title,
      required this.playing,
      required this.pauseOnNavigate,
      required this.isAdventureStories,
      required this.autoPlay,
      required this.fontSize,
      required this.textColor,
      required this.onCallAction});

  final double? width;
  final double? height;
  final String url;
  final String title;
  final bool playing;
  final bool pauseOnNavigate;
  final bool autoPlay;
  final bool isAdventureStories;
  final double fontSize;
  final Color textColor;
  final Future Function() onCallAction;

  @override
  State<AudioWidget> createState() => _AudioWidgetState();
}

class _AudioWidgetState extends State<AudioWidget> with RouteAware {
  late AudioPlayer _audioPlayer;
  bool _subscribedRoute = false;
  bool _isPlaying = false;

  @override
  void initState() {
    super.initState();
    _audioPlayer = AudioPlayer();
    _initializeAndPlayAudio();
  }

  @override
  void dispose() {
    _audioPlayer.dispose();
    super.dispose();
  }

  @override
  void didChangeDependencies() {
    super.didChangeDependencies();
    if (widget.pauseOnNavigate && ModalRoute.of(context) is PageRoute) {
      _subscribedRoute = true;
      routeObserver.subscribe(this, ModalRoute.of(context)!);
    }
  }

  @override
  void didPushNext() {
    if (widget.pauseOnNavigate) {
      _audioPlayer?.pause();
    }
  }

  void _initializeAndPlayAudio() async {
    await _audioPlayer.setUrl(widget.url);
    _audioPlayer.playerStateStream.listen((state) {
      setState(() {
        _isPlaying = state.playing;
      });
    });
    _audioPlayer.processingStateStream.listen((state) {
      if (state == ProcessingState.completed) {
        setState(() {
          _isPlaying = false;
        });
        // Stop the player to reset its state to idle
        _audioPlayer.stop();
        if (widget.isAdventureStories == false && widget.autoPlay == true) {
          widget.onCallAction();
        }
      }
    });
    // Play audio if the playing field is true
    if (FFAppState().isPlaying) {
      await _audioPlayer.play();
    }
  }

  void _togglePlayPause() async {
    if (_isPlaying) {
      await _audioPlayer.pause();
      FFAppState().isPlaying = false;
    } else {
      if (_audioPlayer.processingState == ProcessingState.idle) {
        // Reinitialize the audio player if it has completed
        await _audioPlayer.seek(Duration.zero);
        await _audioPlayer.play();
        FFAppState().isPlaying = true;
      } else {
        await _audioPlayer.play();
        FFAppState().isPlaying = true;
      }
    }
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      width: widget.width,
      height: widget.height,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(10),
      ),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Row(
            mainAxisSize: MainAxisSize.max,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Expanded(
                child: Padding(
                  padding: const EdgeInsetsDirectional.fromSTEB(15, 10, 0, 0),
                  child: Column(
                    mainAxisSize: MainAxisSize.max,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        widget.title,
                        style:
                            FlutterFlowTheme.of(context).headlineSmall.override(
                                  fontFamily: 'Poppins',
                                  color: widget.textColor,
                                  fontSize: widget.fontSize,
                                  letterSpacing: 0.0,
                                  fontWeight: FontWeight.w500,
                                ),
                      ),
                    ],
                  ),
                ),
              ),
              ClipRRect(
                borderRadius: BorderRadius.circular(34),
                child: Material(
                  color: Colors.transparent,
                  child: IconButton(
                    onPressed: _togglePlayPause,
                    icon: Icon(
                      _isPlaying
                          ? Icons.pause_circle_filled_rounded
                          : Icons.play_circle_fill_rounded,
                      color: FlutterFlowTheme.of(context).primary,
                      size: 34,
                    ),
                    iconSize: 34,
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
