import '/flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'video_thumbnail_model.dart';
export 'video_thumbnail_model.dart';

class VideoThumbnailWidget extends StatefulWidget {
  const VideoThumbnailWidget({super.key});

  @override
  State<VideoThumbnailWidget> createState() => _VideoThumbnailWidgetState();
}

class _VideoThumbnailWidgetState extends State<VideoThumbnailWidget> {
  late VideoThumbnailModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => VideoThumbnailModel());

    WidgetsBinding.instance.addPostFrameCallback((_) => setState(() {}));
  }

  @override
  void dispose() {
    _model.maybeDispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: const AlignmentDirectional(0.0, 0.0),
      child: ClipRRect(
        borderRadius: BorderRadius.circular(4.0),
        child: Image.asset(
          'assets/images/media.png',
          width: 114.0,
          height: 64.0,
          fit: BoxFit.cover,
        ),
      ),
    );
  }
}
