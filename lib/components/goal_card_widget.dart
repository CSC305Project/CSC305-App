import '/backend/backend.dart';
import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/index.dart';
import 'package:collection/collection.dart';
import 'package:flutter/material.dart';
import 'package:percent_indicator/percent_indicator.dart';
import 'goal_card_model.dart';
export 'goal_card_model.dart';

class GoalCardWidget extends StatefulWidget {
  const GoalCardWidget({super.key});

  @override
  State<GoalCardWidget> createState() => _GoalCardWidgetState();
}

class _GoalCardWidgetState extends State<GoalCardWidget> {
  late GoalCardModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => GoalCardModel());

    WidgetsBinding.instance.addPostFrameCallback((_) => safeSetState(() {}));
  }

  @override
  void dispose() {
    _model.maybeDispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Material(
      color: Colors.transparent,
      elevation: 1.0,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(12.0),
      ),
      child: Container(
        width: double.infinity,
        decoration: BoxDecoration(
          color: FlutterFlowTheme.of(context).secondaryBackground,
          borderRadius: BorderRadius.circular(12.0),
        ),
        child: Column(
          mainAxisSize: MainAxisSize.max,
          children: [
            Padding(
              padding: EdgeInsetsDirectional.fromSTEB(16.0, 16.0, 16.0, 16.0),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    mainAxisSize: MainAxisSize.max,
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Column(
                        mainAxisSize: MainAxisSize.max,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'Start saving/less spending',
                            style: FlutterFlowTheme.of(context)
                                .titleMedium
                                .override(
                                  fontFamily: 'Inter',
                                  letterSpacing: 0.0,
                                ),
                          ),
                          Text(
                            'Try not to spend too much per week',
                            style: FlutterFlowTheme.of(context)
                                .bodyMedium
                                .override(
                                  fontFamily: 'Inter',
                                  letterSpacing: 0.0,
                                ),
                          ),
                          Text(
                            'Due: 04/01/2025',
                            style: FlutterFlowTheme.of(context)
                                .labelMedium
                                .override(
                                  fontFamily: 'Inter',
                                  color: FlutterFlowTheme.of(context)
                                      .secondaryText,
                                  letterSpacing: 0.0,
                                ),
                          ),
                        ].divide(SizedBox(height: 8.0)),
                      ),
                      Column(
                        mainAxisSize: MainAxisSize.max,
                        children: [
                          FFButtonWidget(
                            onPressed: () async {
                              logFirebaseEvent(
                                  'GOAL_CARD_COMP_IN_PROGRESS_BTN_ON_TAP');
                              logFirebaseEvent('Button_navigate_to');

                              context.pushNamed(GoalPageWidget.routeName);
                            },
                            text: 'In Progress',
                            options: FFButtonOptions(
                              width: 98.0,
                              height: 35.0,
                              padding: EdgeInsetsDirectional.fromSTEB(
                                  16.0, 0.0, 16.0, 0.0),
                              iconPadding: EdgeInsetsDirectional.fromSTEB(
                                  0.0, 0.0, 0.0, 0.0),
                              color: Color(0xFFF4FD96),
                              textStyle: FlutterFlowTheme.of(context)
                                  .titleSmall
                                  .override(
                                    fontFamily: 'Inter',
                                    color: FlutterFlowTheme.of(context)
                                        .primaryText,
                                    letterSpacing: 0.0,
                                  ),
                              elevation: 0.0,
                              borderSide: BorderSide(
                                color: FlutterFlowTheme.of(context).primaryText,
                              ),
                              borderRadius: BorderRadius.circular(24.0),
                            ),
                          ),
                          Row(
                            mainAxisSize: MainAxisSize.max,
                            children: [
                              FlutterFlowIconButton(
                                borderRadius: 8.0,
                                buttonSize: 20.0,
                                fillColor: FlutterFlowTheme.of(context)
                                    .primaryBackground,
                                icon: Icon(
                                  Icons.edit,
                                  color: FlutterFlowTheme.of(context)
                                      .secondaryText,
                                  size: 24.0,
                                ),
                                onPressed: () {
                                  print('IconButton pressed ...');
                                },
                              ),
                              FlutterFlowIconButton(
                                borderRadius: 8.0,
                                buttonSize: 20.0,
                                fillColor: FlutterFlowTheme.of(context)
                                    .primaryBackground,
                                icon: Icon(
                                  Icons.delete,
                                  color: FlutterFlowTheme.of(context)
                                      .secondaryText,
                                  size: 24.0,
                                ),
                                onPressed: () async {
                                  logFirebaseEvent(
                                      'GOAL_CARD_COMP_delete_ICN_ON_TAP');
                                  logFirebaseEvent(
                                      'IconButton_firestore_query');
                                  _model.goals = await queryGoalsRecordOnce(
                                    singleRecord: true,
                                  ).then((s) => s.firstOrNull);
                                  logFirebaseEvent('IconButton_backend_call');
                                  await _model.goals!.user!.delete();

                                  safeSetState(() {});
                                },
                              ),
                            ].divide(SizedBox(width: 10.0)),
                          ),
                        ],
                      ),
                    ],
                  ),
                ].divide(SizedBox(height: 8.0)),
              ),
            ),
            Align(
              alignment: AlignmentDirectional(0.0, 0.0),
              child: Padding(
                padding: EdgeInsetsDirectional.fromSTEB(20.0, 0.0, 20.0, 0.0),
                child: LinearPercentIndicator(
                  percent: 0.5,
                  width: MediaQuery.sizeOf(context).width * 0.79,
                  lineHeight: 12.0,
                  animation: true,
                  animateFromLastPercent: true,
                  progressColor: Color(0xFF53A4A7),
                  backgroundColor: FlutterFlowTheme.of(context).accent4,
                  center: Text(
                    '50%',
                    textAlign: TextAlign.end,
                    style: FlutterFlowTheme.of(context).headlineSmall.override(
                          fontFamily: 'Inter',
                          fontSize: 12.0,
                          letterSpacing: 0.0,
                        ),
                  ),
                  barRadius: Radius.circular(20.0),
                  padding: EdgeInsets.zero,
                ),
              ),
            ),
            Slider(
              activeColor: FlutterFlowTheme.of(context).primary,
              inactiveColor: FlutterFlowTheme.of(context).alternate,
              min: 0.0,
              max: 10.0,
              value: _model.sliderValue ??= 5.0,
              onChanged: (newValue) {
                newValue = double.parse(newValue.toStringAsFixed(2));
                safeSetState(() => _model.sliderValue = newValue);
              },
            ),
          ],
        ),
      ),
    );
  }
}
