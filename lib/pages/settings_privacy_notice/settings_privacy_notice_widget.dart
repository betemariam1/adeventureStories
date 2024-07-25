import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_pdf_viewer.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'settings_privacy_notice_model.dart';
export 'settings_privacy_notice_model.dart';

class SettingsPrivacyNoticeWidget extends StatefulWidget {
  const SettingsPrivacyNoticeWidget({super.key});

  @override
  State<SettingsPrivacyNoticeWidget> createState() =>
      _SettingsPrivacyNoticeWidgetState();
}

class _SettingsPrivacyNoticeWidgetState
    extends State<SettingsPrivacyNoticeWidget> {
  late SettingsPrivacyNoticeModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => SettingsPrivacyNoticeModel());

    WidgetsBinding.instance.addPostFrameCallback((_) => setState(() {}));
  }

  @override
  void dispose() {
    _model.dispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => _model.unfocusNode.canRequestFocus
          ? FocusScope.of(context).requestFocus(_model.unfocusNode)
          : FocusScope.of(context).unfocus(),
      child: Scaffold(
        key: scaffoldKey,
        backgroundColor: FlutterFlowTheme.of(context).accent1,
        appBar: AppBar(
          automaticallyImplyLeading: false,
          leading: Padding(
            padding: const EdgeInsets.all(4.0),
            child: FlutterFlowIconButton(
              borderColor: FlutterFlowTheme.of(context).outline,
              borderRadius: 30.0,
              borderWidth: 1.0,
              buttonSize: 60.0,
              fillColor: Colors.transparent,
              hoverColor: FlutterFlowTheme.of(context).accent2,
              hoverIconColor: FlutterFlowTheme.of(context).onSurfaceVariant,
              icon: FaIcon(
                FontAwesomeIcons.arrowLeft,
                color: FlutterFlowTheme.of(context).onSurfaceVariant,
              ),
              onPressed: () async {
                context.pop();
              },
            ),
          ),
          title: Text(
            'Privacy Notice',
            style: FlutterFlowTheme.of(context).headlineLarge.override(
                  fontFamily: 'Poppins',
                  color: FlutterFlowTheme.of(context).primary,
                  letterSpacing: 0.0,
                ),
          ),
          actions: const [],
          centerTitle: false,
        ),
        body: const SafeArea(
          top: true,
          child: Align(
            alignment: AlignmentDirectional(0.0, -1.0),
            child: Padding(
              padding: EdgeInsetsDirectional.fromSTEB(0.0, 20.0, 0.0, 20.0),
              child: FlutterFlowPdfViewer(
                assetPath: 'assets/pdfs/PrivacyNotice.07.01.2024.pdf',
                width: double.infinity,
                height: double.infinity,
                horizontalScroll: false,
              ),
            ),
          ),
        ),
      ),
    );
  }
}
