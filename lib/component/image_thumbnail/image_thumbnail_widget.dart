import '/flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'image_thumbnail_model.dart';
export 'image_thumbnail_model.dart';

class ImageThumbnailWidget extends StatefulWidget {
  const ImageThumbnailWidget({super.key});

  @override
  State<ImageThumbnailWidget> createState() => _ImageThumbnailWidgetState();
}

class _ImageThumbnailWidgetState extends State<ImageThumbnailWidget> {
  late ImageThumbnailModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => ImageThumbnailModel());

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
          width: 56.0,
          height: 56.0,
          fit: BoxFit.cover,
        ),
      ),
    );
  }
}
