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

class CustomTextWidget extends StatefulWidget {
  const CustomTextWidget({
    super.key,
    this.width,
    this.height,
    required this.textInput,
    required this.maxLine,
  });

  final double? width;
  final double? height;
  final String textInput;
  final int maxLine;

  @override
  State<CustomTextWidget> createState() => _CustomTextWidgetState();
}

class _CustomTextWidgetState extends State<CustomTextWidget> {
  @override
  Widget build(BuildContext context) {
    return Text(
      widget.textInput,
      style: FlutterFlowTheme.of(context).bodyMedium.override(
            fontFamily: 'Poppins',
            letterSpacing: 0.0,
          ),
      maxLines: widget.maxLine,
      overflow: TextOverflow.ellipsis,
    );
  }
}
