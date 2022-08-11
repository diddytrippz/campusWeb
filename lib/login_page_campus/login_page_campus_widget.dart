import '../auth/auth_util.dart';
import '../flutter_flow/flutter_flow_theme.dart';
import '../flutter_flow/flutter_flow_util.dart';
import '../flutter_flow/flutter_flow_widgets.dart';
import 'package:easy_debounce/easy_debounce.dart';
import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:google_fonts/google_fonts.dart';

class LoginPageCampusWidget extends StatefulWidget {
  const LoginPageCampusWidget({Key? key}) : super(key: key);

  @override
  _LoginPageCampusWidgetState createState() => _LoginPageCampusWidgetState();
}

class _LoginPageCampusWidgetState extends State<LoginPageCampusWidget> {
  TextEditingController? textFieldEmailController;
  TextEditingController? textFieldPassController;
  late bool textFieldPassVisibility;
  TextEditingController? textFieldEmailResetController;
  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    logFirebaseEvent('screen_view',
        parameters: {'screen_name': 'loginPageCampus'});
    textFieldEmailController = TextEditingController();
    textFieldPassController = TextEditingController();
    textFieldPassVisibility = false;
    textFieldEmailResetController = TextEditingController();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: scaffoldKey,
      backgroundColor: Colors.black,
      body: GestureDetector(
        onTap: () => FocusScope.of(context).unfocus(),
        child: Container(
          width: MediaQuery.of(context).size.width,
          height: MediaQuery.of(context).size.height * 1,
          decoration: BoxDecoration(
            color: Color(0x00FFFFFF),
            shape: BoxShape.rectangle,
          ),
          child: Align(
            alignment: AlignmentDirectional(0, 1),
            child: Padding(
              padding: EdgeInsetsDirectional.fromSTEB(0, 40, 0, 0),
              child: Column(
                mainAxisSize: MainAxisSize.max,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  Expanded(
                    child: Padding(
                      padding: EdgeInsetsDirectional.fromSTEB(40, 10, 40, 10),
                      child: Container(
                        decoration: BoxDecoration(
                          color: Color(0x00EEEEEE),
                          image: DecorationImage(
                            fit: BoxFit.scaleDown,
                            image: Image.asset(
                              'assets/images/campus_logo_1.png',
                            ).image,
                          ),
                          shape: BoxShape.circle,
                        ),
                      ),
                    ),
                  ),
                  Material(
                    color: Colors.transparent,
                    elevation: 0,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.only(
                        bottomLeft: Radius.circular(0),
                        bottomRight: Radius.circular(0),
                        topLeft: Radius.circular(18),
                        topRight: Radius.circular(18),
                      ),
                    ),
                    child: Container(
                      width: MediaQuery.of(context).size.width,
                      height: 400,
                      decoration: BoxDecoration(
                        color: Color(0x00FFFFFF),
                        borderRadius: BorderRadius.only(
                          bottomLeft: Radius.circular(0),
                          bottomRight: Radius.circular(0),
                          topLeft: Radius.circular(18),
                          topRight: Radius.circular(18),
                        ),
                      ),
                      child: Container(
                        decoration: BoxDecoration(
                          color: Colors.transparent,
                        ),
                        child: Padding(
                          padding:
                              EdgeInsetsDirectional.fromSTEB(22, 20, 22, 0),
                          child: DefaultTabController(
                            length: 2,
                            initialIndex: 0,
                            child: Column(
                              children: [
                                TabBar(
                                  labelColor: FlutterFlowTheme.of(context)
                                      .primaryBtnText,
                                  labelStyle:
                                      FlutterFlowTheme.of(context).bodyText1,
                                  indicatorColor: Color(0xFFB0B0B0),
                                  indicatorWeight: 2,
                                  tabs: [
                                    Tab(
                                      text: FFLocalizations.of(context).getText(
                                        'wv6la93j' /* Sign In */,
                                      ),
                                    ),
                                    Tab(
                                      text: FFLocalizations.of(context).getText(
                                        'qx44qith' /* Sign Up */,
                                      ),
                                    ),
                                  ],
                                ),
                                Expanded(
                                  child: TabBarView(
                                    children: [
                                      Material(
                                        color: Colors.transparent,
                                        elevation: 20,
                                        shape: RoundedRectangleBorder(
                                          borderRadius: BorderRadius.only(
                                            bottomLeft: Radius.circular(0),
                                            bottomRight: Radius.circular(0),
                                            topLeft: Radius.circular(20),
                                            topRight: Radius.circular(20),
                                          ),
                                        ),
                                        child: Container(
                                          decoration: BoxDecoration(
                                            color: Color(0x00FFFFFF),
                                            borderRadius: BorderRadius.only(
                                              bottomLeft: Radius.circular(0),
                                              bottomRight: Radius.circular(0),
                                              topLeft: Radius.circular(20),
                                              topRight: Radius.circular(20),
                                            ),
                                          ),
                                          child: Padding(
                                            padding:
                                                EdgeInsetsDirectional.fromSTEB(
                                                    0, 20, 0, 0),
                                            child: Column(
                                              mainAxisSize: MainAxisSize.max,
                                              mainAxisAlignment:
                                                  MainAxisAlignment.start,
                                              children: [
                                                TextFormField(
                                                  controller:
                                                      textFieldEmailController,
                                                  obscureText: false,
                                                  decoration: InputDecoration(
                                                    hintText:
                                                        FFLocalizations.of(
                                                                context)
                                                            .getText(
                                                      't9ffbz5k' /* Enter Student Your Email */,
                                                    ),
                                                    hintStyle: FlutterFlowTheme
                                                            .of(context)
                                                        .bodyText1
                                                        .override(
                                                          fontFamily:
                                                              'Open Sans',
                                                          color:
                                                              Color(0xFFFCF9F9),
                                                        ),
                                                    enabledBorder:
                                                        OutlineInputBorder(
                                                      borderSide: BorderSide(
                                                        color:
                                                            FlutterFlowTheme.of(
                                                                    context)
                                                                .campusGrey,
                                                        width: 1,
                                                      ),
                                                      borderRadius:
                                                          BorderRadius.circular(
                                                              4),
                                                    ),
                                                    focusedBorder:
                                                        OutlineInputBorder(
                                                      borderSide: BorderSide(
                                                        color:
                                                            FlutterFlowTheme.of(
                                                                    context)
                                                                .campusGrey,
                                                        width: 1,
                                                      ),
                                                      borderRadius:
                                                          BorderRadius.circular(
                                                              4),
                                                    ),
                                                    contentPadding:
                                                        EdgeInsetsDirectional
                                                            .fromSTEB(
                                                                20, 20, 20, 20),
                                                    prefixIcon: Icon(
                                                      Icons.alternate_email,
                                                      color:
                                                          FlutterFlowTheme.of(
                                                                  context)
                                                              .primaryBtnText,
                                                      size: 20,
                                                    ),
                                                  ),
                                                  style: FlutterFlowTheme.of(
                                                          context)
                                                      .bodyText1
                                                      .override(
                                                        fontFamily: 'Open Sans',
                                                        color:
                                                            FlutterFlowTheme.of(
                                                                    context)
                                                                .primaryBtnText,
                                                      ),
                                                  keyboardType: TextInputType
                                                      .emailAddress,
                                                ),
                                                Padding(
                                                  padding: EdgeInsetsDirectional
                                                      .fromSTEB(0, 22, 0, 0),
                                                  child: TextFormField(
                                                    controller:
                                                        textFieldPassController,
                                                    obscureText:
                                                        !textFieldPassVisibility,
                                                    decoration: InputDecoration(
                                                      hintText:
                                                          FFLocalizations.of(
                                                                  context)
                                                              .getText(
                                                        'n0uctbe1' /* Enter Your Password */,
                                                      ),
                                                      hintStyle:
                                                          FlutterFlowTheme.of(
                                                                  context)
                                                              .bodyText1
                                                              .override(
                                                                fontFamily:
                                                                    'Open Sans',
                                                                color: Color(
                                                                    0xFFFCF9F9),
                                                              ),
                                                      enabledBorder:
                                                          OutlineInputBorder(
                                                        borderSide: BorderSide(
                                                          color: FlutterFlowTheme
                                                                  .of(context)
                                                              .campusGrey,
                                                          width: 1,
                                                        ),
                                                        borderRadius:
                                                            BorderRadius
                                                                .circular(4),
                                                      ),
                                                      focusedBorder:
                                                          OutlineInputBorder(
                                                        borderSide: BorderSide(
                                                          color: FlutterFlowTheme
                                                                  .of(context)
                                                              .campusGrey,
                                                          width: 1,
                                                        ),
                                                        borderRadius:
                                                            BorderRadius
                                                                .circular(4),
                                                      ),
                                                      contentPadding:
                                                          EdgeInsetsDirectional
                                                              .fromSTEB(20, 20,
                                                                  20, 20),
                                                      prefixIcon: Icon(
                                                        FFIcons.klock,
                                                        color:
                                                            FlutterFlowTheme.of(
                                                                    context)
                                                                .primaryBtnText,
                                                        size: 20,
                                                      ),
                                                      suffixIcon: InkWell(
                                                        onTap: () => setState(
                                                          () => textFieldPassVisibility =
                                                              !textFieldPassVisibility,
                                                        ),
                                                        focusNode: FocusNode(
                                                            skipTraversal:
                                                                true),
                                                        child: Icon(
                                                          textFieldPassVisibility
                                                              ? Icons
                                                                  .visibility_outlined
                                                              : Icons
                                                                  .visibility_off_outlined,
                                                          color: FlutterFlowTheme
                                                                  .of(context)
                                                              .primaryBtnText,
                                                          size: 18,
                                                        ),
                                                      ),
                                                    ),
                                                    style: FlutterFlowTheme.of(
                                                            context)
                                                        .bodyText1
                                                        .override(
                                                          fontFamily:
                                                              'Open Sans',
                                                          color: FlutterFlowTheme
                                                                  .of(context)
                                                              .primaryBtnText,
                                                        ),
                                                    keyboardType: TextInputType
                                                        .emailAddress,
                                                  ),
                                                ),
                                                Padding(
                                                  padding: EdgeInsetsDirectional
                                                      .fromSTEB(25, 30, 25, 0),
                                                  child: FFButtonWidget(
                                                    onPressed: () async {
                                                      logFirebaseEvent(
                                                          'LOGIN_CAMPUS_SIGN_IN_BTN_ON_TAP');
                                                      logFirebaseEvent(
                                                          'Button_Auth');
                                                      GoRouter.of(context)
                                                          .prepareAuthEvent();

                                                      final user =
                                                          await signInWithEmail(
                                                        context,
                                                        textFieldEmailController!
                                                            .text,
                                                        textFieldPassController!
                                                            .text,
                                                      );
                                                      if (user == null) {
                                                        return;
                                                      }

                                                      context.goNamedAuth(
                                                          'homePage', mounted);
                                                    },
                                                    text: FFLocalizations.of(
                                                            context)
                                                        .getText(
                                                      'jwfek3mr' /* Sign In */,
                                                    ),
                                                    options: FFButtonOptions(
                                                      width: double.infinity,
                                                      height: 55,
                                                      color:
                                                          FlutterFlowTheme.of(
                                                                  context)
                                                              .primaryColor,
                                                      textStyle:
                                                          FlutterFlowTheme.of(
                                                                  context)
                                                              .subtitle2
                                                              .override(
                                                                fontFamily:
                                                                    'Open Sans',
                                                                color: Colors
                                                                    .white,
                                                              ),
                                                      elevation: 40,
                                                      borderSide: BorderSide(
                                                        color:
                                                            Colors.transparent,
                                                        width: 1,
                                                      ),
                                                      borderRadius:
                                                          BorderRadius.circular(
                                                              12),
                                                    ),
                                                  ),
                                                ),
                                                Padding(
                                                  padding: EdgeInsetsDirectional
                                                      .fromSTEB(0, 20, 0, 0),
                                                  child: InkWell(
                                                    onTap: () async {
                                                      logFirebaseEvent(
                                                          'LOGIN_CAMPUS_Text_011ghbrt_ON_TAP');
                                                      logFirebaseEvent(
                                                          'Text_Auth');
                                                      if (textFieldEmailController!
                                                          .text.isEmpty) {
                                                        ScaffoldMessenger.of(
                                                                context)
                                                            .showSnackBar(
                                                          SnackBar(
                                                            content: Text(
                                                              'Email required!',
                                                            ),
                                                          ),
                                                        );
                                                        return;
                                                      }
                                                      await resetPassword(
                                                        email:
                                                            textFieldEmailController!
                                                                .text,
                                                        context: context,
                                                      );
                                                    },
                                                    child: Text(
                                                      FFLocalizations.of(
                                                              context)
                                                          .getText(
                                                        'adnmfwgw' /* Forgot Password? */,
                                                      ),
                                                      style:
                                                          FlutterFlowTheme.of(
                                                                  context)
                                                              .bodyText1
                                                              .override(
                                                                fontFamily:
                                                                    'Open Sans',
                                                                color: FlutterFlowTheme.of(
                                                                        context)
                                                                    .primaryBtnText,
                                                                fontWeight:
                                                                    FontWeight
                                                                        .w500,
                                                              ),
                                                    ),
                                                  ),
                                                ),
                                              ],
                                            ),
                                          ),
                                        ),
                                      ),
                                      Column(
                                        mainAxisSize: MainAxisSize.max,
                                        children: [
                                          Padding(
                                            padding:
                                                EdgeInsetsDirectional.fromSTEB(
                                                    0, 50, 0, 0),
                                            child: TextFormField(
                                              controller:
                                                  textFieldEmailResetController,
                                              onChanged: (_) =>
                                                  EasyDebounce.debounce(
                                                'textFieldEmailResetController',
                                                Duration(milliseconds: 2000),
                                                () => setState(() {}),
                                              ),
                                              obscureText: false,
                                              decoration: InputDecoration(
                                                hintText:
                                                    FFLocalizations.of(context)
                                                        .getText(
                                                  'iljy0jtl' /* Enter Student Your Email */,
                                                ),
                                                hintStyle: FlutterFlowTheme.of(
                                                        context)
                                                    .bodyText1
                                                    .override(
                                                      fontFamily: 'Open Sans',
                                                      color: Color(0xFFFCF9F9),
                                                    ),
                                                enabledBorder:
                                                    OutlineInputBorder(
                                                  borderSide: BorderSide(
                                                    color: FlutterFlowTheme.of(
                                                            context)
                                                        .campusGrey,
                                                    width: 1,
                                                  ),
                                                  borderRadius:
                                                      BorderRadius.circular(4),
                                                ),
                                                focusedBorder:
                                                    OutlineInputBorder(
                                                  borderSide: BorderSide(
                                                    color: FlutterFlowTheme.of(
                                                            context)
                                                        .campusGrey,
                                                    width: 1,
                                                  ),
                                                  borderRadius:
                                                      BorderRadius.circular(4),
                                                ),
                                                contentPadding:
                                                    EdgeInsetsDirectional
                                                        .fromSTEB(
                                                            25, 25, 25, 25),
                                                prefixIcon: Icon(
                                                  Icons.alternate_email,
                                                  color: FlutterFlowTheme.of(
                                                          context)
                                                      .primaryBtnText,
                                                  size: 20,
                                                ),
                                              ),
                                              style:
                                                  FlutterFlowTheme.of(context)
                                                      .bodyText1
                                                      .override(
                                                        fontFamily: 'Open Sans',
                                                        color:
                                                            FlutterFlowTheme.of(
                                                                    context)
                                                                .primaryBtnText,
                                                      ),
                                              keyboardType:
                                                  TextInputType.emailAddress,
                                            ),
                                          ),
                                          Padding(
                                            padding:
                                                EdgeInsetsDirectional.fromSTEB(
                                                    25, 30, 25, 0),
                                            child: FFButtonWidget(
                                              onPressed: () async {
                                                logFirebaseEvent(
                                                    'LOGIN_CAMPUS_CREATE_ACCOUNT_BTN_ON_TAP');
                                                logFirebaseEvent('Button_Auth');
                                                if (textFieldEmailResetController!
                                                    .text.isEmpty) {
                                                  ScaffoldMessenger.of(context)
                                                      .showSnackBar(
                                                    SnackBar(
                                                      content: Text(
                                                        'Email required!',
                                                      ),
                                                    ),
                                                  );
                                                  return;
                                                }
                                                await resetPassword(
                                                  email:
                                                      textFieldEmailResetController!
                                                          .text,
                                                  context: context,
                                                );
                                              },
                                              text: FFLocalizations.of(context)
                                                  .getText(
                                                '2mhmng0f' /* Create account */,
                                              ),
                                              options: FFButtonOptions(
                                                width: double.infinity,
                                                height: 50,
                                                color:
                                                    FlutterFlowTheme.of(context)
                                                        .primaryColor,
                                                textStyle:
                                                    FlutterFlowTheme.of(context)
                                                        .subtitle2
                                                        .override(
                                                          fontFamily:
                                                              'Open Sans',
                                                          color: Colors.white,
                                                        ),
                                                elevation: 50,
                                                borderSide: BorderSide(
                                                  color: Colors.transparent,
                                                  width: 1,
                                                ),
                                                borderRadius:
                                                    BorderRadius.circular(12),
                                              ),
                                            ),
                                          ),
                                        ],
                                      ),
                                    ],
                                  ),
                                ),
                              ],
                            ),
                          ),
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
    );
  }
}
