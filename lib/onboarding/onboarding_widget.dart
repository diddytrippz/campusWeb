import '../flutter_flow/flutter_flow_theme.dart';
import '../flutter_flow/flutter_flow_util.dart';
import '../flutter_flow/flutter_flow_widgets.dart';
import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_fonts/google_fonts.dart';

class OnboardingWidget extends StatefulWidget {
  const OnboardingWidget({Key? key}) : super(key: key);

  @override
  _OnboardingWidgetState createState() => _OnboardingWidgetState();
}

class _OnboardingWidgetState extends State<OnboardingWidget> {
  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    logFirebaseEvent('screen_view', parameters: {'screen_name': 'onboarding'});
    WidgetsBinding.instance.addPostFrameCallback((_) => setState(() {}));
  }

  @override
  Widget build(BuildContext context) {
    return Title(
        title: 'onboarding',
        color: FlutterFlowTheme.of(context).primaryColor,
        child: Scaffold(
          key: scaffoldKey,
          backgroundColor: Colors.black,
          body: SafeArea(
            child: GestureDetector(
              onTap: () => FocusScope.of(context).unfocus(),
              child: Align(
                alignment: AlignmentDirectional(0, 0),
                child: SingleChildScrollView(
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.stretch,
                    children: [
                      Align(
                        alignment: AlignmentDirectional(0, 0),
                        child: Padding(
                          padding:
                              EdgeInsetsDirectional.fromSTEB(30, 30, 30, 30),
                          child: SvgPicture.asset(
                            'assets/images/undraw_progressive_app_m-9-ms.svg',
                            width: MediaQuery.of(context).size.width * 0.4,
                            height: MediaQuery.of(context).size.height * 0.4,
                            fit: BoxFit.contain,
                          ),
                        ),
                      ),
                      Align(
                        alignment: AlignmentDirectional(0, 0),
                        child: Text(
                          'Maintenance Requests',
                          style: FlutterFlowTheme.of(context).title2.override(
                                fontFamily: 'Open Sans',
                                color: Color(0xFFF1EFEF),
                                fontSize: 26,
                                fontWeight: FontWeight.bold,
                              ),
                        ),
                      ),
                      Align(
                        alignment: AlignmentDirectional(0, 0),
                        child: Padding(
                          padding: EdgeInsetsDirectional.fromSTEB(20, 0, 20, 0),
                          child: Text(
                            'Please select your student accomadtion',
                            textAlign: TextAlign.center,
                            style: FlutterFlowTheme.of(context).title2.override(
                                  fontFamily: 'Open Sans',
                                  color: Color(0xFFF6F0F0),
                                  fontSize: 16,
                                  fontWeight: FontWeight.w600,
                                ),
                          ),
                        ),
                      ),
                      Align(
                        alignment: AlignmentDirectional(0, 0),
                        child: Padding(
                          padding:
                              EdgeInsetsDirectional.fromSTEB(60, 12, 60, 16),
                          child: FFButtonWidget(
                            onPressed: () async {
                              logFirebaseEvent(
                                  'ONBOARDING_PAGE_CAMPUS_AFRICA_BTN_ON_TAP');
                              logFirebaseEvent('Button_Navigate-To');
                              context.pushNamed(
                                'campusAfrica',
                                extra: <String, dynamic>{
                                  kTransitionInfoKey: TransitionInfo(
                                    hasTransition: true,
                                    transitionType: PageTransitionType.fade,
                                    duration: Duration(milliseconds: 0),
                                  ),
                                },
                              );
                            },
                            text: FFLocalizations.of(context).getText(
                              '5fjqqbhk' /* Campus Africa */,
                            ),
                            options: FFButtonOptions(
                              width: 600,
                              height: 50,
                              color:
                                  FlutterFlowTheme.of(context).primaryBtnText,
                              textStyle: FlutterFlowTheme.of(context)
                                  .subtitle2
                                  .override(
                                    fontFamily: 'Open Sans',
                                    color: Color(0xFF020202),
                                  ),
                              elevation: 2,
                              borderSide: BorderSide(
                                color: Colors.transparent,
                                width: 1,
                              ),
                              borderRadius: BorderRadius.circular(8),
                            ),
                          ),
                        ),
                      ),
                      Align(
                        alignment: AlignmentDirectional(0, 0),
                        child: Padding(
                          padding:
                              EdgeInsetsDirectional.fromSTEB(60, 0, 60, 60),
                          child: FFButtonWidget(
                            onPressed: () async {
                              logFirebaseEvent(
                                  'ONBOARDING_PAGE_RENNIE_HOUSE_BTN_ON_TAP');
                              logFirebaseEvent('Button_Navigate-To');
                              context.pushNamed(
                                'rennieHouse',
                                extra: <String, dynamic>{
                                  kTransitionInfoKey: TransitionInfo(
                                    hasTransition: true,
                                    transitionType: PageTransitionType.fade,
                                    duration: Duration(milliseconds: 0),
                                  ),
                                },
                              );
                            },
                            text: FFLocalizations.of(context).getText(
                              'toce9ejh' /* Rennie House */,
                            ),
                            options: FFButtonOptions(
                              width: 600,
                              height: 50,
                              color: FlutterFlowTheme.of(context).campusRed,
                              textStyle: FlutterFlowTheme.of(context)
                                  .subtitle2
                                  .override(
                                    fontFamily: 'Open Sans',
                                    color: FlutterFlowTheme.of(context)
                                        .primaryBtnText,
                                  ),
                              elevation: 2,
                              borderSide: BorderSide(
                                color: Colors.transparent,
                                width: 1,
                              ),
                              borderRadius: BorderRadius.circular(8),
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ),
        ));
  }
}
