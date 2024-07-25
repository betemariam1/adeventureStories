import '/auth/firebase_auth/auth_util.dart';
import '/backend/backend.dart';
import '/component/nav_segment/nav_segment_widget.dart';
import '/flutter_flow/flutter_flow_button_tabbar.dart';
import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/custom_functions.dart' as functions;
import 'package:auto_size_text/auto_size_text.dart';
import 'package:easy_debounce/easy_debounce.dart';
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:lottie/lottie.dart';
import 'package:provider/provider.dart';
import 'package:text_search/text_search.dart';
import 'home_model.dart';
export 'home_model.dart';

class HomeWidget extends StatefulWidget {
  const HomeWidget({super.key});

  @override
  State<HomeWidget> createState() => _HomeWidgetState();
}

class _HomeWidgetState extends State<HomeWidget> with TickerProviderStateMixin {
  late HomeModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => HomeModel());

    // On page load action.
    SchedulerBinding.instance.addPostFrameCallback((_) async {
      FFAppState().searchisactive = false;
      setState(() {});
    });

    _model.searchBarTextController ??= TextEditingController();
    _model.searchBarFocusNode ??= FocusNode();

    _model.tabBarController = TabController(
      vsync: this,
      length: 3,
      initialIndex: 0,
    )..addListener(() => setState(() {}));
    WidgetsBinding.instance.addPostFrameCallback((_) => setState(() {}));
  }

  @override
  void dispose() {
    _model.dispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    context.watch<FFAppState>();

    return StreamBuilder<List<RevisedDbRecord>>(
      stream: queryRevisedDbRecord(
        queryBuilder: (revisedDbRecord) =>
            revisedDbRecord.orderBy('CreateDate', descending: true),
      ),
      builder: (context, snapshot) {
        // Customize what your widget looks like when it's loading.
        if (!snapshot.hasData) {
          return Scaffold(
            backgroundColor: FlutterFlowTheme.of(context).primaryBackground,
            body: Center(
              child: LinearProgressIndicator(
                color: FlutterFlowTheme.of(context).primary,
              ),
            ),
          );
        }
        List<RevisedDbRecord> homeRevisedDbRecordList = snapshot.data!;

        return GestureDetector(
          onTap: () => _model.unfocusNode.canRequestFocus
              ? FocusScope.of(context).requestFocus(_model.unfocusNode)
              : FocusScope.of(context).unfocus(),
          child: Scaffold(
            key: scaffoldKey,
            backgroundColor: FlutterFlowTheme.of(context).primaryBackground,
            appBar: AppBar(
              automaticallyImplyLeading: false,
              title: Stack(
                children: [
                  if (responsiveVisibility(
                    context: context,
                    tablet: false,
                    tabletLandscape: false,
                    desktop: false,
                  ))
                    InkWell(
                      splashColor: Colors.transparent,
                      focusColor: Colors.transparent,
                      hoverColor: Colors.transparent,
                      highlightColor: Colors.transparent,
                      onTap: () async {
                        context.pushNamed('audioPlayerTesting');
                      },
                      child: AutoSizeText(
                        'Adventure Stories',
                        style:
                            FlutterFlowTheme.of(context).titleMedium.override(
                                  fontFamily: 'Poppins',
                                  color: FlutterFlowTheme.of(context).primary,
                                  fontSize: 18.0,
                                  letterSpacing: 0.0,
                                ),
                      ),
                    ),
                  if (responsiveVisibility(
                    context: context,
                    phone: false,
                  ))
                    InkWell(
                      splashColor: Colors.transparent,
                      focusColor: Colors.transparent,
                      hoverColor: Colors.transparent,
                      highlightColor: Colors.transparent,
                      onTap: () async {
                        context.pushNamed('audioPlayerTesting');
                      },
                      child: AutoSizeText(
                        'Adventure Stories',
                        style:
                            FlutterFlowTheme.of(context).headlineLarge.override(
                                  fontFamily: 'Poppins',
                                  color: FlutterFlowTheme.of(context).primary,
                                  letterSpacing: 0.0,
                                ),
                      ),
                    ),
                ],
              ),
              actions: [
                Padding(
                  padding: const EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 15.0, 0.0),
                  child: InkWell(
                    splashColor: Colors.transparent,
                    focusColor: Colors.transparent,
                    hoverColor: Colors.transparent,
                    highlightColor: Colors.transparent,
                    onTap: () async {
                      context.pushNamed(
                        'Settings',
                        extra: <String, dynamic>{
                          kTransitionInfoKey: const TransitionInfo(
                            hasTransition: true,
                            transitionType: PageTransitionType.rightToLeft,
                          ),
                        },
                      );
                    },
                    child: Material(
                      color: Colors.transparent,
                      elevation: 2.0,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(24.0),
                      ),
                      child: Container(
                        width: 40.0,
                        height: 40.0,
                        decoration: BoxDecoration(
                          image: DecorationImage(
                            fit: BoxFit.cover,
                            image: Image.asset(
                              'assets/images/PurpleSettings002.png',
                            ).image,
                          ),
                          borderRadius: BorderRadius.circular(24.0),
                        ),
                      ),
                    ),
                  ),
                ),
              ],
              centerTitle: false,
              elevation: 0.0,
            ),
            body: SafeArea(
              top: true,
              child: Column(
                mainAxisSize: MainAxisSize.max,
                children: [
                  Stack(
                    alignment: const AlignmentDirectional(1.0, -1.0),
                    children: [
                      if (responsiveVisibility(
                        context: context,
                        phone: false,
                        tablet: false,
                        tabletLandscape: false,
                        desktop: false,
                      ))
                        Align(
                          alignment: const AlignmentDirectional(-1.0, 0.0),
                          child: Padding(
                            padding: const EdgeInsetsDirectional.fromSTEB(
                                10.0, 0.0, 10.0, 0.0),
                            child: ClipRRect(
                              borderRadius: BorderRadius.circular(8.0),
                              child: Image.asset(
                                'assets/images/Purple_3.png',
                                width: double.infinity,
                                height: 200.0,
                                fit: BoxFit.cover,
                              ),
                            ),
                          ),
                        ),
                      if (responsiveVisibility(
                        context: context,
                        phone: false,
                      ))
                        Align(
                          alignment: const AlignmentDirectional(0.0, 0.0),
                          child: Padding(
                            padding: const EdgeInsetsDirectional.fromSTEB(
                                5.0, 0.0, 5.0, 0.0),
                            child: ClipRRect(
                              borderRadius: BorderRadius.circular(8.0),
                              child: Image.asset(
                                'assets/images/Designer9.png',
                                width: double.infinity,
                                height: 167.0,
                                fit: BoxFit.fitWidth,
                                alignment: const Alignment(0.0, 0.0),
                              ),
                            ),
                          ),
                        ),
                    ],
                  ),
                  Row(
                    mainAxisSize: MainAxisSize.max,
                    children: [
                      if (_model.searchEmpty)
                        Expanded(
                          child: Padding(
                            padding: const EdgeInsetsDirectional.fromSTEB(
                                16.0, 12.0, 16.0, 0.0),
                            child: SizedBox(
                              width: MediaQuery.sizeOf(context).width * 1.0,
                              child: TextFormField(
                                controller: _model.searchBarTextController,
                                focusNode: _model.searchBarFocusNode,
                                onChanged: (_) => EasyDebounce.debounce(
                                  '_model.searchBarTextController',
                                  const Duration(milliseconds: 2),
                                  () async {
                                    safeSetState(() {
                                      _model.simpleSearchResults = TextSearch(
                                        homeRevisedDbRecordList
                                            .map(
                                              (record) =>
                                                  TextSearchItem.fromTerms(
                                                      record, [
                                                record.storyName,
                                                record.description
                                              ]),
                                            )
                                            .toList(),
                                      )
                                          .search(_model
                                              .searchBarTextController.text)
                                          .map((r) => r.object)
                                          .take(25)
                                          .toList();
                                    });
                                  },
                                ),
                                textCapitalization: TextCapitalization.none,
                                obscureText: false,
                                decoration: InputDecoration(
                                  labelText: 'Search for a story.....',
                                  labelStyle: FlutterFlowTheme.of(context)
                                      .labelMedium
                                      .override(
                                        fontFamily: 'Poppins',
                                        color: FlutterFlowTheme.of(context)
                                            .secondaryText,
                                        letterSpacing: 0.0,
                                      ),
                                  hintStyle: FlutterFlowTheme.of(context)
                                      .labelMedium
                                      .override(
                                        fontFamily: 'Poppins',
                                        color: FlutterFlowTheme.of(context)
                                            .primaryText,
                                        letterSpacing: 0.0,
                                      ),
                                  enabledBorder: OutlineInputBorder(
                                    borderSide: BorderSide(
                                      color: FlutterFlowTheme.of(context)
                                          .secondary,
                                      width: 2.0,
                                    ),
                                    borderRadius: BorderRadius.circular(12.0),
                                  ),
                                  focusedBorder: OutlineInputBorder(
                                    borderSide: BorderSide(
                                      color:
                                          FlutterFlowTheme.of(context).primary,
                                      width: 2.0,
                                    ),
                                    borderRadius: BorderRadius.circular(12.0),
                                  ),
                                  errorBorder: OutlineInputBorder(
                                    borderSide: BorderSide(
                                      color: FlutterFlowTheme.of(context).error,
                                      width: 2.0,
                                    ),
                                    borderRadius: BorderRadius.circular(12.0),
                                  ),
                                  focusedErrorBorder: OutlineInputBorder(
                                    borderSide: BorderSide(
                                      color: FlutterFlowTheme.of(context).error,
                                      width: 2.0,
                                    ),
                                    borderRadius: BorderRadius.circular(12.0),
                                  ),
                                  filled: true,
                                  fillColor: FlutterFlowTheme.of(context)
                                      .secondaryBackground,
                                  contentPadding:
                                      const EdgeInsetsDirectional.fromSTEB(
                                          24.0, 14.0, 20.0, 14.0),
                                  prefixIcon: Icon(
                                    Icons.search,
                                    color: FlutterFlowTheme.of(context).primary,
                                    size: 25.0,
                                  ),
                                  suffixIcon: _model.searchBarTextController!
                                          .text.isNotEmpty
                                      ? InkWell(
                                          onTap: () async {
                                            _model.searchBarTextController
                                                ?.clear();
                                            safeSetState(() {
                                              _model.simpleSearchResults =
                                                  TextSearch(
                                                homeRevisedDbRecordList
                                                    .map(
                                                      (record) => TextSearchItem
                                                          .fromTerms(record, [
                                                        record.storyName,
                                                        record.description
                                                      ]),
                                                    )
                                                    .toList(),
                                              )
                                                      .search(_model
                                                          .searchBarTextController
                                                          .text)
                                                      .map((r) => r.object)
                                                      .take(25)
                                                      .toList();
                                            });
                                            setState(() {});
                                          },
                                          child: Icon(
                                            Icons.clear,
                                            color: FlutterFlowTheme.of(context)
                                                .primary,
                                            size: 24.0,
                                          ),
                                        )
                                      : null,
                                ),
                                style: FlutterFlowTheme.of(context)
                                    .bodyMedium
                                    .override(
                                      fontFamily: 'Poppins',
                                      color: FlutterFlowTheme.of(context)
                                          .secondaryText,
                                      fontSize: 12.0,
                                      letterSpacing: 0.0,
                                    ),
                                cursorColor:
                                    FlutterFlowTheme.of(context).primary,
                                validator: _model
                                    .searchBarTextControllerValidator
                                    .asValidator(context),
                              ),
                            ),
                          ),
                        ),
                    ],
                  ),
                  Expanded(
                    child: Column(
                      children: [
                        Align(
                          alignment: const Alignment(-1.0, 0),
                          child: FlutterFlowButtonTabBar(
                            useToggleButtonStyle: false,
                            isScrollable: true,
                            labelStyle: FlutterFlowTheme.of(context)
                                .titleMedium
                                .override(
                                  fontFamily: 'Poppins',
                                  fontSize: 15.0,
                                  letterSpacing: 0.0,
                                  fontWeight: FontWeight.w600,
                                ),
                            unselectedLabelStyle: const TextStyle(),
                            labelColor: FlutterFlowTheme.of(context)
                                .secondaryBackground,
                            unselectedLabelColor: FlutterFlowTheme.of(context)
                                .secondaryBackground,
                            backgroundColor:
                                FlutterFlowTheme.of(context).primary,
                            unselectedBackgroundColor:
                                FlutterFlowTheme.of(context).secondary,
                            borderWidth: 2.0,
                            borderRadius: 12.0,
                            elevation: 0.0,
                            labelPadding: const EdgeInsetsDirectional.fromSTEB(
                                16.0, 0.0, 16.0, 0.0),
                            buttonMargin: const EdgeInsetsDirectional.fromSTEB(
                                0.0, 12.0, 5.0, 0.0),
                            padding: const EdgeInsetsDirectional.fromSTEB(
                                16.0, 0.0, 16.0, 0.0),
                            tabs: const [
                              Tab(
                                text: 'Free',
                              ),
                              Tab(
                                text: 'Read Along',
                              ),
                              Tab(
                                text: 'Adventure',
                              ),
                            ],
                            controller: _model.tabBarController,
                            onTap: (i) async {
                              [() async {}, () async {}, () async {}][i]();
                            },
                          ),
                        ),
                        Expanded(
                          child: TabBarView(
                            controller: _model.tabBarController,
                            physics: const NeverScrollableScrollPhysics(),
                            children: [
                              Padding(
                                padding: const EdgeInsetsDirectional.fromSTEB(
                                    15.0, 15.0, 15.0, 5.0),
                                child: SingleChildScrollView(
                                  child: Column(
                                    mainAxisSize: MainAxisSize.max,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Padding(
                                        padding: const EdgeInsetsDirectional.fromSTEB(
                                            0.0, 0.0, 0.0, 5.0),
                                        child: Row(
                                          mainAxisSize: MainAxisSize.max,
                                          mainAxisAlignment:
                                              MainAxisAlignment.spaceBetween,
                                          children: [
                                            Text(
                                              'Free Stories',
                                              style: FlutterFlowTheme.of(
                                                      context)
                                                  .headlineSmall
                                                  .override(
                                                    fontFamily: 'Poppins',
                                                    color: FlutterFlowTheme.of(
                                                            context)
                                                        .primary,
                                                    fontSize: 20.0,
                                                    letterSpacing: 0.0,
                                                    fontWeight: FontWeight.w500,
                                                  ),
                                            ),
                                          ],
                                        ),
                                      ),
                                      Column(
                                        mainAxisSize: MainAxisSize.max,
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          if ((_model.searchBarTextController
                                                          .text ==
                                                      '') &&
                                              responsiveVisibility(
                                                context: context,
                                                tablet: false,
                                                tabletLandscape: false,
                                                desktop: false,
                                              ))
                                            Container(
                                              width: double.infinity,
                                              height: MediaQuery.sizeOf(context)
                                                      .height *
                                                  1.0,
                                              decoration: const BoxDecoration(),
                                              child: Padding(
                                                padding: const EdgeInsetsDirectional
                                                    .fromSTEB(
                                                        0.0, 0.0, 0.0, 350.0),
                                                child: Builder(
                                                  builder: (context) {
                                                    final freeReadAlongNoSearchView =
                                                        homeRevisedDbRecordList
                                                            .where((e) =>
                                                                e.isReadAlong)
                                                            .toList();

                                                    return GridView.builder(
                                                      padding:
                                                          const EdgeInsets.fromLTRB(
                                                        0,
                                                        0,
                                                        0,
                                                        20.0,
                                                      ),
                                                      gridDelegate:
                                                          const SliverGridDelegateWithFixedCrossAxisCount(
                                                        crossAxisCount: 1,
                                                        crossAxisSpacing: 10.0,
                                                        mainAxisSpacing: 15.0,
                                                        childAspectRatio: 1.0,
                                                      ),
                                                      shrinkWrap: true,
                                                      scrollDirection:
                                                          Axis.vertical,
                                                      itemCount:
                                                          freeReadAlongNoSearchView
                                                              .length,
                                                      itemBuilder: (context,
                                                          freeReadAlongNoSearchViewIndex) {
                                                        final freeReadAlongNoSearchViewItem =
                                                            freeReadAlongNoSearchView[
                                                                freeReadAlongNoSearchViewIndex];
                                                        return Container(
                                                          width:
                                                              double.infinity,
                                                          height:
                                                              double.infinity,
                                                          decoration:
                                                              BoxDecoration(
                                                            borderRadius:
                                                                BorderRadius
                                                                    .circular(
                                                                        8.0),
                                                            border: Border.all(
                                                              color: FlutterFlowTheme
                                                                      .of(context)
                                                                  .primary,
                                                            ),
                                                          ),
                                                          child: StreamBuilder<
                                                              ReadAlongStoriesRecord>(
                                                            stream: ReadAlongStoriesRecord
                                                                .getDocument(
                                                                    freeReadAlongNoSearchViewItem
                                                                        .readalongwhatever!),
                                                            builder: (context,
                                                                snapshot) {
                                                              // Customize what your widget looks like when it's loading.
                                                              if (!snapshot
                                                                  .hasData) {
                                                                return Center(
                                                                  child:
                                                                      LinearProgressIndicator(
                                                                    color: FlutterFlowTheme.of(
                                                                            context)
                                                                        .primary,
                                                                  ),
                                                                );
                                                              }

                                                              final cardReadAlongStoriesRecord =
                                                                  snapshot
                                                                      .data!;

                                                              return InkWell(
                                                                splashColor: Colors
                                                                    .transparent,
                                                                focusColor: Colors
                                                                    .transparent,
                                                                hoverColor: Colors
                                                                    .transparent,
                                                                highlightColor:
                                                                    Colors
                                                                        .transparent,
                                                                onTap:
                                                                    () async {
                                                                  context
                                                                      .pushNamed(
                                                                    'StoryChapter',
                                                                    queryParameters:
                                                                        {
                                                                      'chapter':
                                                                          serializeParam(
                                                                        freeReadAlongNoSearchViewItem
                                                                            .chapterRef,
                                                                        ParamType
                                                                            .DocumentReference,
                                                                      ),
                                                                      'pageNumber':
                                                                          serializeParam(
                                                                        0,
                                                                        ParamType
                                                                            .int,
                                                                      ),
                                                                    }.withoutNulls,
                                                                  );
                                                                },
                                                                child: Card(
                                                                  clipBehavior:
                                                                      Clip.antiAliasWithSaveLayer,
                                                                  color: FlutterFlowTheme.of(
                                                                          context)
                                                                      .secondaryBackground,
                                                                  elevation:
                                                                      4.0,
                                                                  shape:
                                                                      RoundedRectangleBorder(
                                                                    borderRadius:
                                                                        BorderRadius.circular(
                                                                            8.0),
                                                                  ),
                                                                  child: Stack(
                                                                    children: [
                                                                      Column(
                                                                        mainAxisSize:
                                                                            MainAxisSize.max,
                                                                        crossAxisAlignment:
                                                                            CrossAxisAlignment.start,
                                                                        children: [
                                                                          if (!freeReadAlongNoSearchViewItem
                                                                              .isAdventure)
                                                                            Row(
                                                                              mainAxisSize: MainAxisSize.max,
                                                                              children: [
                                                                                Flexible(
                                                                                  child: InkWell(
                                                                                    splashColor: Colors.transparent,
                                                                                    focusColor: Colors.transparent,
                                                                                    hoverColor: Colors.transparent,
                                                                                    highlightColor: Colors.transparent,
                                                                                    onTap: () async {
                                                                                      context.pushNamed(
                                                                                        'StoryIntro',
                                                                                        queryParameters: {
                                                                                          'passStoryInto1': serializeParam(
                                                                                            freeReadAlongNoSearchViewItem,
                                                                                            ParamType.Document,
                                                                                          ),
                                                                                        }.withoutNulls,
                                                                                        extra: <String, dynamic>{
                                                                                          'passStoryInto1': freeReadAlongNoSearchViewItem,
                                                                                        },
                                                                                      );
                                                                                    },
                                                                                    child: Container(
                                                                                      width: double.infinity,
                                                                                      height: 29.0,
                                                                                      decoration: BoxDecoration(
                                                                                        color: FlutterFlowTheme.of(context).primary,
                                                                                      ),
                                                                                      alignment: const AlignmentDirectional(0.0, 0.0),
                                                                                      child: Text(
                                                                                        'Read Along Story',
                                                                                        style: FlutterFlowTheme.of(context).bodyMedium.override(
                                                                                              fontFamily: 'Poppins',
                                                                                              color: FlutterFlowTheme.of(context).primaryBackground,
                                                                                              letterSpacing: 0.0,
                                                                                            ),
                                                                                      ),
                                                                                    ),
                                                                                  ),
                                                                                ),
                                                                              ],
                                                                            ),
                                                                          if (freeReadAlongNoSearchViewItem
                                                                              .isAdventure)
                                                                            Row(
                                                                              mainAxisSize: MainAxisSize.max,
                                                                              children: [
                                                                                Flexible(
                                                                                  child: InkWell(
                                                                                    splashColor: Colors.transparent,
                                                                                    focusColor: Colors.transparent,
                                                                                    hoverColor: Colors.transparent,
                                                                                    highlightColor: Colors.transparent,
                                                                                    onTap: () async {
                                                                                      context.pushNamed(
                                                                                        'StoryIntro',
                                                                                        queryParameters: {
                                                                                          'passStoryInto1': serializeParam(
                                                                                            freeReadAlongNoSearchViewItem,
                                                                                            ParamType.Document,
                                                                                          ),
                                                                                        }.withoutNulls,
                                                                                        extra: <String, dynamic>{
                                                                                          'passStoryInto1': freeReadAlongNoSearchViewItem,
                                                                                        },
                                                                                      );
                                                                                    },
                                                                                    child: Container(
                                                                                      width: double.infinity,
                                                                                      height: 29.0,
                                                                                      decoration: BoxDecoration(
                                                                                        color: FlutterFlowTheme.of(context).primary,
                                                                                      ),
                                                                                      alignment: const AlignmentDirectional(0.0, 0.0),
                                                                                      child: Text(
                                                                                        'Choose Your Own Adventure Story',
                                                                                        style: FlutterFlowTheme.of(context).bodyMedium.override(
                                                                                              fontFamily: 'Poppins',
                                                                                              color: FlutterFlowTheme.of(context).primaryBackground,
                                                                                              letterSpacing: 0.0,
                                                                                            ),
                                                                                      ),
                                                                                    ),
                                                                                  ),
                                                                                ),
                                                                              ],
                                                                            ),
                                                                          Padding(
                                                                            padding: const EdgeInsetsDirectional.fromSTEB(
                                                                                0.0,
                                                                                5.0,
                                                                                0.0,
                                                                                5.0),
                                                                            child:
                                                                                Row(
                                                                              mainAxisSize: MainAxisSize.max,
                                                                              children: [
                                                                                Padding(
                                                                                  padding: const EdgeInsetsDirectional.fromSTEB(5.0, 0.0, 0.0, 0.0),
                                                                                  child: Text(
                                                                                    freeReadAlongNoSearchViewItem.storyName,
                                                                                    style: FlutterFlowTheme.of(context).titleMedium.override(
                                                                                          fontFamily: 'Poppins',
                                                                                          color: FlutterFlowTheme.of(context).primary,
                                                                                          fontSize: 14.0,
                                                                                          letterSpacing: 0.0,
                                                                                        ),
                                                                                  ),
                                                                                ),
                                                                              ],
                                                                            ),
                                                                          ),
                                                                          Stack(
                                                                            children: [
                                                                              Align(
                                                                                alignment: const AlignmentDirectional(0.0, 0.0),
                                                                                child: Padding(
                                                                                  padding: const EdgeInsetsDirectional.fromSTEB(10.0, 0.0, 10.0, 0.0),
                                                                                  child: ClipRRect(
                                                                                    borderRadius: BorderRadius.circular(8.0),
                                                                                    child: Image.network(
                                                                                      freeReadAlongNoSearchViewItem.cardImageSmall,
                                                                                      width: double.infinity,
                                                                                      height: 220.0,
                                                                                      fit: BoxFit.cover,
                                                                                    ),
                                                                                  ),
                                                                                ),
                                                                              ),
                                                                              if (freeReadAlongNoSearchViewItem.isNew == true)
                                                                                Padding(
                                                                                  padding: const EdgeInsetsDirectional.fromSTEB(10.0, 0.0, 0.0, 0.0),
                                                                                  child: ClipRRect(
                                                                                    borderRadius: BorderRadius.circular(8.0),
                                                                                    child: Image.asset(
                                                                                      'assets/images/NewPurple001.gif',
                                                                                      width: 50.0,
                                                                                      height: 50.0,
                                                                                      fit: BoxFit.cover,
                                                                                    ),
                                                                                  ),
                                                                                ),
                                                                              Align(
                                                                                alignment: const AlignmentDirectional(0.0, 0.95),
                                                                                child: Padding(
                                                                                  padding: const EdgeInsetsDirectional.fromSTEB(0.0, 175.0, 20.0, 0.0),
                                                                                  child: Row(
                                                                                    mainAxisSize: MainAxisSize.max,
                                                                                    mainAxisAlignment: MainAxisAlignment.end,
                                                                                    children: [
                                                                                      if (freeReadAlongNoSearchViewItem.isFavoritedByUser.contains(currentUserReference) == false)
                                                                                        Align(
                                                                                          alignment: const AlignmentDirectional(0.24, 0.2),
                                                                                          child: FlutterFlowIconButton(
                                                                                            borderColor: FlutterFlowTheme.of(context).primary,
                                                                                            borderRadius: 20.0,
                                                                                            borderWidth: 1.0,
                                                                                            buttonSize: 40.0,
                                                                                            fillColor: FlutterFlowTheme.of(context).accent1,
                                                                                            icon: FaIcon(
                                                                                              FontAwesomeIcons.heart,
                                                                                              color: FlutterFlowTheme.of(context).primary,
                                                                                              size: 24.0,
                                                                                            ),
                                                                                            onPressed: () async {
                                                                                              await currentUserReference!.update({
                                                                                                ...mapToFirestore(
                                                                                                  {
                                                                                                    'favorited': FieldValue.arrayUnion([
                                                                                                      freeReadAlongNoSearchViewItem.reference
                                                                                                    ]),
                                                                                                  },
                                                                                                ),
                                                                                              });
                                                                                              // Add to Library

                                                                                              await freeReadAlongNoSearchViewItem.reference.update({
                                                                                                ...mapToFirestore(
                                                                                                  {
                                                                                                    'IsFavoritedByUser': FieldValue.arrayUnion([currentUserReference]),
                                                                                                  },
                                                                                                ),
                                                                                              });
                                                                                            },
                                                                                          ),
                                                                                        ),
                                                                                      if (freeReadAlongNoSearchViewItem.isFavoritedByUser.contains(currentUserReference) == true)
                                                                                        Align(
                                                                                          alignment: const AlignmentDirectional(0.9, 0.2),
                                                                                          child: FlutterFlowIconButton(
                                                                                            borderColor: FlutterFlowTheme.of(context).primary,
                                                                                            borderRadius: 20.0,
                                                                                            borderWidth: 1.0,
                                                                                            buttonSize: 40.0,
                                                                                            fillColor: FlutterFlowTheme.of(context).accent1,
                                                                                            icon: FaIcon(
                                                                                              FontAwesomeIcons.solidHeart,
                                                                                              color: FlutterFlowTheme.of(context).primary,
                                                                                              size: 24.0,
                                                                                            ),
                                                                                            onPressed: () async {
                                                                                              await currentUserReference!.update({
                                                                                                ...mapToFirestore(
                                                                                                  {
                                                                                                    'favorited': FieldValue.arrayRemove([
                                                                                                      freeReadAlongNoSearchViewItem.reference
                                                                                                    ]),
                                                                                                  },
                                                                                                ),
                                                                                              });
                                                                                              // RemoveFromLibrary

                                                                                              await freeReadAlongNoSearchViewItem.reference.update({
                                                                                                ...mapToFirestore(
                                                                                                  {
                                                                                                    'IsFavoritedByUser': FieldValue.arrayRemove([currentUserReference]),
                                                                                                  },
                                                                                                ),
                                                                                              });
                                                                                            },
                                                                                          ),
                                                                                        ),
                                                                                    ],
                                                                                  ),
                                                                                ),
                                                                              ),
                                                                            ],
                                                                          ),
                                                                          Padding(
                                                                            padding:
                                                                                const EdgeInsets.all(12.0),
                                                                            child:
                                                                                Column(
                                                                              mainAxisSize: MainAxisSize.max,
                                                                              children: [
                                                                                Wrap(
                                                                                  spacing: 0.0,
                                                                                  runSpacing: 0.0,
                                                                                  alignment: WrapAlignment.start,
                                                                                  crossAxisAlignment: WrapCrossAlignment.start,
                                                                                  direction: Axis.horizontal,
                                                                                  runAlignment: WrapAlignment.start,
                                                                                  verticalDirection: VerticalDirection.down,
                                                                                  clipBehavior: Clip.none,
                                                                                  children: [
                                                                                    Text(
                                                                                      freeReadAlongNoSearchViewItem.description,
                                                                                      style: FlutterFlowTheme.of(context).headlineMedium.override(
                                                                                            fontFamily: 'Poppins',
                                                                                            fontSize: 10.0,
                                                                                            letterSpacing: 0.0,
                                                                                          ),
                                                                                    ),
                                                                                  ],
                                                                                ),
                                                                              ].divide(const SizedBox(height: 4.0)),
                                                                            ),
                                                                          ),
                                                                        ],
                                                                      ),
                                                                    ],
                                                                  ),
                                                                ),
                                                              );
                                                            },
                                                          ),
                                                        );
                                                      },
                                                    );
                                                  },
                                                ),
                                              ),
                                            ),
                                          if ((_model.searchBarTextController
                                                          .text !=
                                                      '') &&
                                              responsiveVisibility(
                                                context: context,
                                                tablet: false,
                                                tabletLandscape: false,
                                                desktop: false,
                                              ))
                                            Align(
                                              alignment: const AlignmentDirectional(
                                                  -1.0, -1.0),
                                              child: Container(
                                                width: double.infinity,
                                                height:
                                                    MediaQuery.sizeOf(context)
                                                            .height *
                                                        1.0,
                                                decoration: const BoxDecoration(),
                                                child: Padding(
                                                  padding: const EdgeInsetsDirectional
                                                      .fromSTEB(
                                                          0.0, 0.0, 0.0, 352.0),
                                                  child: Builder(
                                                    builder: (context) {
                                                      final freeSearchView = functions
                                                          .simpleSearchV2(
                                                              _model
                                                                  .searchBarTextController
                                                                  .text,
                                                              homeRevisedDbRecordList
                                                                  .toList())
                                                          .where((e) =>
                                                              e.isReadAlong)
                                                          .toList();

                                                      return GridView.builder(
                                                        padding:
                                                            const EdgeInsets.fromLTRB(
                                                          0,
                                                          0,
                                                          0,
                                                          20.0,
                                                        ),
                                                        gridDelegate:
                                                            const SliverGridDelegateWithFixedCrossAxisCount(
                                                          crossAxisCount: 1,
                                                          crossAxisSpacing:
                                                              10.0,
                                                          mainAxisSpacing: 15.0,
                                                          childAspectRatio: 1.0,
                                                        ),
                                                        shrinkWrap: true,
                                                        scrollDirection:
                                                            Axis.vertical,
                                                        itemCount:
                                                            freeSearchView
                                                                .length,
                                                        itemBuilder: (context,
                                                            freeSearchViewIndex) {
                                                          final freeSearchViewItem =
                                                              freeSearchView[
                                                                  freeSearchViewIndex];
                                                          return Container(
                                                            width:
                                                                double.infinity,
                                                            height:
                                                                double.infinity,
                                                            decoration:
                                                                BoxDecoration(
                                                              borderRadius:
                                                                  BorderRadius
                                                                      .circular(
                                                                          8.0),
                                                              border:
                                                                  Border.all(
                                                                color: FlutterFlowTheme.of(
                                                                        context)
                                                                    .primary,
                                                              ),
                                                            ),
                                                            child: Align(
                                                              alignment:
                                                                  const AlignmentDirectional(
                                                                      0.0, 0.0),
                                                              child: InkWell(
                                                                splashColor: Colors
                                                                    .transparent,
                                                                focusColor: Colors
                                                                    .transparent,
                                                                hoverColor: Colors
                                                                    .transparent,
                                                                highlightColor:
                                                                    Colors
                                                                        .transparent,
                                                                onTap:
                                                                    () async {
                                                                  context
                                                                      .pushNamed(
                                                                    'StoryChapter',
                                                                    queryParameters:
                                                                        {
                                                                      'chapter':
                                                                          serializeParam(
                                                                        freeSearchViewItem
                                                                            .chapterRef,
                                                                        ParamType
                                                                            .DocumentReference,
                                                                      ),
                                                                      'pageNumber':
                                                                          serializeParam(
                                                                        0,
                                                                        ParamType
                                                                            .int,
                                                                      ),
                                                                    }.withoutNulls,
                                                                  );
                                                                },
                                                                child: Card(
                                                                  clipBehavior:
                                                                      Clip.antiAliasWithSaveLayer,
                                                                  color: FlutterFlowTheme.of(
                                                                          context)
                                                                      .secondaryBackground,
                                                                  elevation:
                                                                      4.0,
                                                                  shape:
                                                                      RoundedRectangleBorder(
                                                                    borderRadius:
                                                                        BorderRadius.circular(
                                                                            8.0),
                                                                  ),
                                                                  child: Stack(
                                                                    children: [
                                                                      Column(
                                                                        mainAxisSize:
                                                                            MainAxisSize.max,
                                                                        crossAxisAlignment:
                                                                            CrossAxisAlignment.start,
                                                                        children: [
                                                                          if (!freeSearchViewItem
                                                                              .isAdventure)
                                                                            Row(
                                                                              mainAxisSize: MainAxisSize.max,
                                                                              children: [
                                                                                Flexible(
                                                                                  child: InkWell(
                                                                                    splashColor: Colors.transparent,
                                                                                    focusColor: Colors.transparent,
                                                                                    hoverColor: Colors.transparent,
                                                                                    highlightColor: Colors.transparent,
                                                                                    onTap: () async {
                                                                                      context.pushNamed(
                                                                                        'StoryIntro',
                                                                                        queryParameters: {
                                                                                          'passStoryInto1': serializeParam(
                                                                                            freeSearchViewItem,
                                                                                            ParamType.Document,
                                                                                          ),
                                                                                        }.withoutNulls,
                                                                                        extra: <String, dynamic>{
                                                                                          'passStoryInto1': freeSearchViewItem,
                                                                                        },
                                                                                      );
                                                                                    },
                                                                                    child: Container(
                                                                                      width: double.infinity,
                                                                                      height: 29.0,
                                                                                      decoration: BoxDecoration(
                                                                                        color: FlutterFlowTheme.of(context).primary,
                                                                                      ),
                                                                                      alignment: const AlignmentDirectional(0.0, 0.0),
                                                                                      child: Text(
                                                                                        'Choose Your Own Adventure Story',
                                                                                        style: FlutterFlowTheme.of(context).bodyMedium.override(
                                                                                              fontFamily: 'Poppins',
                                                                                              color: FlutterFlowTheme.of(context).primaryBackground,
                                                                                              letterSpacing: 0.0,
                                                                                            ),
                                                                                      ),
                                                                                    ),
                                                                                  ),
                                                                                ),
                                                                              ],
                                                                            ),
                                                                          if (freeSearchViewItem
                                                                              .isAdventure)
                                                                            Row(
                                                                              mainAxisSize: MainAxisSize.max,
                                                                              children: [
                                                                                Flexible(
                                                                                  child: InkWell(
                                                                                    splashColor: Colors.transparent,
                                                                                    focusColor: Colors.transparent,
                                                                                    hoverColor: Colors.transparent,
                                                                                    highlightColor: Colors.transparent,
                                                                                    onTap: () async {
                                                                                      context.pushNamed(
                                                                                        'StoryIntro',
                                                                                        queryParameters: {
                                                                                          'passStoryInto1': serializeParam(
                                                                                            freeSearchViewItem,
                                                                                            ParamType.Document,
                                                                                          ),
                                                                                        }.withoutNulls,
                                                                                        extra: <String, dynamic>{
                                                                                          'passStoryInto1': freeSearchViewItem,
                                                                                        },
                                                                                      );
                                                                                    },
                                                                                    child: Container(
                                                                                      width: double.infinity,
                                                                                      height: 29.0,
                                                                                      decoration: BoxDecoration(
                                                                                        color: FlutterFlowTheme.of(context).primary,
                                                                                      ),
                                                                                      alignment: const AlignmentDirectional(0.0, 0.0),
                                                                                      child: Text(
                                                                                        'Read Along Story',
                                                                                        style: FlutterFlowTheme.of(context).bodyMedium.override(
                                                                                              fontFamily: 'Poppins',
                                                                                              color: FlutterFlowTheme.of(context).primaryBackground,
                                                                                              letterSpacing: 0.0,
                                                                                            ),
                                                                                      ),
                                                                                    ),
                                                                                  ),
                                                                                ),
                                                                              ],
                                                                            ),
                                                                          Padding(
                                                                            padding: const EdgeInsetsDirectional.fromSTEB(
                                                                                0.0,
                                                                                5.0,
                                                                                0.0,
                                                                                5.0),
                                                                            child:
                                                                                Row(
                                                                              mainAxisSize: MainAxisSize.max,
                                                                              children: [
                                                                                Padding(
                                                                                  padding: const EdgeInsetsDirectional.fromSTEB(5.0, 0.0, 0.0, 0.0),
                                                                                  child: Text(
                                                                                    freeSearchViewItem.storyName,
                                                                                    style: FlutterFlowTheme.of(context).titleMedium.override(
                                                                                          fontFamily: 'Poppins',
                                                                                          color: FlutterFlowTheme.of(context).primary,
                                                                                          fontSize: 14.0,
                                                                                          letterSpacing: 0.0,
                                                                                        ),
                                                                                  ),
                                                                                ),
                                                                              ],
                                                                            ),
                                                                          ),
                                                                          Stack(
                                                                            children: [
                                                                              Align(
                                                                                alignment: const AlignmentDirectional(0.0, 0.0),
                                                                                child: Padding(
                                                                                  padding: const EdgeInsetsDirectional.fromSTEB(10.0, 0.0, 10.0, 0.0),
                                                                                  child: ClipRRect(
                                                                                    borderRadius: BorderRadius.circular(8.0),
                                                                                    child: Image.network(
                                                                                      freeSearchViewItem.cardImageSmall,
                                                                                      width: double.infinity,
                                                                                      height: 220.0,
                                                                                      fit: BoxFit.cover,
                                                                                    ),
                                                                                  ),
                                                                                ),
                                                                              ),
                                                                              if (freeSearchViewItem.isNew == true)
                                                                                Padding(
                                                                                  padding: const EdgeInsetsDirectional.fromSTEB(10.0, 0.0, 0.0, 0.0),
                                                                                  child: ClipRRect(
                                                                                    borderRadius: BorderRadius.circular(8.0),
                                                                                    child: Image.asset(
                                                                                      'assets/images/NewPurple001.gif',
                                                                                      width: 50.0,
                                                                                      height: 50.0,
                                                                                      fit: BoxFit.cover,
                                                                                    ),
                                                                                  ),
                                                                                ),
                                                                              Align(
                                                                                alignment: const AlignmentDirectional(0.0, 0.95),
                                                                                child: Padding(
                                                                                  padding: const EdgeInsetsDirectional.fromSTEB(0.0, 175.0, 20.0, 0.0),
                                                                                  child: Row(
                                                                                    mainAxisSize: MainAxisSize.max,
                                                                                    mainAxisAlignment: MainAxisAlignment.end,
                                                                                    children: [
                                                                                      if (freeSearchViewItem.isFavoritedByUser.contains(currentUserReference) == false)
                                                                                        Align(
                                                                                          alignment: const AlignmentDirectional(0.24, 0.2),
                                                                                          child: FlutterFlowIconButton(
                                                                                            borderColor: FlutterFlowTheme.of(context).primary,
                                                                                            borderRadius: 20.0,
                                                                                            borderWidth: 1.0,
                                                                                            buttonSize: 40.0,
                                                                                            fillColor: FlutterFlowTheme.of(context).accent1,
                                                                                            icon: FaIcon(
                                                                                              FontAwesomeIcons.heart,
                                                                                              color: FlutterFlowTheme.of(context).primary,
                                                                                              size: 24.0,
                                                                                            ),
                                                                                            onPressed: () async {
                                                                                              await currentUserReference!.update({
                                                                                                ...mapToFirestore(
                                                                                                  {
                                                                                                    'favorited': FieldValue.arrayUnion([
                                                                                                      freeSearchViewItem.reference
                                                                                                    ]),
                                                                                                  },
                                                                                                ),
                                                                                              });
                                                                                              // Add to Library

                                                                                              await freeSearchViewItem.reference.update({
                                                                                                ...mapToFirestore(
                                                                                                  {
                                                                                                    'IsFavoritedByUser': FieldValue.arrayUnion([currentUserReference]),
                                                                                                  },
                                                                                                ),
                                                                                              });
                                                                                            },
                                                                                          ),
                                                                                        ),
                                                                                      if (freeSearchViewItem.isFavoritedByUser.contains(currentUserReference) == true)
                                                                                        Align(
                                                                                          alignment: const AlignmentDirectional(0.9, 0.2),
                                                                                          child: FlutterFlowIconButton(
                                                                                            borderColor: FlutterFlowTheme.of(context).primary,
                                                                                            borderRadius: 20.0,
                                                                                            borderWidth: 1.0,
                                                                                            buttonSize: 40.0,
                                                                                            fillColor: FlutterFlowTheme.of(context).accent1,
                                                                                            icon: FaIcon(
                                                                                              FontAwesomeIcons.solidHeart,
                                                                                              color: FlutterFlowTheme.of(context).primary,
                                                                                              size: 24.0,
                                                                                            ),
                                                                                            onPressed: () async {
                                                                                              await currentUserReference!.update({
                                                                                                ...mapToFirestore(
                                                                                                  {
                                                                                                    'favorited': FieldValue.arrayRemove([
                                                                                                      freeSearchViewItem.reference
                                                                                                    ]),
                                                                                                  },
                                                                                                ),
                                                                                              });
                                                                                              // RemoveFromLibrary

                                                                                              await freeSearchViewItem.reference.update({
                                                                                                ...mapToFirestore(
                                                                                                  {
                                                                                                    'IsFavoritedByUser': FieldValue.arrayRemove([currentUserReference]),
                                                                                                  },
                                                                                                ),
                                                                                              });
                                                                                            },
                                                                                          ),
                                                                                        ),
                                                                                    ],
                                                                                  ),
                                                                                ),
                                                                              ),
                                                                            ],
                                                                          ),
                                                                          Padding(
                                                                            padding:
                                                                                const EdgeInsets.all(12.0),
                                                                            child:
                                                                                Column(
                                                                              mainAxisSize: MainAxisSize.max,
                                                                              crossAxisAlignment: CrossAxisAlignment.start,
                                                                              children: [
                                                                                Text(
                                                                                  freeSearchViewItem.description,
                                                                                  style: FlutterFlowTheme.of(context).headlineMedium.override(
                                                                                        fontFamily: 'Poppins',
                                                                                        fontSize: 10.0,
                                                                                        letterSpacing: 0.0,
                                                                                      ),
                                                                                ),
                                                                              ].divide(const SizedBox(height: 4.0)),
                                                                            ),
                                                                          ),
                                                                        ],
                                                                      ),
                                                                    ],
                                                                  ),
                                                                ),
                                                              ),
                                                            ),
                                                          );
                                                        },
                                                      );
                                                    },
                                                  ),
                                                ),
                                              ),
                                            ),
                                          if ((_model.searchBarTextController
                                                          .text ==
                                                      '') &&
                                              responsiveVisibility(
                                                context: context,
                                                phone: false,
                                              ))
                                            Align(
                                              alignment: const AlignmentDirectional(
                                                  -1.0, -1.0),
                                              child: Container(
                                                width: double.infinity,
                                                height:
                                                    MediaQuery.sizeOf(context)
                                                            .height *
                                                        1.0,
                                                decoration: const BoxDecoration(),
                                                child: Padding(
                                                  padding: const EdgeInsetsDirectional
                                                      .fromSTEB(
                                                          0.0, 0.0, 0.0, 550.0),
                                                  child: Builder(
                                                    builder: (context) {
                                                      final freeReadAlongNoSearchView =
                                                          homeRevisedDbRecordList
                                                              .where((e) =>
                                                                  e.isReadAlong)
                                                              .toList();

                                                      return GridView.builder(
                                                        padding:
                                                            const EdgeInsets.fromLTRB(
                                                          0,
                                                          0,
                                                          0,
                                                          10.0,
                                                        ),
                                                        gridDelegate:
                                                            const SliverGridDelegateWithFixedCrossAxisCount(
                                                          crossAxisCount: 3,
                                                          crossAxisSpacing:
                                                              10.0,
                                                          mainAxisSpacing: 10.0,
                                                          childAspectRatio: 0.8,
                                                        ),
                                                        shrinkWrap: true,
                                                        scrollDirection:
                                                            Axis.vertical,
                                                        itemCount:
                                                            freeReadAlongNoSearchView
                                                                .length,
                                                        itemBuilder: (context,
                                                            freeReadAlongNoSearchViewIndex) {
                                                          final freeReadAlongNoSearchViewItem =
                                                              freeReadAlongNoSearchView[
                                                                  freeReadAlongNoSearchViewIndex];
                                                          return Container(
                                                            width: 100.0,
                                                            height: 133.0,
                                                            decoration:
                                                                BoxDecoration(
                                                              borderRadius:
                                                                  BorderRadius
                                                                      .circular(
                                                                          8.0),
                                                              border:
                                                                  Border.all(
                                                                color: FlutterFlowTheme.of(
                                                                        context)
                                                                    .primary,
                                                              ),
                                                            ),
                                                            child: InkWell(
                                                              splashColor: Colors
                                                                  .transparent,
                                                              focusColor: Colors
                                                                  .transparent,
                                                              hoverColor: Colors
                                                                  .transparent,
                                                              highlightColor:
                                                                  Colors
                                                                      .transparent,
                                                              onTap: () async {
                                                                context
                                                                    .pushNamed(
                                                                  'StoryChapter',
                                                                  queryParameters:
                                                                      {
                                                                    'chapter':
                                                                        serializeParam(
                                                                      freeReadAlongNoSearchViewItem
                                                                          .chapterRef,
                                                                      ParamType
                                                                          .DocumentReference,
                                                                    ),
                                                                    'pageNumber':
                                                                        serializeParam(
                                                                      0,
                                                                      ParamType
                                                                          .int,
                                                                    ),
                                                                  }.withoutNulls,
                                                                );
                                                              },
                                                              child: Card(
                                                                clipBehavior: Clip
                                                                    .antiAliasWithSaveLayer,
                                                                color: FlutterFlowTheme.of(
                                                                        context)
                                                                    .secondaryBackground,
                                                                elevation: 4.0,
                                                                shape:
                                                                    RoundedRectangleBorder(
                                                                  borderRadius:
                                                                      BorderRadius
                                                                          .circular(
                                                                              8.0),
                                                                ),
                                                                child: Align(
                                                                  alignment:
                                                                      const AlignmentDirectional(
                                                                          0.0,
                                                                          0.0),
                                                                  child: Stack(
                                                                    children: [
                                                                      Align(
                                                                        alignment: const AlignmentDirectional(
                                                                            0.0,
                                                                            0.0),
                                                                        child:
                                                                            Column(
                                                                          mainAxisSize:
                                                                              MainAxisSize.max,
                                                                          crossAxisAlignment:
                                                                              CrossAxisAlignment.center,
                                                                          children: [
                                                                            if (!freeReadAlongNoSearchViewItem.isAdventure)
                                                                              Row(
                                                                                mainAxisSize: MainAxisSize.max,
                                                                                children: [
                                                                                  Flexible(
                                                                                    child: Container(
                                                                                      width: 461.0,
                                                                                      height: 29.0,
                                                                                      decoration: BoxDecoration(
                                                                                        color: FlutterFlowTheme.of(context).primary,
                                                                                      ),
                                                                                      alignment: const AlignmentDirectional(0.0, 0.0),
                                                                                      child: Text(
                                                                                        'Read Along Story',
                                                                                        style: FlutterFlowTheme.of(context).bodyMedium.override(
                                                                                              fontFamily: 'Poppins',
                                                                                              color: FlutterFlowTheme.of(context).primaryBackground,
                                                                                              letterSpacing: 0.0,
                                                                                            ),
                                                                                      ),
                                                                                    ),
                                                                                  ),
                                                                                ],
                                                                              ),
                                                                            if (freeReadAlongNoSearchViewItem.isAdventure)
                                                                              Row(
                                                                                mainAxisSize: MainAxisSize.max,
                                                                                children: [
                                                                                  Flexible(
                                                                                    child: Container(
                                                                                      width: 361.0,
                                                                                      height: 29.0,
                                                                                      decoration: BoxDecoration(
                                                                                        color: FlutterFlowTheme.of(context).primary,
                                                                                      ),
                                                                                      alignment: const AlignmentDirectional(0.0, 0.0),
                                                                                      child: Text(
                                                                                        'Choose Your Own Adventure Story',
                                                                                        style: FlutterFlowTheme.of(context).bodyMedium.override(
                                                                                              fontFamily: 'Poppins',
                                                                                              color: FlutterFlowTheme.of(context).primaryBackground,
                                                                                              letterSpacing: 0.0,
                                                                                            ),
                                                                                      ),
                                                                                    ),
                                                                                  ),
                                                                                ],
                                                                              ),
                                                                            Padding(
                                                                              padding: const EdgeInsetsDirectional.fromSTEB(0.0, 5.0, 5.0, 0.0),
                                                                              child: Row(
                                                                                mainAxisSize: MainAxisSize.max,
                                                                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                                                                children: [
                                                                                  Wrap(
                                                                                    spacing: 0.0,
                                                                                    runSpacing: 0.0,
                                                                                    alignment: WrapAlignment.start,
                                                                                    crossAxisAlignment: WrapCrossAlignment.start,
                                                                                    direction: Axis.horizontal,
                                                                                    runAlignment: WrapAlignment.start,
                                                                                    verticalDirection: VerticalDirection.down,
                                                                                    clipBehavior: Clip.none,
                                                                                    children: [
                                                                                      Padding(
                                                                                        padding: const EdgeInsetsDirectional.fromSTEB(10.0, 5.0, 0.0, 5.0),
                                                                                        child: Text(
                                                                                          freeReadAlongNoSearchViewItem.storyName,
                                                                                          style: FlutterFlowTheme.of(context).bodyMedium.override(
                                                                                                fontFamily: 'Poppins',
                                                                                                color: FlutterFlowTheme.of(context).primary,
                                                                                                fontSize: 14.0,
                                                                                                letterSpacing: 0.0,
                                                                                                fontWeight: FontWeight.w600,
                                                                                              ),
                                                                                        ),
                                                                                      ),
                                                                                    ],
                                                                                  ),
                                                                                ],
                                                                              ),
                                                                            ),
                                                                            SizedBox(
                                                                              width: 292.0,
                                                                              height: 144.0,
                                                                              child: Stack(
                                                                                children: [
                                                                                  Align(
                                                                                    alignment: const AlignmentDirectional(0.0, -1.0),
                                                                                    child: ClipRRect(
                                                                                      borderRadius: BorderRadius.circular(8.0),
                                                                                      child: Image.network(
                                                                                        freeReadAlongNoSearchViewItem.cardImageSmall,
                                                                                        width: double.infinity,
                                                                                        height: 140.0,
                                                                                        fit: BoxFit.cover,
                                                                                      ),
                                                                                    ),
                                                                                  ),
                                                                                  if (freeReadAlongNoSearchViewItem.isNew == true)
                                                                                    ClipRRect(
                                                                                      borderRadius: BorderRadius.circular(8.0),
                                                                                      child: Image.asset(
                                                                                        'assets/images/NewPurple001.gif',
                                                                                        width: 50.0,
                                                                                        height: 50.0,
                                                                                        fit: BoxFit.cover,
                                                                                      ),
                                                                                    ),
                                                                                  if (freeReadAlongNoSearchViewItem.isFavoritedByUser.contains(currentUserReference) == false)
                                                                                    Align(
                                                                                      alignment: const AlignmentDirectional(0.91, 0.68),
                                                                                      child: FlutterFlowIconButton(
                                                                                        borderColor: FlutterFlowTheme.of(context).primary,
                                                                                        borderRadius: 20.0,
                                                                                        borderWidth: 1.0,
                                                                                        buttonSize: 40.0,
                                                                                        fillColor: FlutterFlowTheme.of(context).accent1,
                                                                                        icon: FaIcon(
                                                                                          FontAwesomeIcons.heart,
                                                                                          color: FlutterFlowTheme.of(context).primary,
                                                                                          size: 24.0,
                                                                                        ),
                                                                                        onPressed: () async {
                                                                                          await currentUserReference!.update({
                                                                                            ...mapToFirestore(
                                                                                              {
                                                                                                'favorited': FieldValue.arrayUnion([
                                                                                                  freeReadAlongNoSearchViewItem.reference
                                                                                                ]),
                                                                                              },
                                                                                            ),
                                                                                          });
                                                                                          // Add to Library

                                                                                          await freeReadAlongNoSearchViewItem.reference.update({
                                                                                            ...mapToFirestore(
                                                                                              {
                                                                                                'IsFavoritedByUser': FieldValue.arrayUnion([
                                                                                                  currentUserReference
                                                                                                ]),
                                                                                              },
                                                                                            ),
                                                                                          });
                                                                                        },
                                                                                      ),
                                                                                    ),
                                                                                  if (freeReadAlongNoSearchViewItem.isFavoritedByUser.contains(currentUserReference) == true)
                                                                                    Align(
                                                                                      alignment: const AlignmentDirectional(0.91, 0.66),
                                                                                      child: FlutterFlowIconButton(
                                                                                        borderColor: FlutterFlowTheme.of(context).primary,
                                                                                        borderRadius: 20.0,
                                                                                        borderWidth: 1.0,
                                                                                        buttonSize: 40.0,
                                                                                        fillColor: FlutterFlowTheme.of(context).accent1,
                                                                                        icon: FaIcon(
                                                                                          FontAwesomeIcons.solidHeart,
                                                                                          color: FlutterFlowTheme.of(context).primary,
                                                                                          size: 24.0,
                                                                                        ),
                                                                                        onPressed: () async {
                                                                                          await currentUserReference!.update({
                                                                                            ...mapToFirestore(
                                                                                              {
                                                                                                'favorited': FieldValue.arrayRemove([
                                                                                                  freeReadAlongNoSearchViewItem.reference
                                                                                                ]),
                                                                                              },
                                                                                            ),
                                                                                          });
                                                                                          // RemoveFromLibrary

                                                                                          await freeReadAlongNoSearchViewItem.reference.update({
                                                                                            ...mapToFirestore(
                                                                                              {
                                                                                                'IsFavoritedByUser': FieldValue.arrayRemove([
                                                                                                  currentUserReference
                                                                                                ]),
                                                                                              },
                                                                                            ),
                                                                                          });
                                                                                        },
                                                                                      ),
                                                                                    ),
                                                                                ],
                                                                              ),
                                                                            ),
                                                                            Padding(
                                                                              padding: const EdgeInsetsDirectional.fromSTEB(15.0, 0.0, 15.0, 0.0),
                                                                              child: Row(
                                                                                mainAxisSize: MainAxisSize.max,
                                                                                children: [
                                                                                  Flexible(
                                                                                    child: Wrap(
                                                                                      spacing: 0.0,
                                                                                      runSpacing: 0.0,
                                                                                      alignment: WrapAlignment.start,
                                                                                      crossAxisAlignment: WrapCrossAlignment.start,
                                                                                      direction: Axis.horizontal,
                                                                                      runAlignment: WrapAlignment.start,
                                                                                      verticalDirection: VerticalDirection.down,
                                                                                      clipBehavior: Clip.none,
                                                                                      children: [
                                                                                        Padding(
                                                                                          padding: const EdgeInsetsDirectional.fromSTEB(0.0, 5.0, 0.0, 10.0),
                                                                                          child: Text(
                                                                                            freeReadAlongNoSearchViewItem.description.maybeHandleOverflow(
                                                                                              maxChars: 60,
                                                                                              replacement: '…',
                                                                                            ),
                                                                                            style: FlutterFlowTheme.of(context).bodyMedium.override(
                                                                                                  fontFamily: 'Poppins',
                                                                                                  letterSpacing: 0.0,
                                                                                                ),
                                                                                          ),
                                                                                        ),
                                                                                      ],
                                                                                    ),
                                                                                  ),
                                                                                ],
                                                                              ),
                                                                            ),
                                                                          ],
                                                                        ),
                                                                      ),
                                                                    ],
                                                                  ),
                                                                ),
                                                              ),
                                                            ),
                                                          );
                                                        },
                                                      );
                                                    },
                                                  ),
                                                ),
                                              ),
                                            ),
                                          if ((_model.searchBarTextController
                                                          .text !=
                                                      '') &&
                                              responsiveVisibility(
                                                context: context,
                                                phone: false,
                                              ))
                                            Align(
                                              alignment: const AlignmentDirectional(
                                                  -1.0, -1.0),
                                              child: Container(
                                                width: double.infinity,
                                                height:
                                                    MediaQuery.sizeOf(context)
                                                            .height *
                                                        1.0,
                                                decoration: const BoxDecoration(),
                                                child: Padding(
                                                  padding: const EdgeInsetsDirectional
                                                      .fromSTEB(
                                                          0.0, 0.0, 0.0, 550.0),
                                                  child: Builder(
                                                    builder: (context) {
                                                      final freeSearchView = functions
                                                          .simpleSearchV2(
                                                              _model
                                                                  .searchBarTextController
                                                                  .text,
                                                              homeRevisedDbRecordList
                                                                  .toList())
                                                          .where((e) =>
                                                              e.isReadAlong)
                                                          .toList();

                                                      return GridView.builder(
                                                        padding:
                                                            const EdgeInsets.fromLTRB(
                                                          0,
                                                          0,
                                                          0,
                                                          10.0,
                                                        ),
                                                        gridDelegate:
                                                            const SliverGridDelegateWithFixedCrossAxisCount(
                                                          crossAxisCount: 3,
                                                          crossAxisSpacing:
                                                              10.0,
                                                          mainAxisSpacing: 10.0,
                                                          childAspectRatio: 0.8,
                                                        ),
                                                        shrinkWrap: true,
                                                        scrollDirection:
                                                            Axis.vertical,
                                                        itemCount:
                                                            freeSearchView
                                                                .length,
                                                        itemBuilder: (context,
                                                            freeSearchViewIndex) {
                                                          final freeSearchViewItem =
                                                              freeSearchView[
                                                                  freeSearchViewIndex];
                                                          return Container(
                                                            width: 100.0,
                                                            height: 133.0,
                                                            decoration:
                                                                const BoxDecoration(),
                                                            child: InkWell(
                                                              splashColor: Colors
                                                                  .transparent,
                                                              focusColor: Colors
                                                                  .transparent,
                                                              hoverColor: Colors
                                                                  .transparent,
                                                              highlightColor:
                                                                  Colors
                                                                      .transparent,
                                                              onTap: () async {
                                                                context
                                                                    .pushNamed(
                                                                  'StoryChapter',
                                                                  queryParameters:
                                                                      {
                                                                    'chapter':
                                                                        serializeParam(
                                                                      freeSearchViewItem
                                                                          .chapterRef,
                                                                      ParamType
                                                                          .DocumentReference,
                                                                    ),
                                                                    'pageNumber':
                                                                        serializeParam(
                                                                      0,
                                                                      ParamType
                                                                          .int,
                                                                    ),
                                                                  }.withoutNulls,
                                                                );
                                                              },
                                                              child: Card(
                                                                clipBehavior: Clip
                                                                    .antiAliasWithSaveLayer,
                                                                color: FlutterFlowTheme.of(
                                                                        context)
                                                                    .secondaryBackground,
                                                                elevation: 4.0,
                                                                shape:
                                                                    RoundedRectangleBorder(
                                                                  borderRadius:
                                                                      BorderRadius
                                                                          .circular(
                                                                              8.0),
                                                                ),
                                                                child: Align(
                                                                  alignment:
                                                                      const AlignmentDirectional(
                                                                          0.0,
                                                                          0.0),
                                                                  child: Stack(
                                                                    children: [
                                                                      Align(
                                                                        alignment: const AlignmentDirectional(
                                                                            0.0,
                                                                            0.0),
                                                                        child:
                                                                            Column(
                                                                          mainAxisSize:
                                                                              MainAxisSize.max,
                                                                          crossAxisAlignment:
                                                                              CrossAxisAlignment.start,
                                                                          children: [
                                                                            if (freeSearchViewItem.isAdventure)
                                                                              Row(
                                                                                mainAxisSize: MainAxisSize.max,
                                                                                children: [
                                                                                  Flexible(
                                                                                    child: Container(
                                                                                      width: 361.0,
                                                                                      height: 29.0,
                                                                                      decoration: BoxDecoration(
                                                                                        color: FlutterFlowTheme.of(context).primary,
                                                                                      ),
                                                                                      alignment: const AlignmentDirectional(0.0, 0.0),
                                                                                      child: Text(
                                                                                        'Choose Your Own Adventure Story',
                                                                                        style: FlutterFlowTheme.of(context).bodyMedium.override(
                                                                                              fontFamily: 'Poppins',
                                                                                              color: FlutterFlowTheme.of(context).primaryBackground,
                                                                                              letterSpacing: 0.0,
                                                                                            ),
                                                                                      ),
                                                                                    ),
                                                                                  ),
                                                                                ],
                                                                              ),
                                                                            if (!freeSearchViewItem.isAdventure)
                                                                              Row(
                                                                                mainAxisSize: MainAxisSize.max,
                                                                                children: [
                                                                                  Flexible(
                                                                                    child: Container(
                                                                                      width: 461.0,
                                                                                      height: 29.0,
                                                                                      decoration: BoxDecoration(
                                                                                        color: FlutterFlowTheme.of(context).primary,
                                                                                      ),
                                                                                      alignment: const AlignmentDirectional(0.0, 0.0),
                                                                                      child: Text(
                                                                                        'Read Along Story',
                                                                                        style: FlutterFlowTheme.of(context).bodyMedium.override(
                                                                                              fontFamily: 'Poppins',
                                                                                              color: FlutterFlowTheme.of(context).primaryBackground,
                                                                                              letterSpacing: 0.0,
                                                                                            ),
                                                                                      ),
                                                                                    ),
                                                                                  ),
                                                                                ],
                                                                              ),
                                                                            Padding(
                                                                              padding: const EdgeInsetsDirectional.fromSTEB(0.0, 5.0, 5.0, 0.0),
                                                                              child: Row(
                                                                                mainAxisSize: MainAxisSize.max,
                                                                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                                                                children: [
                                                                                  Wrap(
                                                                                    spacing: 0.0,
                                                                                    runSpacing: 0.0,
                                                                                    alignment: WrapAlignment.start,
                                                                                    crossAxisAlignment: WrapCrossAlignment.start,
                                                                                    direction: Axis.horizontal,
                                                                                    runAlignment: WrapAlignment.start,
                                                                                    verticalDirection: VerticalDirection.down,
                                                                                    clipBehavior: Clip.none,
                                                                                    children: [
                                                                                      Padding(
                                                                                        padding: const EdgeInsetsDirectional.fromSTEB(10.0, 5.0, 0.0, 5.0),
                                                                                        child: Text(
                                                                                          freeSearchViewItem.storyName,
                                                                                          style: FlutterFlowTheme.of(context).bodyMedium.override(
                                                                                                fontFamily: 'Poppins',
                                                                                                color: FlutterFlowTheme.of(context).primary,
                                                                                                fontSize: 14.0,
                                                                                                letterSpacing: 0.0,
                                                                                                fontWeight: FontWeight.w600,
                                                                                              ),
                                                                                        ),
                                                                                      ),
                                                                                    ],
                                                                                  ),
                                                                                ],
                                                                              ),
                                                                            ),
                                                                            SizedBox(
                                                                              width: 292.0,
                                                                              height: 144.0,
                                                                              child: Stack(
                                                                                children: [
                                                                                  ClipRRect(
                                                                                    borderRadius: const BorderRadius.only(
                                                                                      bottomLeft: Radius.circular(0.0),
                                                                                      bottomRight: Radius.circular(0.0),
                                                                                      topLeft: Radius.circular(8.0),
                                                                                      topRight: Radius.circular(8.0),
                                                                                    ),
                                                                                    child: Image.network(
                                                                                      freeSearchViewItem.cardImageSmall,
                                                                                      width: double.infinity,
                                                                                      height: 140.0,
                                                                                      fit: BoxFit.cover,
                                                                                    ),
                                                                                  ),
                                                                                  if (freeSearchViewItem.isNew == true)
                                                                                    ClipRRect(
                                                                                      borderRadius: BorderRadius.circular(8.0),
                                                                                      child: Image.asset(
                                                                                        'assets/images/NewPurple001.gif',
                                                                                        width: 50.0,
                                                                                        height: 50.0,
                                                                                        fit: BoxFit.cover,
                                                                                      ),
                                                                                    ),
                                                                                  if (freeSearchViewItem.isFavoritedByUser.contains(currentUserReference) == false)
                                                                                    Align(
                                                                                      alignment: const AlignmentDirectional(0.94, 0.72),
                                                                                      child: FlutterFlowIconButton(
                                                                                        borderColor: FlutterFlowTheme.of(context).primary,
                                                                                        borderRadius: 20.0,
                                                                                        borderWidth: 1.0,
                                                                                        buttonSize: 40.0,
                                                                                        fillColor: FlutterFlowTheme.of(context).accent1,
                                                                                        icon: FaIcon(
                                                                                          FontAwesomeIcons.heart,
                                                                                          color: FlutterFlowTheme.of(context).primary,
                                                                                          size: 24.0,
                                                                                        ),
                                                                                        onPressed: () async {
                                                                                          await currentUserReference!.update({
                                                                                            ...mapToFirestore(
                                                                                              {
                                                                                                'favorited': FieldValue.arrayUnion([
                                                                                                  freeSearchViewItem.reference
                                                                                                ]),
                                                                                              },
                                                                                            ),
                                                                                          });
                                                                                          // Add to Library

                                                                                          await freeSearchViewItem.reference.update({
                                                                                            ...mapToFirestore(
                                                                                              {
                                                                                                'IsFavoritedByUser': FieldValue.arrayUnion([
                                                                                                  currentUserReference
                                                                                                ]),
                                                                                              },
                                                                                            ),
                                                                                          });
                                                                                        },
                                                                                      ),
                                                                                    ),
                                                                                  if (freeSearchViewItem.isFavoritedByUser.contains(currentUserReference) == true)
                                                                                    Align(
                                                                                      alignment: const AlignmentDirectional(0.93, 0.74),
                                                                                      child: FlutterFlowIconButton(
                                                                                        borderColor: FlutterFlowTheme.of(context).primary,
                                                                                        borderRadius: 20.0,
                                                                                        borderWidth: 1.0,
                                                                                        buttonSize: 40.0,
                                                                                        fillColor: FlutterFlowTheme.of(context).accent1,
                                                                                        icon: FaIcon(
                                                                                          FontAwesomeIcons.solidHeart,
                                                                                          color: FlutterFlowTheme.of(context).primary,
                                                                                          size: 24.0,
                                                                                        ),
                                                                                        onPressed: () async {
                                                                                          await currentUserReference!.update({
                                                                                            ...mapToFirestore(
                                                                                              {
                                                                                                'favorited': FieldValue.arrayRemove([
                                                                                                  freeSearchViewItem.reference
                                                                                                ]),
                                                                                              },
                                                                                            ),
                                                                                          });
                                                                                          // RemoveFromLibrary

                                                                                          await freeSearchViewItem.reference.update({
                                                                                            ...mapToFirestore(
                                                                                              {
                                                                                                'IsFavoritedByUser': FieldValue.arrayRemove([
                                                                                                  currentUserReference
                                                                                                ]),
                                                                                              },
                                                                                            ),
                                                                                          });
                                                                                        },
                                                                                      ),
                                                                                    ),
                                                                                ],
                                                                              ),
                                                                            ),
                                                                            Padding(
                                                                              padding: const EdgeInsetsDirectional.fromSTEB(15.0, 0.0, 15.0, 0.0),
                                                                              child: Row(
                                                                                mainAxisSize: MainAxisSize.max,
                                                                                children: [
                                                                                  Flexible(
                                                                                    child: Wrap(
                                                                                      spacing: 0.0,
                                                                                      runSpacing: 0.0,
                                                                                      alignment: WrapAlignment.start,
                                                                                      crossAxisAlignment: WrapCrossAlignment.start,
                                                                                      direction: Axis.horizontal,
                                                                                      runAlignment: WrapAlignment.start,
                                                                                      verticalDirection: VerticalDirection.down,
                                                                                      clipBehavior: Clip.none,
                                                                                      children: [
                                                                                        Padding(
                                                                                          padding: const EdgeInsetsDirectional.fromSTEB(0.0, 5.0, 0.0, 10.0),
                                                                                          child: Text(
                                                                                            freeSearchViewItem.description.maybeHandleOverflow(
                                                                                              maxChars: 60,
                                                                                              replacement: '…',
                                                                                            ),
                                                                                            style: FlutterFlowTheme.of(context).bodyMedium.override(
                                                                                                  fontFamily: 'Poppins',
                                                                                                  letterSpacing: 0.0,
                                                                                                ),
                                                                                          ),
                                                                                        ),
                                                                                      ],
                                                                                    ),
                                                                                  ),
                                                                                ],
                                                                              ),
                                                                            ),
                                                                          ],
                                                                        ),
                                                                      ),
                                                                    ],
                                                                  ),
                                                                ),
                                                              ),
                                                            ),
                                                          );
                                                        },
                                                      );
                                                    },
                                                  ),
                                                ),
                                              ),
                                            ),
                                        ],
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsetsDirectional.fromSTEB(
                                    15.0, 15.0, 15.0, 10.0),
                                child: SingleChildScrollView(
                                  child: Column(
                                    mainAxisSize: MainAxisSize.max,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      if ((_model.searchBarTextController
                                                      .text ==
                                                  '') &&
                                          responsiveVisibility(
                                            context: context,
                                            tablet: false,
                                            tabletLandscape: false,
                                            desktop: false,
                                          ))
                                        Container(
                                          width: double.infinity,
                                          height: MediaQuery.sizeOf(context)
                                                  .height *
                                              1.0,
                                          decoration: const BoxDecoration(),
                                          child: Padding(
                                            padding:
                                                const EdgeInsetsDirectional.fromSTEB(
                                                    0.0, 0.0, 0.0, 350.0),
                                            child: Builder(
                                              builder: (context) {
                                                final isReadAlong =
                                                    homeRevisedDbRecordList
                                                        .where((e) =>
                                                            e.isReadAlong)
                                                        .toList();

                                                return GridView.builder(
                                                  padding: const EdgeInsets.fromLTRB(
                                                    0,
                                                    0,
                                                    0,
                                                    20.0,
                                                  ),
                                                  gridDelegate:
                                                      const SliverGridDelegateWithFixedCrossAxisCount(
                                                    crossAxisCount: 1,
                                                    crossAxisSpacing: 10.0,
                                                    mainAxisSpacing: 15.0,
                                                    childAspectRatio: 1.0,
                                                  ),
                                                  shrinkWrap: true,
                                                  scrollDirection:
                                                      Axis.vertical,
                                                  itemCount: isReadAlong.length,
                                                  itemBuilder: (context,
                                                      isReadAlongIndex) {
                                                    final isReadAlongItem =
                                                        isReadAlong[
                                                            isReadAlongIndex];
                                                    return Padding(
                                                      padding:
                                                          const EdgeInsetsDirectional
                                                              .fromSTEB(
                                                                  5.0,
                                                                  0.0,
                                                                  5.0,
                                                                  0.0),
                                                      child: Container(
                                                        width: double.infinity,
                                                        height: double.infinity,
                                                        decoration:
                                                            BoxDecoration(
                                                          borderRadius:
                                                              BorderRadius
                                                                  .circular(
                                                                      8.0),
                                                          border: Border.all(
                                                            color: FlutterFlowTheme
                                                                    .of(context)
                                                                .primary,
                                                          ),
                                                        ),
                                                        child: InkWell(
                                                          splashColor: Colors
                                                              .transparent,
                                                          focusColor: Colors
                                                              .transparent,
                                                          hoverColor: Colors
                                                              .transparent,
                                                          highlightColor: Colors
                                                              .transparent,
                                                          onTap: () async {
                                                            context.pushNamed(
                                                              'StoryChapter',
                                                              queryParameters: {
                                                                'chapter':
                                                                    serializeParam(
                                                                  isReadAlongItem
                                                                      .chapterRef,
                                                                  ParamType
                                                                      .DocumentReference,
                                                                ),
                                                                'pageNumber':
                                                                    serializeParam(
                                                                  0,
                                                                  ParamType.int,
                                                                ),
                                                              }.withoutNulls,
                                                            );
                                                          },
                                                          child: Card(
                                                            clipBehavior: Clip
                                                                .antiAliasWithSaveLayer,
                                                            color: FlutterFlowTheme
                                                                    .of(context)
                                                                .secondaryBackground,
                                                            elevation: 4.0,
                                                            shape:
                                                                RoundedRectangleBorder(
                                                              borderRadius:
                                                                  BorderRadius
                                                                      .circular(
                                                                          8.0),
                                                            ),
                                                            child: Stack(
                                                              children: [
                                                                Column(
                                                                  mainAxisSize:
                                                                      MainAxisSize
                                                                          .max,
                                                                  crossAxisAlignment:
                                                                      CrossAxisAlignment
                                                                          .start,
                                                                  children: [
                                                                    if (isReadAlongItem
                                                                        .isAdventure)
                                                                      Row(
                                                                        mainAxisSize:
                                                                            MainAxisSize.max,
                                                                        children: [
                                                                          Flexible(
                                                                            child:
                                                                                InkWell(
                                                                              splashColor: Colors.transparent,
                                                                              focusColor: Colors.transparent,
                                                                              hoverColor: Colors.transparent,
                                                                              highlightColor: Colors.transparent,
                                                                              onTap: () async {
                                                                                context.pushNamed(
                                                                                  'StoryIntro',
                                                                                  queryParameters: {
                                                                                    'passStoryInto1': serializeParam(
                                                                                      isReadAlongItem,
                                                                                      ParamType.Document,
                                                                                    ),
                                                                                  }.withoutNulls,
                                                                                  extra: <String, dynamic>{
                                                                                    'passStoryInto1': isReadAlongItem,
                                                                                  },
                                                                                );
                                                                              },
                                                                              child: Container(
                                                                                width: double.infinity,
                                                                                height: 29.0,
                                                                                decoration: BoxDecoration(
                                                                                  color: FlutterFlowTheme.of(context).primary,
                                                                                ),
                                                                                alignment: const AlignmentDirectional(0.0, 0.0),
                                                                                child: Text(
                                                                                  'Choose Your Own Adventure Story',
                                                                                  style: FlutterFlowTheme.of(context).bodyMedium.override(
                                                                                        fontFamily: 'Poppins',
                                                                                        color: FlutterFlowTheme.of(context).primaryBackground,
                                                                                        letterSpacing: 0.0,
                                                                                      ),
                                                                                ),
                                                                              ),
                                                                            ),
                                                                          ),
                                                                        ],
                                                                      ),
                                                                    if (!isReadAlongItem
                                                                        .isAdventure)
                                                                      Row(
                                                                        mainAxisSize:
                                                                            MainAxisSize.max,
                                                                        children: [
                                                                          Flexible(
                                                                            child:
                                                                                InkWell(
                                                                              splashColor: Colors.transparent,
                                                                              focusColor: Colors.transparent,
                                                                              hoverColor: Colors.transparent,
                                                                              highlightColor: Colors.transparent,
                                                                              onTap: () async {
                                                                                context.pushNamed(
                                                                                  'StoryIntro',
                                                                                  queryParameters: {
                                                                                    'passStoryInto1': serializeParam(
                                                                                      isReadAlongItem,
                                                                                      ParamType.Document,
                                                                                    ),
                                                                                  }.withoutNulls,
                                                                                  extra: <String, dynamic>{
                                                                                    'passStoryInto1': isReadAlongItem,
                                                                                  },
                                                                                );
                                                                              },
                                                                              child: Container(
                                                                                width: double.infinity,
                                                                                height: 29.0,
                                                                                decoration: BoxDecoration(
                                                                                  color: FlutterFlowTheme.of(context).primary,
                                                                                ),
                                                                                alignment: const AlignmentDirectional(0.0, 0.0),
                                                                                child: Text(
                                                                                  'Read Along Story',
                                                                                  style: FlutterFlowTheme.of(context).bodyMedium.override(
                                                                                        fontFamily: 'Poppins',
                                                                                        color: FlutterFlowTheme.of(context).primaryBackground,
                                                                                        letterSpacing: 0.0,
                                                                                      ),
                                                                                ),
                                                                              ),
                                                                            ),
                                                                          ),
                                                                        ],
                                                                      ),
                                                                    Padding(
                                                                      padding: const EdgeInsetsDirectional.fromSTEB(
                                                                          0.0,
                                                                          5.0,
                                                                          0.0,
                                                                          5.0),
                                                                      child:
                                                                          Row(
                                                                        mainAxisSize:
                                                                            MainAxisSize.max,
                                                                        children: [
                                                                          Padding(
                                                                            padding: const EdgeInsetsDirectional.fromSTEB(
                                                                                5.0,
                                                                                0.0,
                                                                                0.0,
                                                                                0.0),
                                                                            child:
                                                                                Text(
                                                                              isReadAlongItem.storyName,
                                                                              style: FlutterFlowTheme.of(context).titleMedium.override(
                                                                                    fontFamily: 'Poppins',
                                                                                    color: FlutterFlowTheme.of(context).primary,
                                                                                    fontSize: 14.0,
                                                                                    letterSpacing: 0.0,
                                                                                  ),
                                                                            ),
                                                                          ),
                                                                        ],
                                                                      ),
                                                                    ),
                                                                    Stack(
                                                                      children: [
                                                                        Align(
                                                                          alignment: const AlignmentDirectional(
                                                                              0.0,
                                                                              0.0),
                                                                          child:
                                                                              Padding(
                                                                            padding: const EdgeInsetsDirectional.fromSTEB(
                                                                                10.0,
                                                                                0.0,
                                                                                10.0,
                                                                                0.0),
                                                                            child:
                                                                                ClipRRect(
                                                                              borderRadius: BorderRadius.circular(8.0),
                                                                              child: Image.network(
                                                                                isReadAlongItem.cardImageSmall,
                                                                                width: double.infinity,
                                                                                height: 220.0,
                                                                                fit: BoxFit.cover,
                                                                              ),
                                                                            ),
                                                                          ),
                                                                        ),
                                                                        if (isReadAlongItem.isNew ==
                                                                            true)
                                                                          Padding(
                                                                            padding: const EdgeInsetsDirectional.fromSTEB(
                                                                                10.0,
                                                                                0.0,
                                                                                0.0,
                                                                                0.0),
                                                                            child:
                                                                                ClipRRect(
                                                                              borderRadius: BorderRadius.circular(8.0),
                                                                              child: Image.asset(
                                                                                'assets/images/NewPurple001.gif',
                                                                                width: 50.0,
                                                                                height: 50.0,
                                                                                fit: BoxFit.cover,
                                                                              ),
                                                                            ),
                                                                          ),
                                                                        Align(
                                                                          alignment: const AlignmentDirectional(
                                                                              0.0,
                                                                              0.95),
                                                                          child:
                                                                              Padding(
                                                                            padding: const EdgeInsetsDirectional.fromSTEB(
                                                                                0.0,
                                                                                175.0,
                                                                                20.0,
                                                                                0.0),
                                                                            child:
                                                                                Row(
                                                                              mainAxisSize: MainAxisSize.max,
                                                                              mainAxisAlignment: MainAxisAlignment.end,
                                                                              children: [
                                                                                if (isReadAlongItem.isFavoritedByUser.contains(currentUserReference) == false)
                                                                                  Align(
                                                                                    alignment: const AlignmentDirectional(0.24, 0.2),
                                                                                    child: FlutterFlowIconButton(
                                                                                      borderColor: FlutterFlowTheme.of(context).primary,
                                                                                      borderRadius: 20.0,
                                                                                      borderWidth: 1.0,
                                                                                      buttonSize: 40.0,
                                                                                      fillColor: FlutterFlowTheme.of(context).accent1,
                                                                                      icon: FaIcon(
                                                                                        FontAwesomeIcons.heart,
                                                                                        color: FlutterFlowTheme.of(context).primary,
                                                                                        size: 24.0,
                                                                                      ),
                                                                                      onPressed: () async {
                                                                                        await currentUserReference!.update({
                                                                                          ...mapToFirestore(
                                                                                            {
                                                                                              'favorited': FieldValue.arrayUnion([
                                                                                                isReadAlongItem.reference
                                                                                              ]),
                                                                                            },
                                                                                          ),
                                                                                        });
                                                                                        // Add to Library

                                                                                        await isReadAlongItem.reference.update({
                                                                                          ...mapToFirestore(
                                                                                            {
                                                                                              'IsFavoritedByUser': FieldValue.arrayUnion([
                                                                                                currentUserReference
                                                                                              ]),
                                                                                            },
                                                                                          ),
                                                                                        });
                                                                                      },
                                                                                    ),
                                                                                  ),
                                                                                if (isReadAlongItem.isFavoritedByUser.contains(currentUserReference) == true)
                                                                                  Align(
                                                                                    alignment: const AlignmentDirectional(0.9, 0.2),
                                                                                    child: FlutterFlowIconButton(
                                                                                      borderColor: FlutterFlowTheme.of(context).primary,
                                                                                      borderRadius: 20.0,
                                                                                      borderWidth: 1.0,
                                                                                      buttonSize: 40.0,
                                                                                      fillColor: FlutterFlowTheme.of(context).accent1,
                                                                                      icon: FaIcon(
                                                                                        FontAwesomeIcons.solidHeart,
                                                                                        color: FlutterFlowTheme.of(context).primary,
                                                                                        size: 24.0,
                                                                                      ),
                                                                                      onPressed: () async {
                                                                                        await currentUserReference!.update({
                                                                                          ...mapToFirestore(
                                                                                            {
                                                                                              'favorited': FieldValue.arrayRemove([
                                                                                                isReadAlongItem.reference
                                                                                              ]),
                                                                                            },
                                                                                          ),
                                                                                        });
                                                                                        // RemoveFromLibrary

                                                                                        await isReadAlongItem.reference.update({
                                                                                          ...mapToFirestore(
                                                                                            {
                                                                                              'IsFavoritedByUser': FieldValue.arrayRemove([
                                                                                                currentUserReference
                                                                                              ]),
                                                                                            },
                                                                                          ),
                                                                                        });
                                                                                      },
                                                                                    ),
                                                                                  ),
                                                                              ],
                                                                            ),
                                                                          ),
                                                                        ),
                                                                      ],
                                                                    ),
                                                                    Padding(
                                                                      padding:
                                                                          const EdgeInsets.all(
                                                                              12.0),
                                                                      child:
                                                                          Column(
                                                                        mainAxisSize:
                                                                            MainAxisSize.max,
                                                                        crossAxisAlignment:
                                                                            CrossAxisAlignment.start,
                                                                        children:
                                                                            [
                                                                          Padding(
                                                                            padding: const EdgeInsetsDirectional.fromSTEB(
                                                                                0.0,
                                                                                5.0,
                                                                                0.0,
                                                                                10.0),
                                                                            child:
                                                                                Text(
                                                                              isReadAlongItem.description,
                                                                              style: FlutterFlowTheme.of(context).headlineMedium.override(
                                                                                    fontFamily: 'Poppins',
                                                                                    fontSize: 10.0,
                                                                                    letterSpacing: 0.0,
                                                                                  ),
                                                                            ),
                                                                          ),
                                                                        ].divide(const SizedBox(height: 4.0)),
                                                                      ),
                                                                    ),
                                                                  ],
                                                                ),
                                                              ],
                                                            ),
                                                          ),
                                                        ),
                                                      ),
                                                    );
                                                  },
                                                );
                                              },
                                            ),
                                          ),
                                        ),
                                      if ((_model.searchBarTextController
                                                      .text !=
                                                  '') &&
                                          responsiveVisibility(
                                            context: context,
                                            tablet: false,
                                            tabletLandscape: false,
                                            desktop: false,
                                          ))
                                        Container(
                                          width: double.infinity,
                                          height: MediaQuery.sizeOf(context)
                                                  .height *
                                              1.0,
                                          decoration: const BoxDecoration(),
                                          child: Padding(
                                            padding:
                                                const EdgeInsetsDirectional.fromSTEB(
                                                    0.0, 0.0, 0.0, 350.0),
                                            child: Builder(
                                              builder: (context) {
                                                final search = functions
                                                    .simpleSearchV2(
                                                        _model
                                                            .searchBarTextController
                                                            .text,
                                                        homeRevisedDbRecordList
                                                            .toList())
                                                    .where((e) => e.isReadAlong)
                                                    .toList();

                                                return GridView.builder(
                                                  padding: const EdgeInsets.fromLTRB(
                                                    0,
                                                    0,
                                                    0,
                                                    20.0,
                                                  ),
                                                  gridDelegate:
                                                      const SliverGridDelegateWithFixedCrossAxisCount(
                                                    crossAxisCount: 1,
                                                    crossAxisSpacing: 10.0,
                                                    mainAxisSpacing: 15.0,
                                                    childAspectRatio: 1.0,
                                                  ),
                                                  shrinkWrap: true,
                                                  scrollDirection:
                                                      Axis.vertical,
                                                  itemCount: search.length,
                                                  itemBuilder:
                                                      (context, searchIndex) {
                                                    final searchItem =
                                                        search[searchIndex];
                                                    return Container(
                                                      width: double.infinity,
                                                      height: double.infinity,
                                                      decoration: BoxDecoration(
                                                        borderRadius:
                                                            BorderRadius
                                                                .circular(8.0),
                                                        border: Border.all(
                                                          color: FlutterFlowTheme
                                                                  .of(context)
                                                              .primary,
                                                        ),
                                                      ),
                                                      child: InkWell(
                                                        splashColor:
                                                            Colors.transparent,
                                                        focusColor:
                                                            Colors.transparent,
                                                        hoverColor:
                                                            Colors.transparent,
                                                        highlightColor:
                                                            Colors.transparent,
                                                        onTap: () async {
                                                          context.pushNamed(
                                                            'StoryChapter',
                                                            queryParameters: {
                                                              'chapter':
                                                                  serializeParam(
                                                                searchItem
                                                                    .chapterRef,
                                                                ParamType
                                                                    .DocumentReference,
                                                              ),
                                                              'pageNumber':
                                                                  serializeParam(
                                                                0,
                                                                ParamType.int,
                                                              ),
                                                            }.withoutNulls,
                                                          );
                                                        },
                                                        child: Card(
                                                          clipBehavior: Clip
                                                              .antiAliasWithSaveLayer,
                                                          color: FlutterFlowTheme
                                                                  .of(context)
                                                              .secondaryBackground,
                                                          elevation: 4.0,
                                                          shape:
                                                              RoundedRectangleBorder(
                                                            borderRadius:
                                                                BorderRadius
                                                                    .circular(
                                                                        8.0),
                                                          ),
                                                          child: Stack(
                                                            children: [
                                                              Column(
                                                                mainAxisSize:
                                                                    MainAxisSize
                                                                        .max,
                                                                crossAxisAlignment:
                                                                    CrossAxisAlignment
                                                                        .start,
                                                                children: [
                                                                  if (!searchItem
                                                                      .isAdventure)
                                                                    Row(
                                                                      mainAxisSize:
                                                                          MainAxisSize
                                                                              .max,
                                                                      children: [
                                                                        Flexible(
                                                                          child:
                                                                              InkWell(
                                                                            splashColor:
                                                                                Colors.transparent,
                                                                            focusColor:
                                                                                Colors.transparent,
                                                                            hoverColor:
                                                                                Colors.transparent,
                                                                            highlightColor:
                                                                                Colors.transparent,
                                                                            onTap:
                                                                                () async {
                                                                              context.pushNamed(
                                                                                'StoryIntro',
                                                                                queryParameters: {
                                                                                  'passStoryInto1': serializeParam(
                                                                                    searchItem,
                                                                                    ParamType.Document,
                                                                                  ),
                                                                                }.withoutNulls,
                                                                                extra: <String, dynamic>{
                                                                                  'passStoryInto1': searchItem,
                                                                                },
                                                                              );
                                                                            },
                                                                            child:
                                                                                Container(
                                                                              width: double.infinity,
                                                                              height: 29.0,
                                                                              decoration: BoxDecoration(
                                                                                color: FlutterFlowTheme.of(context).primary,
                                                                              ),
                                                                              alignment: const AlignmentDirectional(0.0, 0.0),
                                                                              child: Text(
                                                                                'Read Along Story',
                                                                                style: FlutterFlowTheme.of(context).bodyMedium.override(
                                                                                      fontFamily: 'Poppins',
                                                                                      color: FlutterFlowTheme.of(context).primaryBackground,
                                                                                      letterSpacing: 0.0,
                                                                                    ),
                                                                              ),
                                                                            ),
                                                                          ),
                                                                        ),
                                                                      ],
                                                                    ),
                                                                  if (searchItem
                                                                      .isAdventure)
                                                                    Row(
                                                                      mainAxisSize:
                                                                          MainAxisSize
                                                                              .max,
                                                                      children: [
                                                                        Flexible(
                                                                          child:
                                                                              InkWell(
                                                                            splashColor:
                                                                                Colors.transparent,
                                                                            focusColor:
                                                                                Colors.transparent,
                                                                            hoverColor:
                                                                                Colors.transparent,
                                                                            highlightColor:
                                                                                Colors.transparent,
                                                                            onTap:
                                                                                () async {
                                                                              context.pushNamed(
                                                                                'StoryIntro',
                                                                                queryParameters: {
                                                                                  'passStoryInto1': serializeParam(
                                                                                    searchItem,
                                                                                    ParamType.Document,
                                                                                  ),
                                                                                }.withoutNulls,
                                                                                extra: <String, dynamic>{
                                                                                  'passStoryInto1': searchItem,
                                                                                },
                                                                              );
                                                                            },
                                                                            child:
                                                                                Container(
                                                                              width: double.infinity,
                                                                              height: 29.0,
                                                                              decoration: BoxDecoration(
                                                                                color: FlutterFlowTheme.of(context).primary,
                                                                              ),
                                                                              alignment: const AlignmentDirectional(0.0, 0.0),
                                                                              child: Text(
                                                                                'Choose Your Own Adventure Story',
                                                                                style: FlutterFlowTheme.of(context).bodyMedium.override(
                                                                                      fontFamily: 'Poppins',
                                                                                      color: FlutterFlowTheme.of(context).primaryBackground,
                                                                                      letterSpacing: 0.0,
                                                                                    ),
                                                                              ),
                                                                            ),
                                                                          ),
                                                                        ),
                                                                      ],
                                                                    ),
                                                                  Padding(
                                                                    padding: const EdgeInsetsDirectional
                                                                        .fromSTEB(
                                                                            0.0,
                                                                            5.0,
                                                                            0.0,
                                                                            5.0),
                                                                    child: Row(
                                                                      mainAxisSize:
                                                                          MainAxisSize
                                                                              .max,
                                                                      children: [
                                                                        Padding(
                                                                          padding: const EdgeInsetsDirectional.fromSTEB(
                                                                              5.0,
                                                                              0.0,
                                                                              0.0,
                                                                              0.0),
                                                                          child:
                                                                              Text(
                                                                            searchItem.storyName,
                                                                            style: FlutterFlowTheme.of(context).titleMedium.override(
                                                                                  fontFamily: 'Poppins',
                                                                                  color: FlutterFlowTheme.of(context).primary,
                                                                                  fontSize: 14.0,
                                                                                  letterSpacing: 0.0,
                                                                                ),
                                                                          ),
                                                                        ),
                                                                      ],
                                                                    ),
                                                                  ),
                                                                  Stack(
                                                                    children: [
                                                                      Align(
                                                                        alignment: const AlignmentDirectional(
                                                                            0.0,
                                                                            0.0),
                                                                        child:
                                                                            Padding(
                                                                          padding: const EdgeInsetsDirectional.fromSTEB(
                                                                              10.0,
                                                                              0.0,
                                                                              10.0,
                                                                              0.0),
                                                                          child:
                                                                              ClipRRect(
                                                                            borderRadius:
                                                                                BorderRadius.circular(8.0),
                                                                            child:
                                                                                Image.network(
                                                                              searchItem.cardImageSmall,
                                                                              width: double.infinity,
                                                                              height: 220.0,
                                                                              fit: BoxFit.cover,
                                                                            ),
                                                                          ),
                                                                        ),
                                                                      ),
                                                                      if (searchItem
                                                                              .isNew ==
                                                                          true)
                                                                        Padding(
                                                                          padding: const EdgeInsetsDirectional.fromSTEB(
                                                                              10.0,
                                                                              0.0,
                                                                              0.0,
                                                                              0.0),
                                                                          child:
                                                                              ClipRRect(
                                                                            borderRadius:
                                                                                BorderRadius.circular(8.0),
                                                                            child:
                                                                                Image.asset(
                                                                              'assets/images/NewPurple001.gif',
                                                                              width: 50.0,
                                                                              height: 50.0,
                                                                              fit: BoxFit.cover,
                                                                            ),
                                                                          ),
                                                                        ),
                                                                      Align(
                                                                        alignment: const AlignmentDirectional(
                                                                            0.0,
                                                                            0.95),
                                                                        child:
                                                                            Padding(
                                                                          padding: const EdgeInsetsDirectional.fromSTEB(
                                                                              0.0,
                                                                              175.0,
                                                                              20.0,
                                                                              0.0),
                                                                          child:
                                                                              Row(
                                                                            mainAxisSize:
                                                                                MainAxisSize.max,
                                                                            mainAxisAlignment:
                                                                                MainAxisAlignment.end,
                                                                            children: [
                                                                              if (searchItem.isFavoritedByUser.contains(currentUserReference) == false)
                                                                                Align(
                                                                                  alignment: const AlignmentDirectional(0.24, 0.2),
                                                                                  child: FlutterFlowIconButton(
                                                                                    borderColor: FlutterFlowTheme.of(context).primary,
                                                                                    borderRadius: 20.0,
                                                                                    borderWidth: 1.0,
                                                                                    buttonSize: 40.0,
                                                                                    fillColor: FlutterFlowTheme.of(context).accent1,
                                                                                    icon: FaIcon(
                                                                                      FontAwesomeIcons.heart,
                                                                                      color: FlutterFlowTheme.of(context).primary,
                                                                                      size: 24.0,
                                                                                    ),
                                                                                    onPressed: () async {
                                                                                      await currentUserReference!.update({
                                                                                        ...mapToFirestore(
                                                                                          {
                                                                                            'favorited': FieldValue.arrayUnion([
                                                                                              searchItem.reference
                                                                                            ]),
                                                                                          },
                                                                                        ),
                                                                                      });
                                                                                      // Add to Library

                                                                                      await searchItem.reference.update({
                                                                                        ...mapToFirestore(
                                                                                          {
                                                                                            'IsFavoritedByUser': FieldValue.arrayUnion([
                                                                                              currentUserReference
                                                                                            ]),
                                                                                          },
                                                                                        ),
                                                                                      });
                                                                                    },
                                                                                  ),
                                                                                ),
                                                                              if (searchItem.isFavoritedByUser.contains(currentUserReference) == true)
                                                                                Align(
                                                                                  alignment: const AlignmentDirectional(0.9, 0.2),
                                                                                  child: FlutterFlowIconButton(
                                                                                    borderColor: FlutterFlowTheme.of(context).primary,
                                                                                    borderRadius: 20.0,
                                                                                    borderWidth: 1.0,
                                                                                    buttonSize: 40.0,
                                                                                    fillColor: FlutterFlowTheme.of(context).accent1,
                                                                                    icon: FaIcon(
                                                                                      FontAwesomeIcons.solidHeart,
                                                                                      color: FlutterFlowTheme.of(context).primary,
                                                                                      size: 24.0,
                                                                                    ),
                                                                                    onPressed: () async {
                                                                                      await currentUserReference!.update({
                                                                                        ...mapToFirestore(
                                                                                          {
                                                                                            'favorited': FieldValue.arrayRemove([
                                                                                              searchItem.reference
                                                                                            ]),
                                                                                          },
                                                                                        ),
                                                                                      });
                                                                                      // RemoveFromLibrary

                                                                                      await searchItem.reference.update({
                                                                                        ...mapToFirestore(
                                                                                          {
                                                                                            'IsFavoritedByUser': FieldValue.arrayRemove([
                                                                                              currentUserReference
                                                                                            ]),
                                                                                          },
                                                                                        ),
                                                                                      });
                                                                                    },
                                                                                  ),
                                                                                ),
                                                                            ],
                                                                          ),
                                                                        ),
                                                                      ),
                                                                    ],
                                                                  ),
                                                                  Padding(
                                                                    padding:
                                                                        const EdgeInsets.all(
                                                                            12.0),
                                                                    child:
                                                                        Column(
                                                                      mainAxisSize:
                                                                          MainAxisSize
                                                                              .max,
                                                                      crossAxisAlignment:
                                                                          CrossAxisAlignment
                                                                              .start,
                                                                      children:
                                                                          [
                                                                        Text(
                                                                          searchItem
                                                                              .description,
                                                                          style: FlutterFlowTheme.of(context)
                                                                              .headlineMedium
                                                                              .override(
                                                                                fontFamily: 'Poppins',
                                                                                fontSize: 10.0,
                                                                                letterSpacing: 0.0,
                                                                              ),
                                                                        ),
                                                                      ].divide(const SizedBox(
                                                                              height: 4.0)),
                                                                    ),
                                                                  ),
                                                                ],
                                                              ),
                                                            ],
                                                          ),
                                                        ),
                                                      ),
                                                    );
                                                  },
                                                );
                                              },
                                            ),
                                          ),
                                        ),
                                      if ((_model.searchBarTextController
                                                      .text ==
                                                  '') &&
                                          responsiveVisibility(
                                            context: context,
                                            phone: false,
                                          ))
                                        Container(
                                          width: double.infinity,
                                          height: MediaQuery.sizeOf(context)
                                                  .height *
                                              1.0,
                                          decoration: const BoxDecoration(),
                                          child: Align(
                                            alignment:
                                                const AlignmentDirectional(0.0, -1.0),
                                            child: Padding(
                                              padding: const EdgeInsetsDirectional
                                                  .fromSTEB(
                                                      0.0, 0.0, 0.0, 550.0),
                                              child: Builder(
                                                builder: (context) {
                                                  final isReadAlong =
                                                      homeRevisedDbRecordList
                                                          .where((e) =>
                                                              e.isReadAlong)
                                                          .toList();

                                                  return GridView.builder(
                                                    padding:
                                                        const EdgeInsets.fromLTRB(
                                                      0,
                                                      0,
                                                      0,
                                                      10.0,
                                                    ),
                                                    gridDelegate:
                                                        const SliverGridDelegateWithFixedCrossAxisCount(
                                                      crossAxisCount: 3,
                                                      crossAxisSpacing: 10.0,
                                                      mainAxisSpacing: 10.0,
                                                      childAspectRatio: 0.9,
                                                    ),
                                                    shrinkWrap: true,
                                                    scrollDirection:
                                                        Axis.vertical,
                                                    itemCount:
                                                        isReadAlong.length,
                                                    itemBuilder: (context,
                                                        isReadAlongIndex) {
                                                      final isReadAlongItem =
                                                          isReadAlong[
                                                              isReadAlongIndex];
                                                      return Container(
                                                        width: double.infinity,
                                                        height: double.infinity,
                                                        decoration:
                                                            BoxDecoration(
                                                          borderRadius:
                                                              BorderRadius
                                                                  .circular(
                                                                      8.0),
                                                          border: Border.all(
                                                            color: FlutterFlowTheme
                                                                    .of(context)
                                                                .primary,
                                                          ),
                                                        ),
                                                        child: InkWell(
                                                          splashColor: Colors
                                                              .transparent,
                                                          focusColor: Colors
                                                              .transparent,
                                                          hoverColor: Colors
                                                              .transparent,
                                                          highlightColor: Colors
                                                              .transparent,
                                                          onTap: () async {
                                                            context.pushNamed(
                                                              'StoryChapter',
                                                              queryParameters: {
                                                                'chapter':
                                                                    serializeParam(
                                                                  isReadAlongItem
                                                                      .chapterRef,
                                                                  ParamType
                                                                      .DocumentReference,
                                                                ),
                                                                'pageNumber':
                                                                    serializeParam(
                                                                  0,
                                                                  ParamType.int,
                                                                ),
                                                              }.withoutNulls,
                                                            );
                                                          },
                                                          child: Card(
                                                            clipBehavior: Clip
                                                                .antiAliasWithSaveLayer,
                                                            color: FlutterFlowTheme
                                                                    .of(context)
                                                                .secondaryBackground,
                                                            elevation: 4.0,
                                                            shape:
                                                                RoundedRectangleBorder(
                                                              borderRadius:
                                                                  BorderRadius
                                                                      .circular(
                                                                          8.0),
                                                            ),
                                                            child: Stack(
                                                              children: [
                                                                Align(
                                                                  alignment:
                                                                      const AlignmentDirectional(
                                                                          0.0,
                                                                          0.0),
                                                                  child: Column(
                                                                    mainAxisSize:
                                                                        MainAxisSize
                                                                            .max,
                                                                    crossAxisAlignment:
                                                                        CrossAxisAlignment
                                                                            .start,
                                                                    children: [
                                                                      if (isReadAlongItem
                                                                          .isAdventure)
                                                                        Row(
                                                                          mainAxisSize:
                                                                              MainAxisSize.max,
                                                                          children: [
                                                                            Flexible(
                                                                              child: Container(
                                                                                width: 361.0,
                                                                                height: 29.0,
                                                                                decoration: BoxDecoration(
                                                                                  color: FlutterFlowTheme.of(context).primary,
                                                                                ),
                                                                                alignment: const AlignmentDirectional(0.0, 0.0),
                                                                                child: Text(
                                                                                  'Choose Your Own Adventure Story',
                                                                                  style: FlutterFlowTheme.of(context).bodyMedium.override(
                                                                                        fontFamily: 'Poppins',
                                                                                        color: FlutterFlowTheme.of(context).primaryBackground,
                                                                                        letterSpacing: 0.0,
                                                                                      ),
                                                                                ),
                                                                              ),
                                                                            ),
                                                                          ],
                                                                        ),
                                                                      if (!isReadAlongItem
                                                                          .isAdventure)
                                                                        Row(
                                                                          mainAxisSize:
                                                                              MainAxisSize.max,
                                                                          children: [
                                                                            Flexible(
                                                                              child: Container(
                                                                                width: 461.0,
                                                                                height: 29.0,
                                                                                decoration: BoxDecoration(
                                                                                  color: FlutterFlowTheme.of(context).primary,
                                                                                ),
                                                                                alignment: const AlignmentDirectional(0.0, 0.0),
                                                                                child: Text(
                                                                                  'Read Along Story',
                                                                                  style: FlutterFlowTheme.of(context).bodyMedium.override(
                                                                                        fontFamily: 'Poppins',
                                                                                        color: FlutterFlowTheme.of(context).primaryBackground,
                                                                                        letterSpacing: 0.0,
                                                                                      ),
                                                                                ),
                                                                              ),
                                                                            ),
                                                                          ],
                                                                        ),
                                                                      Padding(
                                                                        padding: const EdgeInsetsDirectional.fromSTEB(
                                                                            0.0,
                                                                            5.0,
                                                                            5.0,
                                                                            0.0),
                                                                        child:
                                                                            Row(
                                                                          mainAxisSize:
                                                                              MainAxisSize.max,
                                                                          mainAxisAlignment:
                                                                              MainAxisAlignment.spaceBetween,
                                                                          children: [
                                                                            Wrap(
                                                                              spacing: 0.0,
                                                                              runSpacing: 0.0,
                                                                              alignment: WrapAlignment.start,
                                                                              crossAxisAlignment: WrapCrossAlignment.start,
                                                                              direction: Axis.horizontal,
                                                                              runAlignment: WrapAlignment.start,
                                                                              verticalDirection: VerticalDirection.down,
                                                                              clipBehavior: Clip.none,
                                                                              children: [
                                                                                Padding(
                                                                                  padding: const EdgeInsetsDirectional.fromSTEB(10.0, 5.0, 0.0, 5.0),
                                                                                  child: Text(
                                                                                    isReadAlongItem.storyName,
                                                                                    style: FlutterFlowTheme.of(context).bodyMedium.override(
                                                                                          fontFamily: 'Poppins',
                                                                                          color: FlutterFlowTheme.of(context).primary,
                                                                                          fontSize: 14.0,
                                                                                          letterSpacing: 0.0,
                                                                                          fontWeight: FontWeight.w600,
                                                                                        ),
                                                                                  ),
                                                                                ),
                                                                              ],
                                                                            ),
                                                                          ],
                                                                        ),
                                                                      ),
                                                                      SizedBox(
                                                                        width:
                                                                            292.0,
                                                                        height:
                                                                            144.0,
                                                                        child:
                                                                            Stack(
                                                                          children: [
                                                                            Align(
                                                                              alignment: const AlignmentDirectional(0.0, 0.0),
                                                                              child: ClipRRect(
                                                                                borderRadius: BorderRadius.circular(8.0),
                                                                                child: Image.network(
                                                                                  isReadAlongItem.cardImageSmall,
                                                                                  width: double.infinity,
                                                                                  height: 140.0,
                                                                                  fit: BoxFit.cover,
                                                                                ),
                                                                              ),
                                                                            ),
                                                                            if (isReadAlongItem.isNew ==
                                                                                true)
                                                                              ClipRRect(
                                                                                borderRadius: BorderRadius.circular(8.0),
                                                                                child: Image.asset(
                                                                                  'assets/images/NewPurple001.gif',
                                                                                  width: 50.0,
                                                                                  height: 50.0,
                                                                                  fit: BoxFit.cover,
                                                                                ),
                                                                              ),
                                                                            if (isReadAlongItem.isFavoritedByUser.contains(currentUserReference) ==
                                                                                false)
                                                                              Align(
                                                                                alignment: const AlignmentDirectional(0.93, 0.91),
                                                                                child: FlutterFlowIconButton(
                                                                                  borderColor: FlutterFlowTheme.of(context).primary,
                                                                                  borderRadius: 20.0,
                                                                                  borderWidth: 1.0,
                                                                                  buttonSize: 40.0,
                                                                                  fillColor: FlutterFlowTheme.of(context).accent1,
                                                                                  icon: FaIcon(
                                                                                    FontAwesomeIcons.heart,
                                                                                    color: FlutterFlowTheme.of(context).primary,
                                                                                    size: 24.0,
                                                                                  ),
                                                                                  onPressed: () async {
                                                                                    await currentUserReference!.update({
                                                                                      ...mapToFirestore(
                                                                                        {
                                                                                          'favorited': FieldValue.arrayUnion([
                                                                                            isReadAlongItem.reference
                                                                                          ]),
                                                                                        },
                                                                                      ),
                                                                                    });
                                                                                    // Add to Library

                                                                                    await isReadAlongItem.reference.update({
                                                                                      ...mapToFirestore(
                                                                                        {
                                                                                          'IsFavoritedByUser': FieldValue.arrayUnion([
                                                                                            currentUserReference
                                                                                          ]),
                                                                                        },
                                                                                      ),
                                                                                    });
                                                                                  },
                                                                                ),
                                                                              ),
                                                                            if (isReadAlongItem.isFavoritedByUser.contains(currentUserReference) ==
                                                                                true)
                                                                              Align(
                                                                                alignment: const AlignmentDirectional(0.92, 0.9),
                                                                                child: FlutterFlowIconButton(
                                                                                  borderColor: FlutterFlowTheme.of(context).primary,
                                                                                  borderRadius: 20.0,
                                                                                  borderWidth: 1.0,
                                                                                  buttonSize: 40.0,
                                                                                  fillColor: FlutterFlowTheme.of(context).accent1,
                                                                                  icon: FaIcon(
                                                                                    FontAwesomeIcons.solidHeart,
                                                                                    color: FlutterFlowTheme.of(context).primary,
                                                                                    size: 24.0,
                                                                                  ),
                                                                                  onPressed: () async {
                                                                                    await currentUserReference!.update({
                                                                                      ...mapToFirestore(
                                                                                        {
                                                                                          'favorited': FieldValue.arrayRemove([
                                                                                            isReadAlongItem.reference
                                                                                          ]),
                                                                                        },
                                                                                      ),
                                                                                    });
                                                                                    // RemoveFromLibrary

                                                                                    await isReadAlongItem.reference.update({
                                                                                      ...mapToFirestore(
                                                                                        {
                                                                                          'IsFavoritedByUser': FieldValue.arrayRemove([
                                                                                            currentUserReference
                                                                                          ]),
                                                                                        },
                                                                                      ),
                                                                                    });
                                                                                  },
                                                                                ),
                                                                              ),
                                                                          ],
                                                                        ),
                                                                      ),
                                                                      Padding(
                                                                        padding:
                                                                            const EdgeInsets.all(12.0),
                                                                        child:
                                                                            Row(
                                                                          mainAxisSize:
                                                                              MainAxisSize.max,
                                                                          children: [
                                                                            Flexible(
                                                                              child: Wrap(
                                                                                spacing: 0.0,
                                                                                runSpacing: 0.0,
                                                                                alignment: WrapAlignment.start,
                                                                                crossAxisAlignment: WrapCrossAlignment.start,
                                                                                direction: Axis.horizontal,
                                                                                runAlignment: WrapAlignment.start,
                                                                                verticalDirection: VerticalDirection.down,
                                                                                clipBehavior: Clip.none,
                                                                                children: [
                                                                                  Padding(
                                                                                    padding: const EdgeInsetsDirectional.fromSTEB(0.0, 5.0, 0.0, 10.0),
                                                                                    child: Text(
                                                                                      isReadAlongItem.description.maybeHandleOverflow(maxChars: 60),
                                                                                      style: FlutterFlowTheme.of(context).bodyMedium.override(
                                                                                            fontFamily: 'Poppins',
                                                                                            letterSpacing: 0.0,
                                                                                          ),
                                                                                    ),
                                                                                  ),
                                                                                ],
                                                                              ),
                                                                            ),
                                                                          ],
                                                                        ),
                                                                      ),
                                                                    ],
                                                                  ),
                                                                ),
                                                              ],
                                                            ),
                                                          ),
                                                        ),
                                                      );
                                                    },
                                                  );
                                                },
                                              ),
                                            ),
                                          ),
                                        ),
                                      if ((_model.searchBarTextController
                                                      .text !=
                                                  '') &&
                                          responsiveVisibility(
                                            context: context,
                                            phone: false,
                                          ))
                                        Container(
                                          width: double.infinity,
                                          height: MediaQuery.sizeOf(context)
                                                  .height *
                                              1.0,
                                          decoration: const BoxDecoration(),
                                          child: Align(
                                            alignment:
                                                const AlignmentDirectional(0.0, -1.0),
                                            child: Padding(
                                              padding: const EdgeInsetsDirectional
                                                  .fromSTEB(
                                                      0.0, 0.0, 0.0, 550.0),
                                              child: Builder(
                                                builder: (context) {
                                                  final search = functions
                                                      .simpleSearchV2(
                                                          _model
                                                              .searchBarTextController
                                                              .text,
                                                          homeRevisedDbRecordList
                                                              .toList())
                                                      .where(
                                                          (e) => e.isReadAlong)
                                                      .toList();

                                                  return GridView.builder(
                                                    padding:
                                                        const EdgeInsets.fromLTRB(
                                                      0,
                                                      0,
                                                      0,
                                                      10.0,
                                                    ),
                                                    gridDelegate:
                                                        const SliverGridDelegateWithFixedCrossAxisCount(
                                                      crossAxisCount: 3,
                                                      crossAxisSpacing: 10.0,
                                                      mainAxisSpacing: 10.0,
                                                      childAspectRatio: 0.8,
                                                    ),
                                                    shrinkWrap: true,
                                                    scrollDirection:
                                                        Axis.vertical,
                                                    itemCount: search.length,
                                                    itemBuilder:
                                                        (context, searchIndex) {
                                                      final searchItem =
                                                          search[searchIndex];
                                                      return Container(
                                                        decoration:
                                                            BoxDecoration(
                                                          borderRadius:
                                                              BorderRadius
                                                                  .circular(
                                                                      8.0),
                                                          border: Border.all(
                                                            color: FlutterFlowTheme
                                                                    .of(context)
                                                                .primary,
                                                          ),
                                                        ),
                                                        child: InkWell(
                                                          splashColor: Colors
                                                              .transparent,
                                                          focusColor: Colors
                                                              .transparent,
                                                          hoverColor: Colors
                                                              .transparent,
                                                          highlightColor: Colors
                                                              .transparent,
                                                          onTap: () async {
                                                            context.pushNamed(
                                                              'StoryChapter',
                                                              queryParameters: {
                                                                'chapter':
                                                                    serializeParam(
                                                                  searchItem
                                                                      .chapterRef,
                                                                  ParamType
                                                                      .DocumentReference,
                                                                ),
                                                                'pageNumber':
                                                                    serializeParam(
                                                                  0,
                                                                  ParamType.int,
                                                                ),
                                                              }.withoutNulls,
                                                            );
                                                          },
                                                          child: Card(
                                                            clipBehavior: Clip
                                                                .antiAliasWithSaveLayer,
                                                            color: FlutterFlowTheme
                                                                    .of(context)
                                                                .secondaryBackground,
                                                            elevation: 4.0,
                                                            shape:
                                                                RoundedRectangleBorder(
                                                              borderRadius:
                                                                  BorderRadius
                                                                      .circular(
                                                                          8.0),
                                                            ),
                                                            child: Align(
                                                              alignment:
                                                                  const AlignmentDirectional(
                                                                      0.0, 0.0),
                                                              child: Stack(
                                                                children: [
                                                                  Align(
                                                                    alignment:
                                                                        const AlignmentDirectional(
                                                                            0.0,
                                                                            0.0),
                                                                    child:
                                                                        Column(
                                                                      mainAxisSize:
                                                                          MainAxisSize
                                                                              .max,
                                                                      crossAxisAlignment:
                                                                          CrossAxisAlignment
                                                                              .center,
                                                                      children: [
                                                                        if (!searchItem
                                                                            .isAdventure)
                                                                          Row(
                                                                            mainAxisSize:
                                                                                MainAxisSize.max,
                                                                            children: [
                                                                              Flexible(
                                                                                child: Container(
                                                                                  width: 461.0,
                                                                                  height: 29.0,
                                                                                  decoration: BoxDecoration(
                                                                                    color: FlutterFlowTheme.of(context).primary,
                                                                                  ),
                                                                                  alignment: const AlignmentDirectional(0.0, 0.0),
                                                                                  child: Text(
                                                                                    'Read Along Story',
                                                                                    style: FlutterFlowTheme.of(context).bodyMedium.override(
                                                                                          fontFamily: 'Poppins',
                                                                                          color: FlutterFlowTheme.of(context).primaryBackground,
                                                                                          letterSpacing: 0.0,
                                                                                        ),
                                                                                  ),
                                                                                ),
                                                                              ),
                                                                            ],
                                                                          ),
                                                                        if (searchItem
                                                                            .isAdventure)
                                                                          Row(
                                                                            mainAxisSize:
                                                                                MainAxisSize.max,
                                                                            children: [
                                                                              Flexible(
                                                                                child: Container(
                                                                                  width: 361.0,
                                                                                  height: 29.0,
                                                                                  decoration: BoxDecoration(
                                                                                    color: FlutterFlowTheme.of(context).primary,
                                                                                  ),
                                                                                  alignment: const AlignmentDirectional(0.0, 0.0),
                                                                                  child: Text(
                                                                                    'Choose Your Own Adventure Story',
                                                                                    style: FlutterFlowTheme.of(context).bodyMedium.override(
                                                                                          fontFamily: 'Poppins',
                                                                                          color: FlutterFlowTheme.of(context).primaryBackground,
                                                                                          letterSpacing: 0.0,
                                                                                        ),
                                                                                  ),
                                                                                ),
                                                                              ),
                                                                            ],
                                                                          ),
                                                                        Padding(
                                                                          padding: const EdgeInsetsDirectional.fromSTEB(
                                                                              0.0,
                                                                              5.0,
                                                                              5.0,
                                                                              0.0),
                                                                          child:
                                                                              Row(
                                                                            mainAxisSize:
                                                                                MainAxisSize.max,
                                                                            mainAxisAlignment:
                                                                                MainAxisAlignment.spaceBetween,
                                                                            children: [
                                                                              Wrap(
                                                                                spacing: 0.0,
                                                                                runSpacing: 0.0,
                                                                                alignment: WrapAlignment.start,
                                                                                crossAxisAlignment: WrapCrossAlignment.start,
                                                                                direction: Axis.horizontal,
                                                                                runAlignment: WrapAlignment.start,
                                                                                verticalDirection: VerticalDirection.down,
                                                                                clipBehavior: Clip.none,
                                                                                children: [
                                                                                  Padding(
                                                                                    padding: const EdgeInsetsDirectional.fromSTEB(10.0, 5.0, 0.0, 5.0),
                                                                                    child: Text(
                                                                                      searchItem.storyName,
                                                                                      style: FlutterFlowTheme.of(context).bodyMedium.override(
                                                                                            fontFamily: 'Poppins',
                                                                                            color: FlutterFlowTheme.of(context).primary,
                                                                                            fontSize: 14.0,
                                                                                            letterSpacing: 0.0,
                                                                                            fontWeight: FontWeight.w600,
                                                                                          ),
                                                                                    ),
                                                                                  ),
                                                                                ],
                                                                              ),
                                                                            ],
                                                                          ),
                                                                        ),
                                                                        SizedBox(
                                                                          width:
                                                                              292.0,
                                                                          height:
                                                                              144.0,
                                                                          child:
                                                                              Stack(
                                                                            children: [
                                                                              Align(
                                                                                alignment: const AlignmentDirectional(0.0, -1.0),
                                                                                child: ClipRRect(
                                                                                  borderRadius: BorderRadius.circular(8.0),
                                                                                  child: Image.network(
                                                                                    searchItem.cardImageSmall,
                                                                                    width: double.infinity,
                                                                                    height: 140.0,
                                                                                    fit: BoxFit.cover,
                                                                                  ),
                                                                                ),
                                                                              ),
                                                                              if (searchItem.isNew == true)
                                                                                ClipRRect(
                                                                                  borderRadius: BorderRadius.circular(8.0),
                                                                                  child: Image.asset(
                                                                                    'assets/images/NewPurple001.gif',
                                                                                    width: 50.0,
                                                                                    height: 50.0,
                                                                                    fit: BoxFit.cover,
                                                                                  ),
                                                                                ),
                                                                              if (searchItem.isFavoritedByUser.contains(currentUserReference) == false)
                                                                                Align(
                                                                                  alignment: const AlignmentDirectional(0.91, 0.72),
                                                                                  child: FlutterFlowIconButton(
                                                                                    borderColor: FlutterFlowTheme.of(context).primary,
                                                                                    borderRadius: 20.0,
                                                                                    borderWidth: 1.0,
                                                                                    buttonSize: 40.0,
                                                                                    fillColor: FlutterFlowTheme.of(context).accent1,
                                                                                    icon: FaIcon(
                                                                                      FontAwesomeIcons.heart,
                                                                                      color: FlutterFlowTheme.of(context).primary,
                                                                                      size: 24.0,
                                                                                    ),
                                                                                    onPressed: () async {
                                                                                      await currentUserReference!.update({
                                                                                        ...mapToFirestore(
                                                                                          {
                                                                                            'favorited': FieldValue.arrayUnion([
                                                                                              searchItem.reference
                                                                                            ]),
                                                                                          },
                                                                                        ),
                                                                                      });
                                                                                      // Add to Library

                                                                                      await searchItem.reference.update({
                                                                                        ...mapToFirestore(
                                                                                          {
                                                                                            'IsFavoritedByUser': FieldValue.arrayUnion([
                                                                                              currentUserReference
                                                                                            ]),
                                                                                          },
                                                                                        ),
                                                                                      });
                                                                                    },
                                                                                  ),
                                                                                ),
                                                                              if (searchItem.isFavoritedByUser.contains(currentUserReference) == true)
                                                                                Align(
                                                                                  alignment: const AlignmentDirectional(0.91, 0.72),
                                                                                  child: FlutterFlowIconButton(
                                                                                    borderColor: FlutterFlowTheme.of(context).primary,
                                                                                    borderRadius: 20.0,
                                                                                    borderWidth: 1.0,
                                                                                    buttonSize: 40.0,
                                                                                    fillColor: FlutterFlowTheme.of(context).accent1,
                                                                                    icon: FaIcon(
                                                                                      FontAwesomeIcons.solidHeart,
                                                                                      color: FlutterFlowTheme.of(context).primary,
                                                                                      size: 24.0,
                                                                                    ),
                                                                                    onPressed: () async {
                                                                                      await currentUserReference!.update({
                                                                                        ...mapToFirestore(
                                                                                          {
                                                                                            'favorited': FieldValue.arrayRemove([
                                                                                              searchItem.reference
                                                                                            ]),
                                                                                          },
                                                                                        ),
                                                                                      });
                                                                                      // RemoveFromLibrary

                                                                                      await searchItem.reference.update({
                                                                                        ...mapToFirestore(
                                                                                          {
                                                                                            'IsFavoritedByUser': FieldValue.arrayRemove([
                                                                                              currentUserReference
                                                                                            ]),
                                                                                          },
                                                                                        ),
                                                                                      });
                                                                                    },
                                                                                  ),
                                                                                ),
                                                                            ],
                                                                          ),
                                                                        ),
                                                                        Padding(
                                                                          padding:
                                                                              const EdgeInsets.all(12.0),
                                                                          child:
                                                                              Row(
                                                                            mainAxisSize:
                                                                                MainAxisSize.max,
                                                                            children: [
                                                                              Flexible(
                                                                                child: Wrap(
                                                                                  spacing: 0.0,
                                                                                  runSpacing: 0.0,
                                                                                  alignment: WrapAlignment.start,
                                                                                  crossAxisAlignment: WrapCrossAlignment.start,
                                                                                  direction: Axis.horizontal,
                                                                                  runAlignment: WrapAlignment.start,
                                                                                  verticalDirection: VerticalDirection.down,
                                                                                  clipBehavior: Clip.none,
                                                                                  children: [
                                                                                    Padding(
                                                                                      padding: const EdgeInsetsDirectional.fromSTEB(0.0, 5.0, 0.0, 10.0),
                                                                                      child: Text(
                                                                                        searchItem.description.maybeHandleOverflow(maxChars: 60),
                                                                                        style: FlutterFlowTheme.of(context).bodyMedium.override(
                                                                                              fontFamily: 'Poppins',
                                                                                              letterSpacing: 0.0,
                                                                                            ),
                                                                                      ),
                                                                                    ),
                                                                                  ],
                                                                                ),
                                                                              ),
                                                                            ],
                                                                          ),
                                                                        ),
                                                                      ],
                                                                    ),
                                                                  ),
                                                                ],
                                                              ),
                                                            ),
                                                          ),
                                                        ),
                                                      );
                                                    },
                                                  );
                                                },
                                              ),
                                            ),
                                          ),
                                        ),
                                    ],
                                  ),
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsetsDirectional.fromSTEB(
                                    15.0, 15.0, 15.0, 10.0),
                                child: SingleChildScrollView(
                                  child: Column(
                                    mainAxisSize: MainAxisSize.max,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      if ((_model.searchBarTextController
                                                      .text ==
                                                  '') &&
                                          responsiveVisibility(
                                            context: context,
                                            tablet: false,
                                            tabletLandscape: false,
                                            desktop: false,
                                          ))
                                        Container(
                                          width: double.infinity,
                                          height: MediaQuery.sizeOf(context)
                                                  .height *
                                              1.0,
                                          decoration: const BoxDecoration(),
                                          child: Align(
                                            alignment:
                                                const AlignmentDirectional(0.0, -1.0),
                                            child: Padding(
                                              padding: const EdgeInsetsDirectional
                                                  .fromSTEB(
                                                      0.0, 0.0, 0.0, 350.0),
                                              child: Builder(
                                                builder: (context) {
                                                  final isAdventure =
                                                      homeRevisedDbRecordList
                                                          .where((e) =>
                                                              e.isAdventure)
                                                          .toList();

                                                  return GridView.builder(
                                                    padding:
                                                        const EdgeInsets.fromLTRB(
                                                      0,
                                                      0,
                                                      0,
                                                      20.0,
                                                    ),
                                                    gridDelegate:
                                                        const SliverGridDelegateWithFixedCrossAxisCount(
                                                      crossAxisCount: 1,
                                                      crossAxisSpacing: 10.0,
                                                      mainAxisSpacing: 15.0,
                                                      childAspectRatio: 1.0,
                                                    ),
                                                    shrinkWrap: true,
                                                    scrollDirection:
                                                        Axis.vertical,
                                                    itemCount:
                                                        isAdventure.length,
                                                    itemBuilder: (context,
                                                        isAdventureIndex) {
                                                      final isAdventureItem =
                                                          isAdventure[
                                                              isAdventureIndex];
                                                      return Container(
                                                        width: double.infinity,
                                                        height: double.infinity,
                                                        decoration:
                                                            BoxDecoration(
                                                          borderRadius:
                                                              BorderRadius
                                                                  .circular(
                                                                      8.0),
                                                          border: Border.all(
                                                            color: FlutterFlowTheme
                                                                    .of(context)
                                                                .primary,
                                                          ),
                                                        ),
                                                        child: InkWell(
                                                          splashColor: Colors
                                                              .transparent,
                                                          focusColor: Colors
                                                              .transparent,
                                                          hoverColor: Colors
                                                              .transparent,
                                                          highlightColor: Colors
                                                              .transparent,
                                                          onTap: () async {
                                                            context.pushNamed(
                                                              'StoryChapter',
                                                              queryParameters: {
                                                                'chapter':
                                                                    serializeParam(
                                                                  isAdventureItem
                                                                      .chapterRef,
                                                                  ParamType
                                                                      .DocumentReference,
                                                                ),
                                                                'pageNumber':
                                                                    serializeParam(
                                                                  0,
                                                                  ParamType.int,
                                                                ),
                                                              }.withoutNulls,
                                                            );
                                                          },
                                                          child: Card(
                                                            clipBehavior: Clip
                                                                .antiAliasWithSaveLayer,
                                                            color: FlutterFlowTheme
                                                                    .of(context)
                                                                .secondaryBackground,
                                                            elevation: 4.0,
                                                            shape:
                                                                RoundedRectangleBorder(
                                                              borderRadius:
                                                                  BorderRadius
                                                                      .circular(
                                                                          8.0),
                                                            ),
                                                            child: Stack(
                                                              children: [
                                                                Column(
                                                                  mainAxisSize:
                                                                      MainAxisSize
                                                                          .max,
                                                                  crossAxisAlignment:
                                                                      CrossAxisAlignment
                                                                          .start,
                                                                  children: [
                                                                    if (!isAdventureItem
                                                                        .isAdventure)
                                                                      Row(
                                                                        mainAxisSize:
                                                                            MainAxisSize.max,
                                                                        children: [
                                                                          Flexible(
                                                                            child:
                                                                                InkWell(
                                                                              splashColor: Colors.transparent,
                                                                              focusColor: Colors.transparent,
                                                                              hoverColor: Colors.transparent,
                                                                              highlightColor: Colors.transparent,
                                                                              onTap: () async {
                                                                                context.pushNamed(
                                                                                  'StoryChapter',
                                                                                  queryParameters: {
                                                                                    'chapter': serializeParam(
                                                                                      isAdventureItem.chapterRef,
                                                                                      ParamType.DocumentReference,
                                                                                    ),
                                                                                    'pageNumber': serializeParam(
                                                                                      0,
                                                                                      ParamType.int,
                                                                                    ),
                                                                                  }.withoutNulls,
                                                                                );
                                                                              },
                                                                              child: Container(
                                                                                width: double.infinity,
                                                                                height: 29.0,
                                                                                decoration: BoxDecoration(
                                                                                  color: FlutterFlowTheme.of(context).primary,
                                                                                ),
                                                                                alignment: const AlignmentDirectional(0.0, 0.0),
                                                                                child: Text(
                                                                                  'Choose Your Own Adventure Story',
                                                                                  style: FlutterFlowTheme.of(context).bodyMedium.override(
                                                                                        fontFamily: 'Poppins',
                                                                                        color: FlutterFlowTheme.of(context).primaryBackground,
                                                                                        letterSpacing: 0.0,
                                                                                      ),
                                                                                ),
                                                                              ),
                                                                            ),
                                                                          ),
                                                                        ],
                                                                      ),
                                                                    if (isAdventureItem
                                                                        .isAdventure)
                                                                      Row(
                                                                        mainAxisSize:
                                                                            MainAxisSize.max,
                                                                        children: [
                                                                          Flexible(
                                                                            child:
                                                                                InkWell(
                                                                              splashColor: Colors.transparent,
                                                                              focusColor: Colors.transparent,
                                                                              hoverColor: Colors.transparent,
                                                                              highlightColor: Colors.transparent,
                                                                              onTap: () async {
                                                                                context.pushNamed(
                                                                                  'StoryReadAlongNew',
                                                                                  queryParameters: {
                                                                                    'readAlongDocRef': serializeParam(
                                                                                      isAdventureItem.readalongwhatever,
                                                                                      ParamType.DocumentReference,
                                                                                    ),
                                                                                  }.withoutNulls,
                                                                                );
                                                                              },
                                                                              child: Container(
                                                                                width: double.infinity,
                                                                                height: 29.0,
                                                                                decoration: BoxDecoration(
                                                                                  color: FlutterFlowTheme.of(context).primary,
                                                                                ),
                                                                                alignment: const AlignmentDirectional(0.0, 0.0),
                                                                                child: Text(
                                                                                  'Read Along Story',
                                                                                  style: FlutterFlowTheme.of(context).bodyMedium.override(
                                                                                        fontFamily: 'Poppins',
                                                                                        color: FlutterFlowTheme.of(context).primaryBackground,
                                                                                        letterSpacing: 0.0,
                                                                                      ),
                                                                                ),
                                                                              ),
                                                                            ),
                                                                          ),
                                                                        ],
                                                                      ),
                                                                    Padding(
                                                                      padding: const EdgeInsetsDirectional.fromSTEB(
                                                                          0.0,
                                                                          5.0,
                                                                          0.0,
                                                                          5.0),
                                                                      child:
                                                                          Row(
                                                                        mainAxisSize:
                                                                            MainAxisSize.max,
                                                                        children: [
                                                                          Padding(
                                                                            padding: const EdgeInsetsDirectional.fromSTEB(
                                                                                5.0,
                                                                                0.0,
                                                                                0.0,
                                                                                0.0),
                                                                            child:
                                                                                Text(
                                                                              isAdventureItem.storyName,
                                                                              style: FlutterFlowTheme.of(context).titleMedium.override(
                                                                                    fontFamily: 'Poppins',
                                                                                    color: FlutterFlowTheme.of(context).primary,
                                                                                    fontSize: 14.0,
                                                                                    letterSpacing: 0.0,
                                                                                  ),
                                                                            ),
                                                                          ),
                                                                        ],
                                                                      ),
                                                                    ),
                                                                    Stack(
                                                                      children: [
                                                                        Align(
                                                                          alignment: const AlignmentDirectional(
                                                                              0.0,
                                                                              0.0),
                                                                          child:
                                                                              Padding(
                                                                            padding: const EdgeInsetsDirectional.fromSTEB(
                                                                                10.0,
                                                                                0.0,
                                                                                10.0,
                                                                                0.0),
                                                                            child:
                                                                                ClipRRect(
                                                                              borderRadius: BorderRadius.circular(8.0),
                                                                              child: Image.network(
                                                                                isAdventureItem.cardImageSmall,
                                                                                width: double.infinity,
                                                                                height: 220.0,
                                                                                fit: BoxFit.cover,
                                                                              ),
                                                                            ),
                                                                          ),
                                                                        ),
                                                                        if (isAdventureItem.isNew ==
                                                                            true)
                                                                          Padding(
                                                                            padding: const EdgeInsetsDirectional.fromSTEB(
                                                                                10.0,
                                                                                0.0,
                                                                                0.0,
                                                                                0.0),
                                                                            child:
                                                                                ClipRRect(
                                                                              borderRadius: BorderRadius.circular(8.0),
                                                                              child: Image.asset(
                                                                                'assets/images/NewPurple001.gif',
                                                                                width: 50.0,
                                                                                height: 50.0,
                                                                                fit: BoxFit.cover,
                                                                              ),
                                                                            ),
                                                                          ),
                                                                        Align(
                                                                          alignment: const AlignmentDirectional(
                                                                              0.0,
                                                                              0.95),
                                                                          child:
                                                                              Padding(
                                                                            padding: const EdgeInsetsDirectional.fromSTEB(
                                                                                0.0,
                                                                                175.0,
                                                                                20.0,
                                                                                0.0),
                                                                            child:
                                                                                Row(
                                                                              mainAxisSize: MainAxisSize.max,
                                                                              mainAxisAlignment: MainAxisAlignment.end,
                                                                              children: [
                                                                                if (isAdventureItem.isFavoritedByUser.contains(currentUserReference) == false)
                                                                                  Align(
                                                                                    alignment: const AlignmentDirectional(0.24, 0.2),
                                                                                    child: FlutterFlowIconButton(
                                                                                      borderColor: FlutterFlowTheme.of(context).primary,
                                                                                      borderRadius: 20.0,
                                                                                      borderWidth: 1.0,
                                                                                      buttonSize: 40.0,
                                                                                      fillColor: FlutterFlowTheme.of(context).accent1,
                                                                                      icon: FaIcon(
                                                                                        FontAwesomeIcons.heart,
                                                                                        color: FlutterFlowTheme.of(context).primary,
                                                                                        size: 24.0,
                                                                                      ),
                                                                                      onPressed: () async {
                                                                                        await currentUserReference!.update({
                                                                                          ...mapToFirestore(
                                                                                            {
                                                                                              'favorited': FieldValue.arrayUnion([
                                                                                                isAdventureItem.reference
                                                                                              ]),
                                                                                            },
                                                                                          ),
                                                                                        });
                                                                                        // Add to Library

                                                                                        await isAdventureItem.reference.update({
                                                                                          ...mapToFirestore(
                                                                                            {
                                                                                              'IsFavoritedByUser': FieldValue.arrayUnion([
                                                                                                currentUserReference
                                                                                              ]),
                                                                                            },
                                                                                          ),
                                                                                        });
                                                                                      },
                                                                                    ),
                                                                                  ),
                                                                                if (isAdventureItem.isFavoritedByUser.contains(currentUserReference) == true)
                                                                                  Align(
                                                                                    alignment: const AlignmentDirectional(0.9, 0.2),
                                                                                    child: FlutterFlowIconButton(
                                                                                      borderColor: FlutterFlowTheme.of(context).primary,
                                                                                      borderRadius: 20.0,
                                                                                      borderWidth: 1.0,
                                                                                      buttonSize: 40.0,
                                                                                      fillColor: FlutterFlowTheme.of(context).accent1,
                                                                                      icon: FaIcon(
                                                                                        FontAwesomeIcons.solidHeart,
                                                                                        color: FlutterFlowTheme.of(context).primary,
                                                                                        size: 24.0,
                                                                                      ),
                                                                                      onPressed: () async {
                                                                                        await currentUserReference!.update({
                                                                                          ...mapToFirestore(
                                                                                            {
                                                                                              'favorited': FieldValue.arrayRemove([
                                                                                                isAdventureItem.reference
                                                                                              ]),
                                                                                            },
                                                                                          ),
                                                                                        });
                                                                                        // RemoveFromLibrary

                                                                                        await isAdventureItem.reference.update({
                                                                                          ...mapToFirestore(
                                                                                            {
                                                                                              'IsFavoritedByUser': FieldValue.arrayRemove([
                                                                                                currentUserReference
                                                                                              ]),
                                                                                            },
                                                                                          ),
                                                                                        });
                                                                                      },
                                                                                    ),
                                                                                  ),
                                                                              ],
                                                                            ),
                                                                          ),
                                                                        ),
                                                                      ],
                                                                    ),
                                                                    Padding(
                                                                      padding:
                                                                          const EdgeInsets.all(
                                                                              12.0),
                                                                      child:
                                                                          Column(
                                                                        mainAxisSize:
                                                                            MainAxisSize.max,
                                                                        crossAxisAlignment:
                                                                            CrossAxisAlignment.start,
                                                                        children:
                                                                            [
                                                                          Text(
                                                                            isAdventureItem.description,
                                                                            style: FlutterFlowTheme.of(context).headlineMedium.override(
                                                                                  fontFamily: 'Poppins',
                                                                                  fontSize: 10.0,
                                                                                  letterSpacing: 0.0,
                                                                                ),
                                                                          ),
                                                                        ].divide(const SizedBox(height: 4.0)),
                                                                      ),
                                                                    ),
                                                                  ],
                                                                ),
                                                              ],
                                                            ),
                                                          ),
                                                        ),
                                                      );
                                                    },
                                                  );
                                                },
                                              ),
                                            ),
                                          ),
                                        ),
                                      if ((_model.searchBarTextController
                                                      .text !=
                                                  '') &&
                                          responsiveVisibility(
                                            context: context,
                                            tablet: false,
                                            tabletLandscape: false,
                                            desktop: false,
                                          ))
                                        Container(
                                          width: double.infinity,
                                          height: MediaQuery.sizeOf(context)
                                                  .height *
                                              1.0,
                                          decoration: const BoxDecoration(),
                                          child: Visibility(
                                            visible: _model.searchBarTextController
                                                        .text !=
                                                    '',
                                            child: Padding(
                                              padding: const EdgeInsetsDirectional
                                                  .fromSTEB(
                                                      0.0, 0.0, 0.0, 350.0),
                                              child: Builder(
                                                builder: (context) {
                                                  final searchAdventure = _model
                                                      .simpleSearchResults
                                                      .where(
                                                          (e) => e.isAdventure)
                                                      .toList();

                                                  return GridView.builder(
                                                    padding:
                                                        const EdgeInsets.fromLTRB(
                                                      0,
                                                      0,
                                                      0,
                                                      20.0,
                                                    ),
                                                    gridDelegate:
                                                        const SliverGridDelegateWithFixedCrossAxisCount(
                                                      crossAxisCount: 1,
                                                      crossAxisSpacing: 10.0,
                                                      mainAxisSpacing: 15.0,
                                                      childAspectRatio: 1.0,
                                                    ),
                                                    shrinkWrap: true,
                                                    scrollDirection:
                                                        Axis.vertical,
                                                    itemCount:
                                                        searchAdventure.length,
                                                    itemBuilder: (context,
                                                        searchAdventureIndex) {
                                                      final searchAdventureItem =
                                                          searchAdventure[
                                                              searchAdventureIndex];
                                                      return Container(
                                                        width: double.infinity,
                                                        height: double.infinity,
                                                        decoration:
                                                            BoxDecoration(
                                                          borderRadius:
                                                              BorderRadius
                                                                  .circular(
                                                                      8.0),
                                                          border: Border.all(
                                                            color: FlutterFlowTheme
                                                                    .of(context)
                                                                .primary,
                                                          ),
                                                        ),
                                                        child: InkWell(
                                                          splashColor: Colors
                                                              .transparent,
                                                          focusColor: Colors
                                                              .transparent,
                                                          hoverColor: Colors
                                                              .transparent,
                                                          highlightColor: Colors
                                                              .transparent,
                                                          onTap: () async {
                                                            context.pushNamed(
                                                              'StoryChapter',
                                                              queryParameters: {
                                                                'chapter':
                                                                    serializeParam(
                                                                  searchAdventureItem
                                                                      .chapterRef,
                                                                  ParamType
                                                                      .DocumentReference,
                                                                ),
                                                                'pageNumber':
                                                                    serializeParam(
                                                                  0,
                                                                  ParamType.int,
                                                                ),
                                                              }.withoutNulls,
                                                            );
                                                          },
                                                          child: Card(
                                                            clipBehavior: Clip
                                                                .antiAliasWithSaveLayer,
                                                            color: FlutterFlowTheme
                                                                    .of(context)
                                                                .secondaryBackground,
                                                            elevation: 4.0,
                                                            shape:
                                                                RoundedRectangleBorder(
                                                              borderRadius:
                                                                  BorderRadius
                                                                      .circular(
                                                                          8.0),
                                                            ),
                                                            child: Column(
                                                              mainAxisSize:
                                                                  MainAxisSize
                                                                      .max,
                                                              crossAxisAlignment:
                                                                  CrossAxisAlignment
                                                                      .start,
                                                              children: [
                                                                if (!searchAdventureItem
                                                                    .isAdventure)
                                                                  Row(
                                                                    mainAxisSize:
                                                                        MainAxisSize
                                                                            .max,
                                                                    children: [
                                                                      Flexible(
                                                                        child:
                                                                            InkWell(
                                                                          splashColor:
                                                                              Colors.transparent,
                                                                          focusColor:
                                                                              Colors.transparent,
                                                                          hoverColor:
                                                                              Colors.transparent,
                                                                          highlightColor:
                                                                              Colors.transparent,
                                                                          onTap:
                                                                              () async {
                                                                            context.pushNamed(
                                                                              'StoryReadAlongNew',
                                                                              queryParameters: {
                                                                                'readAlongDocRef': serializeParam(
                                                                                  searchAdventureItem.readalongwhatever,
                                                                                  ParamType.DocumentReference,
                                                                                ),
                                                                              }.withoutNulls,
                                                                            );
                                                                          },
                                                                          child:
                                                                              Container(
                                                                            width:
                                                                                double.infinity,
                                                                            height:
                                                                                29.0,
                                                                            decoration:
                                                                                BoxDecoration(
                                                                              color: FlutterFlowTheme.of(context).primary,
                                                                            ),
                                                                            alignment:
                                                                                const AlignmentDirectional(0.0, 0.0),
                                                                            child:
                                                                                Text(
                                                                              'Read Along Story',
                                                                              style: FlutterFlowTheme.of(context).bodyMedium.override(
                                                                                    fontFamily: 'Poppins',
                                                                                    color: FlutterFlowTheme.of(context).primaryBackground,
                                                                                    letterSpacing: 0.0,
                                                                                  ),
                                                                            ),
                                                                          ),
                                                                        ),
                                                                      ),
                                                                    ],
                                                                  ),
                                                                if (searchAdventureItem
                                                                    .isAdventure)
                                                                  Row(
                                                                    mainAxisSize:
                                                                        MainAxisSize
                                                                            .max,
                                                                    children: [
                                                                      Flexible(
                                                                        child:
                                                                            InkWell(
                                                                          splashColor:
                                                                              Colors.transparent,
                                                                          focusColor:
                                                                              Colors.transparent,
                                                                          hoverColor:
                                                                              Colors.transparent,
                                                                          highlightColor:
                                                                              Colors.transparent,
                                                                          onTap:
                                                                              () async {
                                                                            context.pushNamed(
                                                                              'StoryChapter',
                                                                              queryParameters: {
                                                                                'chapter': serializeParam(
                                                                                  searchAdventureItem.chapterRef,
                                                                                  ParamType.DocumentReference,
                                                                                ),
                                                                                'pageNumber': serializeParam(
                                                                                  0,
                                                                                  ParamType.int,
                                                                                ),
                                                                              }.withoutNulls,
                                                                            );
                                                                          },
                                                                          child:
                                                                              Container(
                                                                            width:
                                                                                double.infinity,
                                                                            height:
                                                                                29.0,
                                                                            decoration:
                                                                                BoxDecoration(
                                                                              color: FlutterFlowTheme.of(context).primary,
                                                                            ),
                                                                            alignment:
                                                                                const AlignmentDirectional(0.0, 0.0),
                                                                            child:
                                                                                Text(
                                                                              'Choose Your Own Adventure Story',
                                                                              style: FlutterFlowTheme.of(context).bodyMedium.override(
                                                                                    fontFamily: 'Poppins',
                                                                                    color: FlutterFlowTheme.of(context).primaryBackground,
                                                                                    letterSpacing: 0.0,
                                                                                  ),
                                                                            ),
                                                                          ),
                                                                        ),
                                                                      ),
                                                                    ],
                                                                  ),
                                                                Padding(
                                                                  padding: const EdgeInsetsDirectional
                                                                      .fromSTEB(
                                                                          0.0,
                                                                          5.0,
                                                                          0.0,
                                                                          5.0),
                                                                  child: Row(
                                                                    mainAxisSize:
                                                                        MainAxisSize
                                                                            .max,
                                                                    children: [
                                                                      Padding(
                                                                        padding: const EdgeInsetsDirectional.fromSTEB(
                                                                            5.0,
                                                                            0.0,
                                                                            0.0,
                                                                            0.0),
                                                                        child:
                                                                            Text(
                                                                          searchAdventureItem
                                                                              .storyName,
                                                                          style: FlutterFlowTheme.of(context)
                                                                              .titleMedium
                                                                              .override(
                                                                                fontFamily: 'Poppins',
                                                                                color: FlutterFlowTheme.of(context).primary,
                                                                                fontSize: 14.0,
                                                                                letterSpacing: 0.0,
                                                                              ),
                                                                        ),
                                                                      ),
                                                                    ],
                                                                  ),
                                                                ),
                                                                Stack(
                                                                  children: [
                                                                    Align(
                                                                      alignment:
                                                                          const AlignmentDirectional(
                                                                              0.0,
                                                                              0.0),
                                                                      child:
                                                                          Padding(
                                                                        padding: const EdgeInsetsDirectional.fromSTEB(
                                                                            10.0,
                                                                            0.0,
                                                                            10.0,
                                                                            0.0),
                                                                        child:
                                                                            ClipRRect(
                                                                          borderRadius:
                                                                              BorderRadius.circular(8.0),
                                                                          child:
                                                                              Image.network(
                                                                            searchAdventureItem.cardImageSmall,
                                                                            width:
                                                                                double.infinity,
                                                                            height:
                                                                                220.0,
                                                                            fit:
                                                                                BoxFit.cover,
                                                                          ),
                                                                        ),
                                                                      ),
                                                                    ),
                                                                    if (searchAdventureItem
                                                                            .isNew ==
                                                                        true)
                                                                      Padding(
                                                                        padding: const EdgeInsetsDirectional.fromSTEB(
                                                                            15.0,
                                                                            0.0,
                                                                            0.0,
                                                                            0.0),
                                                                        child:
                                                                            ClipRRect(
                                                                          borderRadius:
                                                                              BorderRadius.circular(8.0),
                                                                          child:
                                                                              Image.asset(
                                                                            'assets/images/NewPurple001.gif',
                                                                            width:
                                                                                50.0,
                                                                            height:
                                                                                50.0,
                                                                            fit:
                                                                                BoxFit.cover,
                                                                          ),
                                                                        ),
                                                                      ),
                                                                    Align(
                                                                      alignment:
                                                                          const AlignmentDirectional(
                                                                              0.0,
                                                                              0.95),
                                                                      child:
                                                                          Padding(
                                                                        padding: const EdgeInsetsDirectional.fromSTEB(
                                                                            0.0,
                                                                            175.0,
                                                                            20.0,
                                                                            0.0),
                                                                        child:
                                                                            Row(
                                                                          mainAxisSize:
                                                                              MainAxisSize.max,
                                                                          mainAxisAlignment:
                                                                              MainAxisAlignment.end,
                                                                          children: [
                                                                            if (searchAdventureItem.isFavoritedByUser.contains(currentUserReference) ==
                                                                                false)
                                                                              Align(
                                                                                alignment: const AlignmentDirectional(0.24, 0.2),
                                                                                child: FlutterFlowIconButton(
                                                                                  borderColor: FlutterFlowTheme.of(context).primary,
                                                                                  borderRadius: 20.0,
                                                                                  borderWidth: 1.0,
                                                                                  buttonSize: 40.0,
                                                                                  fillColor: FlutterFlowTheme.of(context).accent1,
                                                                                  icon: FaIcon(
                                                                                    FontAwesomeIcons.heart,
                                                                                    color: FlutterFlowTheme.of(context).primary,
                                                                                    size: 24.0,
                                                                                  ),
                                                                                  onPressed: () async {
                                                                                    await currentUserReference!.update({
                                                                                      ...mapToFirestore(
                                                                                        {
                                                                                          'favorited': FieldValue.arrayUnion([
                                                                                            searchAdventureItem.reference
                                                                                          ]),
                                                                                        },
                                                                                      ),
                                                                                    });
                                                                                    // Add to Library

                                                                                    await searchAdventureItem.reference.update({
                                                                                      ...mapToFirestore(
                                                                                        {
                                                                                          'IsFavoritedByUser': FieldValue.arrayUnion([
                                                                                            currentUserReference
                                                                                          ]),
                                                                                        },
                                                                                      ),
                                                                                    });
                                                                                  },
                                                                                ),
                                                                              ),
                                                                            if (searchAdventureItem.isFavoritedByUser.contains(currentUserReference) ==
                                                                                true)
                                                                              Align(
                                                                                alignment: const AlignmentDirectional(0.9, 0.2),
                                                                                child: FlutterFlowIconButton(
                                                                                  borderColor: FlutterFlowTheme.of(context).primary,
                                                                                  borderRadius: 20.0,
                                                                                  borderWidth: 1.0,
                                                                                  buttonSize: 40.0,
                                                                                  fillColor: FlutterFlowTheme.of(context).accent1,
                                                                                  icon: FaIcon(
                                                                                    FontAwesomeIcons.solidHeart,
                                                                                    color: FlutterFlowTheme.of(context).primary,
                                                                                    size: 24.0,
                                                                                  ),
                                                                                  onPressed: () async {
                                                                                    await currentUserReference!.update({
                                                                                      ...mapToFirestore(
                                                                                        {
                                                                                          'favorited': FieldValue.arrayRemove([
                                                                                            searchAdventureItem.reference
                                                                                          ]),
                                                                                        },
                                                                                      ),
                                                                                    });
                                                                                    // RemoveFromLibrary

                                                                                    await searchAdventureItem.reference.update({
                                                                                      ...mapToFirestore(
                                                                                        {
                                                                                          'IsFavoritedByUser': FieldValue.arrayRemove([
                                                                                            currentUserReference
                                                                                          ]),
                                                                                        },
                                                                                      ),
                                                                                    });
                                                                                  },
                                                                                ),
                                                                              ),
                                                                          ],
                                                                        ),
                                                                      ),
                                                                    ),
                                                                  ],
                                                                ),
                                                                Padding(
                                                                  padding:
                                                                      const EdgeInsets
                                                                          .all(
                                                                              12.0),
                                                                  child: Column(
                                                                    mainAxisSize:
                                                                        MainAxisSize
                                                                            .max,
                                                                    crossAxisAlignment:
                                                                        CrossAxisAlignment
                                                                            .start,
                                                                    children: [
                                                                      Text(
                                                                        searchAdventureItem
                                                                            .description,
                                                                        style: FlutterFlowTheme.of(context)
                                                                            .headlineMedium
                                                                            .override(
                                                                              fontFamily: 'Poppins',
                                                                              fontSize: 10.0,
                                                                              letterSpacing: 0.0,
                                                                            ),
                                                                      ),
                                                                    ].divide(const SizedBox(
                                                                        height:
                                                                            4.0)),
                                                                  ),
                                                                ),
                                                              ],
                                                            ),
                                                          ),
                                                        ),
                                                      );
                                                    },
                                                  );
                                                },
                                              ),
                                            ),
                                          ),
                                        ),
                                      if ((_model.searchBarTextController
                                                      .text ==
                                                  '') &&
                                          responsiveVisibility(
                                            context: context,
                                            phone: false,
                                          ))
                                        Container(
                                          width: double.infinity,
                                          height: MediaQuery.sizeOf(context)
                                                  .height *
                                              1.0,
                                          decoration: const BoxDecoration(),
                                          child: Align(
                                            alignment:
                                                const AlignmentDirectional(0.0, -1.0),
                                            child: Padding(
                                              padding: const EdgeInsetsDirectional
                                                  .fromSTEB(
                                                      0.0, 0.0, 0.0, 550.0),
                                              child: Builder(
                                                builder: (context) {
                                                  final searchAdventure =
                                                      homeRevisedDbRecordList
                                                          .where((e) =>
                                                              e.isAdventure)
                                                          .toList();

                                                  return GridView.builder(
                                                    padding:
                                                        const EdgeInsets.fromLTRB(
                                                      0,
                                                      0,
                                                      0,
                                                      10.0,
                                                    ),
                                                    gridDelegate:
                                                        const SliverGridDelegateWithFixedCrossAxisCount(
                                                      crossAxisCount: 3,
                                                      crossAxisSpacing: 10.0,
                                                      mainAxisSpacing: 10.0,
                                                      childAspectRatio: 0.8,
                                                    ),
                                                    shrinkWrap: true,
                                                    scrollDirection:
                                                        Axis.vertical,
                                                    itemCount:
                                                        searchAdventure.length,
                                                    itemBuilder: (context,
                                                        searchAdventureIndex) {
                                                      final searchAdventureItem =
                                                          searchAdventure[
                                                              searchAdventureIndex];
                                                      return Container(
                                                        decoration:
                                                            BoxDecoration(
                                                          borderRadius:
                                                              BorderRadius
                                                                  .circular(
                                                                      8.0),
                                                          border: Border.all(
                                                            color: FlutterFlowTheme
                                                                    .of(context)
                                                                .primary,
                                                          ),
                                                        ),
                                                        child: InkWell(
                                                          splashColor: Colors
                                                              .transparent,
                                                          focusColor: Colors
                                                              .transparent,
                                                          hoverColor: Colors
                                                              .transparent,
                                                          highlightColor: Colors
                                                              .transparent,
                                                          onTap: () async {
                                                            context.pushNamed(
                                                              'StoryChapter',
                                                              queryParameters: {
                                                                'chapter':
                                                                    serializeParam(
                                                                  searchAdventureItem
                                                                      .chapterRef,
                                                                  ParamType
                                                                      .DocumentReference,
                                                                ),
                                                                'pageNumber':
                                                                    serializeParam(
                                                                  0,
                                                                  ParamType.int,
                                                                ),
                                                              }.withoutNulls,
                                                            );
                                                          },
                                                          child: Card(
                                                            clipBehavior: Clip
                                                                .antiAliasWithSaveLayer,
                                                            color: FlutterFlowTheme
                                                                    .of(context)
                                                                .secondaryBackground,
                                                            elevation: 4.0,
                                                            shape:
                                                                RoundedRectangleBorder(
                                                              borderRadius:
                                                                  BorderRadius
                                                                      .circular(
                                                                          8.0),
                                                            ),
                                                            child: Stack(
                                                              children: [
                                                                Align(
                                                                  alignment:
                                                                      const AlignmentDirectional(
                                                                          0.0,
                                                                          0.0),
                                                                  child: Column(
                                                                    mainAxisSize:
                                                                        MainAxisSize
                                                                            .max,
                                                                    crossAxisAlignment:
                                                                        CrossAxisAlignment
                                                                            .center,
                                                                    children: [
                                                                      if (!searchAdventureItem
                                                                          .isAdventure)
                                                                        Row(
                                                                          mainAxisSize:
                                                                              MainAxisSize.max,
                                                                          children: [
                                                                            Flexible(
                                                                              child: Container(
                                                                                width: 461.0,
                                                                                height: 29.0,
                                                                                decoration: BoxDecoration(
                                                                                  color: FlutterFlowTheme.of(context).primary,
                                                                                ),
                                                                                alignment: const AlignmentDirectional(0.0, 0.0),
                                                                                child: Text(
                                                                                  'Read Along Story',
                                                                                  style: FlutterFlowTheme.of(context).bodyMedium.override(
                                                                                        fontFamily: 'Poppins',
                                                                                        color: FlutterFlowTheme.of(context).primaryBackground,
                                                                                        letterSpacing: 0.0,
                                                                                      ),
                                                                                ),
                                                                              ),
                                                                            ),
                                                                          ],
                                                                        ),
                                                                      if (searchAdventureItem
                                                                          .isAdventure)
                                                                        Row(
                                                                          mainAxisSize:
                                                                              MainAxisSize.max,
                                                                          children: [
                                                                            Flexible(
                                                                              child: Container(
                                                                                width: 361.0,
                                                                                height: 29.0,
                                                                                decoration: BoxDecoration(
                                                                                  color: FlutterFlowTheme.of(context).primary,
                                                                                ),
                                                                                alignment: const AlignmentDirectional(0.0, 0.0),
                                                                                child: Text(
                                                                                  'Choose Your Own Adventure Story',
                                                                                  style: FlutterFlowTheme.of(context).bodyMedium.override(
                                                                                        fontFamily: 'Poppins',
                                                                                        color: FlutterFlowTheme.of(context).primaryBackground,
                                                                                        letterSpacing: 0.0,
                                                                                      ),
                                                                                ),
                                                                              ),
                                                                            ),
                                                                          ],
                                                                        ),
                                                                      Padding(
                                                                        padding: const EdgeInsetsDirectional.fromSTEB(
                                                                            0.0,
                                                                            5.0,
                                                                            5.0,
                                                                            0.0),
                                                                        child:
                                                                            Row(
                                                                          mainAxisSize:
                                                                              MainAxisSize.max,
                                                                          mainAxisAlignment:
                                                                              MainAxisAlignment.spaceBetween,
                                                                          children: [
                                                                            Wrap(
                                                                              spacing: 0.0,
                                                                              runSpacing: 0.0,
                                                                              alignment: WrapAlignment.start,
                                                                              crossAxisAlignment: WrapCrossAlignment.start,
                                                                              direction: Axis.horizontal,
                                                                              runAlignment: WrapAlignment.start,
                                                                              verticalDirection: VerticalDirection.down,
                                                                              clipBehavior: Clip.none,
                                                                              children: [
                                                                                Padding(
                                                                                  padding: const EdgeInsetsDirectional.fromSTEB(10.0, 5.0, 0.0, 5.0),
                                                                                  child: Text(
                                                                                    searchAdventureItem.storyName,
                                                                                    style: FlutterFlowTheme.of(context).bodyMedium.override(
                                                                                          fontFamily: 'Poppins',
                                                                                          color: FlutterFlowTheme.of(context).primary,
                                                                                          fontSize: 14.0,
                                                                                          letterSpacing: 0.0,
                                                                                          fontWeight: FontWeight.w600,
                                                                                        ),
                                                                                  ),
                                                                                ),
                                                                              ],
                                                                            ),
                                                                          ],
                                                                        ),
                                                                      ),
                                                                      SizedBox(
                                                                        width:
                                                                            292.0,
                                                                        height:
                                                                            144.0,
                                                                        child:
                                                                            Stack(
                                                                          children: [
                                                                            ClipRRect(
                                                                              borderRadius: BorderRadius.circular(8.0),
                                                                              child: Image.network(
                                                                                searchAdventureItem.cardImageSmall,
                                                                                width: double.infinity,
                                                                                height: 140.0,
                                                                                fit: BoxFit.cover,
                                                                              ),
                                                                            ),
                                                                            if (searchAdventureItem.isNew ==
                                                                                true)
                                                                              ClipRRect(
                                                                                borderRadius: BorderRadius.circular(8.0),
                                                                                child: Image.asset(
                                                                                  'assets/images/NewPurple001.gif',
                                                                                  width: 50.0,
                                                                                  height: 50.0,
                                                                                  fit: BoxFit.cover,
                                                                                ),
                                                                              ),
                                                                            if (searchAdventureItem.isFavoritedByUser.contains(currentUserReference) ==
                                                                                false)
                                                                              Align(
                                                                                alignment: const AlignmentDirectional(0.96, 0.77),
                                                                                child: FlutterFlowIconButton(
                                                                                  borderColor: FlutterFlowTheme.of(context).primary,
                                                                                  borderRadius: 20.0,
                                                                                  borderWidth: 1.0,
                                                                                  buttonSize: 40.0,
                                                                                  fillColor: FlutterFlowTheme.of(context).accent1,
                                                                                  icon: FaIcon(
                                                                                    FontAwesomeIcons.heart,
                                                                                    color: FlutterFlowTheme.of(context).primary,
                                                                                    size: 24.0,
                                                                                  ),
                                                                                  onPressed: () async {
                                                                                    await currentUserReference!.update({
                                                                                      ...mapToFirestore(
                                                                                        {
                                                                                          'favorited': FieldValue.arrayUnion([
                                                                                            searchAdventureItem.reference
                                                                                          ]),
                                                                                        },
                                                                                      ),
                                                                                    });
                                                                                    // Add to Library

                                                                                    await searchAdventureItem.reference.update({
                                                                                      ...mapToFirestore(
                                                                                        {
                                                                                          'IsFavoritedByUser': FieldValue.arrayUnion([
                                                                                            currentUserReference
                                                                                          ]),
                                                                                        },
                                                                                      ),
                                                                                    });
                                                                                  },
                                                                                ),
                                                                              ),
                                                                            if (searchAdventureItem.isFavoritedByUser.contains(currentUserReference) ==
                                                                                true)
                                                                              Align(
                                                                                alignment: const AlignmentDirectional(0.95, 0.77),
                                                                                child: FlutterFlowIconButton(
                                                                                  borderColor: FlutterFlowTheme.of(context).primary,
                                                                                  borderRadius: 20.0,
                                                                                  borderWidth: 1.0,
                                                                                  buttonSize: 40.0,
                                                                                  fillColor: FlutterFlowTheme.of(context).accent1,
                                                                                  icon: FaIcon(
                                                                                    FontAwesomeIcons.solidHeart,
                                                                                    color: FlutterFlowTheme.of(context).primary,
                                                                                    size: 24.0,
                                                                                  ),
                                                                                  onPressed: () async {
                                                                                    await currentUserReference!.update({
                                                                                      ...mapToFirestore(
                                                                                        {
                                                                                          'favorited': FieldValue.arrayRemove([
                                                                                            searchAdventureItem.reference
                                                                                          ]),
                                                                                        },
                                                                                      ),
                                                                                    });
                                                                                    // RemoveFromLibrary

                                                                                    await searchAdventureItem.reference.update({
                                                                                      ...mapToFirestore(
                                                                                        {
                                                                                          'IsFavoritedByUser': FieldValue.arrayRemove([
                                                                                            currentUserReference
                                                                                          ]),
                                                                                        },
                                                                                      ),
                                                                                    });
                                                                                  },
                                                                                ),
                                                                              ),
                                                                          ],
                                                                        ),
                                                                      ),
                                                                      Padding(
                                                                        padding:
                                                                            const EdgeInsets.all(12.0),
                                                                        child:
                                                                            Row(
                                                                          mainAxisSize:
                                                                              MainAxisSize.max,
                                                                          children: [
                                                                            Flexible(
                                                                              child: Wrap(
                                                                                spacing: 0.0,
                                                                                runSpacing: 0.0,
                                                                                alignment: WrapAlignment.start,
                                                                                crossAxisAlignment: WrapCrossAlignment.start,
                                                                                direction: Axis.horizontal,
                                                                                runAlignment: WrapAlignment.start,
                                                                                verticalDirection: VerticalDirection.down,
                                                                                clipBehavior: Clip.none,
                                                                                children: [
                                                                                  Padding(
                                                                                    padding: const EdgeInsetsDirectional.fromSTEB(0.0, 5.0, 0.0, 10.0),
                                                                                    child: Text(
                                                                                      searchAdventureItem.description.maybeHandleOverflow(maxChars: 60),
                                                                                      style: FlutterFlowTheme.of(context).bodyMedium.override(
                                                                                            fontFamily: 'Poppins',
                                                                                            letterSpacing: 0.0,
                                                                                          ),
                                                                                    ),
                                                                                  ),
                                                                                ],
                                                                              ),
                                                                            ),
                                                                          ],
                                                                        ),
                                                                      ),
                                                                    ],
                                                                  ),
                                                                ),
                                                              ],
                                                            ),
                                                          ),
                                                        ),
                                                      );
                                                    },
                                                  );
                                                },
                                              ),
                                            ),
                                          ),
                                        ),
                                      if ((_model.searchBarTextController
                                                      .text !=
                                                  '') &&
                                          responsiveVisibility(
                                            context: context,
                                            phone: false,
                                          ))
                                        Container(
                                          width: double.infinity,
                                          height: MediaQuery.sizeOf(context)
                                                  .height *
                                              1.0,
                                          decoration: const BoxDecoration(),
                                          child: Padding(
                                            padding:
                                                const EdgeInsetsDirectional.fromSTEB(
                                                    0.0, 0.0, 0.0, 550.0),
                                            child: Builder(
                                              builder: (context) {
                                                final searchAdventure = functions
                                                    .simpleSearchV2(
                                                        _model
                                                            .searchBarTextController
                                                            .text,
                                                        homeRevisedDbRecordList
                                                            .toList())
                                                    .where((e) => e.isAdventure)
                                                    .toList();

                                                return GridView.builder(
                                                  padding: const EdgeInsets.fromLTRB(
                                                    0,
                                                    0,
                                                    0,
                                                    10.0,
                                                  ),
                                                  gridDelegate:
                                                      const SliverGridDelegateWithFixedCrossAxisCount(
                                                    crossAxisCount: 3,
                                                    crossAxisSpacing: 10.0,
                                                    mainAxisSpacing: 10.0,
                                                    childAspectRatio: 0.8,
                                                  ),
                                                  shrinkWrap: true,
                                                  scrollDirection:
                                                      Axis.vertical,
                                                  itemCount:
                                                      searchAdventure.length,
                                                  itemBuilder: (context,
                                                      searchAdventureIndex) {
                                                    final searchAdventureItem =
                                                        searchAdventure[
                                                            searchAdventureIndex];
                                                    return Container(
                                                      width: 100.0,
                                                      height: 133.0,
                                                      decoration: BoxDecoration(
                                                        borderRadius:
                                                            BorderRadius
                                                                .circular(8.0),
                                                        border: Border.all(
                                                          color: FlutterFlowTheme
                                                                  .of(context)
                                                              .primary,
                                                        ),
                                                      ),
                                                      child: InkWell(
                                                        splashColor:
                                                            Colors.transparent,
                                                        focusColor:
                                                            Colors.transparent,
                                                        hoverColor:
                                                            Colors.transparent,
                                                        highlightColor:
                                                            Colors.transparent,
                                                        onTap: () async {
                                                          context.pushNamed(
                                                            'StoryChapter',
                                                            queryParameters: {
                                                              'chapter':
                                                                  serializeParam(
                                                                searchAdventureItem
                                                                    .chapterRef,
                                                                ParamType
                                                                    .DocumentReference,
                                                              ),
                                                              'pageNumber':
                                                                  serializeParam(
                                                                0,
                                                                ParamType.int,
                                                              ),
                                                            }.withoutNulls,
                                                          );
                                                        },
                                                        child: Card(
                                                          clipBehavior: Clip
                                                              .antiAliasWithSaveLayer,
                                                          color: FlutterFlowTheme
                                                                  .of(context)
                                                              .secondaryBackground,
                                                          elevation: 4.0,
                                                          shape:
                                                              RoundedRectangleBorder(
                                                            borderRadius:
                                                                BorderRadius
                                                                    .circular(
                                                                        8.0),
                                                          ),
                                                          child: Align(
                                                            alignment:
                                                                const AlignmentDirectional(
                                                                    0.0, 0.0),
                                                            child: Stack(
                                                              children: [
                                                                Align(
                                                                  alignment:
                                                                      const AlignmentDirectional(
                                                                          0.0,
                                                                          0.0),
                                                                  child: Column(
                                                                    mainAxisSize:
                                                                        MainAxisSize
                                                                            .max,
                                                                    crossAxisAlignment:
                                                                        CrossAxisAlignment
                                                                            .center,
                                                                    children: [
                                                                      if (!searchAdventureItem
                                                                          .isAdventure)
                                                                        Row(
                                                                          mainAxisSize:
                                                                              MainAxisSize.max,
                                                                          children: [
                                                                            Flexible(
                                                                              child: Container(
                                                                                width: 461.0,
                                                                                height: 29.0,
                                                                                decoration: BoxDecoration(
                                                                                  color: FlutterFlowTheme.of(context).primary,
                                                                                ),
                                                                                alignment: const AlignmentDirectional(0.0, 0.0),
                                                                                child: Text(
                                                                                  'Read Along Story',
                                                                                  style: FlutterFlowTheme.of(context).bodyMedium.override(
                                                                                        fontFamily: 'Poppins',
                                                                                        color: FlutterFlowTheme.of(context).primaryBackground,
                                                                                        letterSpacing: 0.0,
                                                                                      ),
                                                                                ),
                                                                              ),
                                                                            ),
                                                                          ],
                                                                        ),
                                                                      if (searchAdventureItem
                                                                          .isAdventure)
                                                                        Row(
                                                                          mainAxisSize:
                                                                              MainAxisSize.max,
                                                                          children: [
                                                                            Flexible(
                                                                              child: Container(
                                                                                width: 361.0,
                                                                                height: 29.0,
                                                                                decoration: BoxDecoration(
                                                                                  color: FlutterFlowTheme.of(context).primary,
                                                                                ),
                                                                                alignment: const AlignmentDirectional(0.0, 0.0),
                                                                                child: Text(
                                                                                  'Choose Your Own Adventure Story',
                                                                                  style: FlutterFlowTheme.of(context).bodyMedium.override(
                                                                                        fontFamily: 'Poppins',
                                                                                        color: FlutterFlowTheme.of(context).primaryBackground,
                                                                                        letterSpacing: 0.0,
                                                                                      ),
                                                                                ),
                                                                              ),
                                                                            ),
                                                                          ],
                                                                        ),
                                                                      Padding(
                                                                        padding: const EdgeInsetsDirectional.fromSTEB(
                                                                            0.0,
                                                                            5.0,
                                                                            5.0,
                                                                            0.0),
                                                                        child:
                                                                            Row(
                                                                          mainAxisSize:
                                                                              MainAxisSize.max,
                                                                          mainAxisAlignment:
                                                                              MainAxisAlignment.spaceBetween,
                                                                          children: [
                                                                            Wrap(
                                                                              spacing: 0.0,
                                                                              runSpacing: 0.0,
                                                                              alignment: WrapAlignment.start,
                                                                              crossAxisAlignment: WrapCrossAlignment.start,
                                                                              direction: Axis.horizontal,
                                                                              runAlignment: WrapAlignment.start,
                                                                              verticalDirection: VerticalDirection.down,
                                                                              clipBehavior: Clip.none,
                                                                              children: [
                                                                                Padding(
                                                                                  padding: const EdgeInsetsDirectional.fromSTEB(10.0, 5.0, 0.0, 5.0),
                                                                                  child: Text(
                                                                                    searchAdventureItem.storyName,
                                                                                    style: FlutterFlowTheme.of(context).bodyMedium.override(
                                                                                          fontFamily: 'Poppins',
                                                                                          color: FlutterFlowTheme.of(context).primary,
                                                                                          fontSize: 14.0,
                                                                                          letterSpacing: 0.0,
                                                                                          fontWeight: FontWeight.w600,
                                                                                        ),
                                                                                  ),
                                                                                ),
                                                                              ],
                                                                            ),
                                                                          ],
                                                                        ),
                                                                      ),
                                                                      SizedBox(
                                                                        width:
                                                                            292.0,
                                                                        height:
                                                                            144.0,
                                                                        child:
                                                                            Stack(
                                                                          children: [
                                                                            Align(
                                                                              alignment: const AlignmentDirectional(0.0, -1.0),
                                                                              child: ClipRRect(
                                                                                borderRadius: BorderRadius.circular(8.0),
                                                                                child: Image.network(
                                                                                  searchAdventureItem.cardImageSmall,
                                                                                  width: double.infinity,
                                                                                  height: 140.0,
                                                                                  fit: BoxFit.cover,
                                                                                ),
                                                                              ),
                                                                            ),
                                                                            if (searchAdventureItem.isNew ==
                                                                                true)
                                                                              ClipRRect(
                                                                                borderRadius: BorderRadius.circular(8.0),
                                                                                child: Image.asset(
                                                                                  'assets/images/NewPurple001.gif',
                                                                                  width: 50.0,
                                                                                  height: 50.0,
                                                                                  fit: BoxFit.cover,
                                                                                ),
                                                                              ),
                                                                            if (searchAdventureItem.isFavoritedByUser.contains(currentUserReference) ==
                                                                                false)
                                                                              Align(
                                                                                alignment: const AlignmentDirectional(0.94, 0.79),
                                                                                child: FlutterFlowIconButton(
                                                                                  borderColor: FlutterFlowTheme.of(context).primary,
                                                                                  borderRadius: 20.0,
                                                                                  borderWidth: 1.0,
                                                                                  buttonSize: 40.0,
                                                                                  fillColor: FlutterFlowTheme.of(context).accent1,
                                                                                  icon: FaIcon(
                                                                                    FontAwesomeIcons.heart,
                                                                                    color: FlutterFlowTheme.of(context).primary,
                                                                                    size: 24.0,
                                                                                  ),
                                                                                  onPressed: () async {
                                                                                    await currentUserReference!.update({
                                                                                      ...mapToFirestore(
                                                                                        {
                                                                                          'favorited': FieldValue.arrayUnion([
                                                                                            searchAdventureItem.reference
                                                                                          ]),
                                                                                        },
                                                                                      ),
                                                                                    });
                                                                                    // Add to Library

                                                                                    await searchAdventureItem.reference.update({
                                                                                      ...mapToFirestore(
                                                                                        {
                                                                                          'IsFavoritedByUser': FieldValue.arrayUnion([
                                                                                            currentUserReference
                                                                                          ]),
                                                                                        },
                                                                                      ),
                                                                                    });
                                                                                  },
                                                                                ),
                                                                              ),
                                                                            if (searchAdventureItem.isFavoritedByUser.contains(currentUserReference) ==
                                                                                true)
                                                                              Align(
                                                                                alignment: const AlignmentDirectional(0.94, 0.81),
                                                                                child: FlutterFlowIconButton(
                                                                                  borderColor: FlutterFlowTheme.of(context).primary,
                                                                                  borderRadius: 20.0,
                                                                                  borderWidth: 1.0,
                                                                                  buttonSize: 40.0,
                                                                                  fillColor: FlutterFlowTheme.of(context).accent1,
                                                                                  icon: FaIcon(
                                                                                    FontAwesomeIcons.solidHeart,
                                                                                    color: FlutterFlowTheme.of(context).primary,
                                                                                    size: 24.0,
                                                                                  ),
                                                                                  onPressed: () async {
                                                                                    await currentUserReference!.update({
                                                                                      ...mapToFirestore(
                                                                                        {
                                                                                          'favorited': FieldValue.arrayRemove([
                                                                                            searchAdventureItem.reference
                                                                                          ]),
                                                                                        },
                                                                                      ),
                                                                                    });
                                                                                    // RemoveFromLibrary

                                                                                    await searchAdventureItem.reference.update({
                                                                                      ...mapToFirestore(
                                                                                        {
                                                                                          'IsFavoritedByUser': FieldValue.arrayRemove([
                                                                                            currentUserReference
                                                                                          ]),
                                                                                        },
                                                                                      ),
                                                                                    });
                                                                                  },
                                                                                ),
                                                                              ),
                                                                          ],
                                                                        ),
                                                                      ),
                                                                      Padding(
                                                                        padding:
                                                                            const EdgeInsets.all(12.0),
                                                                        child:
                                                                            Row(
                                                                          mainAxisSize:
                                                                              MainAxisSize.max,
                                                                          children: [
                                                                            Flexible(
                                                                              child: Wrap(
                                                                                spacing: 0.0,
                                                                                runSpacing: 0.0,
                                                                                alignment: WrapAlignment.start,
                                                                                crossAxisAlignment: WrapCrossAlignment.start,
                                                                                direction: Axis.horizontal,
                                                                                runAlignment: WrapAlignment.start,
                                                                                verticalDirection: VerticalDirection.down,
                                                                                clipBehavior: Clip.none,
                                                                                children: [
                                                                                  Padding(
                                                                                    padding: const EdgeInsetsDirectional.fromSTEB(0.0, 5.0, 0.0, 10.0),
                                                                                    child: Text(
                                                                                      searchAdventureItem.description.maybeHandleOverflow(maxChars: 60),
                                                                                      style: FlutterFlowTheme.of(context).bodyMedium.override(
                                                                                            fontFamily: 'Poppins',
                                                                                            letterSpacing: 0.0,
                                                                                          ),
                                                                                    ),
                                                                                  ),
                                                                                ],
                                                                              ),
                                                                            ),
                                                                          ],
                                                                        ),
                                                                      ),
                                                                    ],
                                                                  ),
                                                                ),
                                                              ],
                                                            ),
                                                          ),
                                                        ),
                                                      ),
                                                    );
                                                  },
                                                );
                                              },
                                            ),
                                          ),
                                        ),
                                    ],
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(6.0),
                    child: Row(
                      mainAxisSize: MainAxisSize.max,
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        Container(
                          constraints: const BoxConstraints(
                            maxWidth: 600.0,
                          ),
                          decoration: const BoxDecoration(),
                          child: Row(
                            mainAxisSize: MainAxisSize.min,
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              InkWell(
                                splashColor: Colors.transparent,
                                focusColor: Colors.transparent,
                                hoverColor: Colors.transparent,
                                highlightColor: Colors.transparent,
                                onTap: () async {
                                  context.pushNamed(
                                    'Library',
                                    extra: <String, dynamic>{
                                      kTransitionInfoKey: const TransitionInfo(
                                        hasTransition: true,
                                        transitionType:
                                            PageTransitionType.rightToLeft,
                                      ),
                                    },
                                  );
                                },
                                child: wrapWithModel(
                                  model: _model.navSegmentModel1,
                                  updateCallback: () => setState(() {}),
                                  updateOnChange: true,
                                  child: NavSegmentWidget(
                                    active: false,
                                    label: 'Library',
                                    activeIcon: Icon(
                                      Icons.menu_book_rounded,
                                      color:
                                          FlutterFlowTheme.of(context).primary,
                                    ),
                                    inactiveIcon: Icon(
                                      Icons.menu_book_rounded,
                                      color: FlutterFlowTheme.of(context)
                                          .secondary,
                                    ),
                                    hideLabel: false,
                                    navigateTo: () async {
                                      context.pushNamed('Library');
                                    },
                                  ),
                                ),
                              ),
                              Lottie.asset(
                                'assets/lottie_animations/trottingdog.json',
                                width: 100.0,
                                height: 80.0,
                                fit: BoxFit.contain,
                                animate: true,
                              ),
                              InkWell(
                                splashColor: Colors.transparent,
                                focusColor: Colors.transparent,
                                hoverColor: Colors.transparent,
                                highlightColor: Colors.transparent,
                                onTap: () async {
                                  context.pushNamed('Home');
                                },
                                child: wrapWithModel(
                                  model: _model.navSegmentModel2,
                                  updateCallback: () => setState(() {}),
                                  child: NavSegmentWidget(
                                    active: true,
                                    label: 'Home',
                                    activeIcon: FaIcon(
                                      FontAwesomeIcons.houseUser,
                                      color:
                                          FlutterFlowTheme.of(context).primary,
                                    ),
                                    inactiveIcon: FaIcon(
                                      FontAwesomeIcons.houseUser,
                                      color: FlutterFlowTheme.of(context)
                                          .secondary,
                                    ),
                                    hideLabel: false,
                                    navigateTo: () async {
                                      context.pushNamed(
                                        'Home',
                                        extra: <String, dynamic>{
                                          kTransitionInfoKey: const TransitionInfo(
                                            hasTransition: true,
                                            transitionType:
                                                PageTransitionType.fade,
                                            duration: Duration(milliseconds: 0),
                                          ),
                                        },
                                      );
                                    },
                                  ),
                                ),
                              ),
                            ].divide(const SizedBox(width: 50.0)),
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
        );
      },
    );
  }
}
