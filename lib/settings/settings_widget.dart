import '../auth/auth_util.dart';
import '../components/bottom_nav_bar_widget.dart';
import '../components/dark_mode_widget.dart';
import '../components/language_widget.dart';
import '../components/side_nav_widget.dart';
import '../flutter_flow/flutter_flow_theme.dart';
import '../flutter_flow/flutter_flow_util.dart';
import '../flutter_flow/custom_functions.dart' as functions;
import 'package:auto_size_text/auto_size_text.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';

class SettingsWidget extends StatefulWidget {
  const SettingsWidget({Key? key}) : super(key: key);

  @override
  _SettingsWidgetState createState() => _SettingsWidgetState();
}

class _SettingsWidgetState extends State<SettingsWidget> {
  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    logFirebaseEvent('screen_view', parameters: {'screen_name': 'settings'});
    WidgetsBinding.instance.addPostFrameCallback((_) => setState(() {}));
  }

  @override
  Widget build(BuildContext context) {
    return Title(
        title: 'settings',
        color: FlutterFlowTheme.of(context).primaryColor,
        child: Scaffold(
          key: scaffoldKey,
          backgroundColor: FlutterFlowTheme.of(context).primaryBackground,
          body: GestureDetector(
            onTap: () => FocusScope.of(context).unfocus(),
            child: Stack(
              children: [
                Row(
                  mainAxisSize: MainAxisSize.max,
                  children: [
                    if (responsiveVisibility(
                      context: context,
                      phone: false,
                    ))
                      SideNavWidget(
                        nav1Color: FlutterFlowTheme.of(context).primaryText,
                        nav2Color: FlutterFlowTheme.of(context).primaryText,
                        nav3Color: FlutterFlowTheme.of(context).primaryText,
                        nav4Color: FlutterFlowTheme.of(context).primaryText,
                        nav5Color: FlutterFlowTheme.of(context).primaryText,
                        nav6Color: Color(0xFFC8360E),
                      ),
                    Expanded(
                      child: Padding(
                        padding: EdgeInsetsDirectional.fromSTEB(0, 10, 0, 80),
                        child: SingleChildScrollView(
                          child: Column(
                            mainAxisSize: MainAxisSize.max,
                            children: [
                              if (!isWeb)
                                Padding(
                                  padding: EdgeInsetsDirectional.fromSTEB(
                                      0, 60, 0, 0),
                                  child: Row(
                                    mainAxisSize: MainAxisSize.max,
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      Text(
                                        FFLocalizations.of(context).getText(
                                          '455h835o' /* Settings */,
                                        ),
                                        style: FlutterFlowTheme.of(context)
                                            .title2
                                            .override(
                                              fontFamily: 'Open Sans',
                                              color:
                                                  FlutterFlowTheme.of(context)
                                                      .primaryText,
                                              fontSize: 18,
                                              fontWeight: FontWeight.w600,
                                            ),
                                      ),
                                    ],
                                  ),
                                ),
                              Padding(
                                padding: EdgeInsetsDirectional.fromSTEB(
                                    12, 32, 12, 10),
                                child: Container(
                                  width: MediaQuery.of(context).size.width,
                                  decoration: BoxDecoration(
                                    color: FlutterFlowTheme.of(context)
                                        .secondaryBackground,
                                    borderRadius: BorderRadius.circular(18),
                                    border: Border.all(
                                      color: Colors.transparent,
                                      width: 1,
                                    ),
                                  ),
                                  child: Column(
                                    mainAxisSize: MainAxisSize.max,
                                    children: [
                                      Padding(
                                        padding: EdgeInsetsDirectional.fromSTEB(
                                            18, 15, 0, 0),
                                        child: Row(
                                          mainAxisSize: MainAxisSize.max,
                                          mainAxisAlignment:
                                              MainAxisAlignment.start,
                                          crossAxisAlignment:
                                              CrossAxisAlignment.center,
                                          children: [
                                            Align(
                                              alignment:
                                                  AlignmentDirectional(0, 0),
                                              child: Material(
                                                color: Colors.transparent,
                                                elevation: 1,
                                                shape: const CircleBorder(),
                                                child: Container(
                                                  width: 70,
                                                  height: 70,
                                                  decoration: BoxDecoration(
                                                    color: Color(0x00FFFFFF),
                                                    shape: BoxShape.circle,
                                                    border: Border.all(
                                                      color: Color(0xFF4E39F9),
                                                      width: 4,
                                                    ),
                                                  ),
                                                  child: Align(
                                                    alignment:
                                                        AlignmentDirectional(
                                                            0, 0),
                                                    child: AuthUserStreamWidget(
                                                      child: Text(
                                                        functions.initials(
                                                            currentUserDisplayName)!,
                                                        style:
                                                            FlutterFlowTheme.of(
                                                                    context)
                                                                .bodyText1
                                                                .override(
                                                                  fontFamily:
                                                                      'Open Sans',
                                                                  color: FlutterFlowTheme.of(
                                                                          context)
                                                                      .primaryText,
                                                                  fontSize: 30,
                                                                  fontWeight:
                                                                      FontWeight
                                                                          .w800,
                                                                ),
                                                      ),
                                                    ),
                                                  ),
                                                ),
                                              ),
                                            ),
                                            Expanded(
                                              child: Padding(
                                                padding: EdgeInsetsDirectional
                                                    .fromSTEB(12, 0, 12, 0),
                                                child: Column(
                                                  mainAxisSize:
                                                      MainAxisSize.max,
                                                  crossAxisAlignment:
                                                      CrossAxisAlignment.start,
                                                  children: [
                                                    AuthUserStreamWidget(
                                                      child: AutoSizeText(
                                                        currentUserDisplayName
                                                            .maybeHandleOverflow(
                                                          maxChars: 14,
                                                          replacement: '…',
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
                                                                      .primaryText,
                                                                  fontSize: 22,
                                                                  fontWeight:
                                                                      FontWeight
                                                                          .bold,
                                                                ),
                                                      ),
                                                    ),
                                                    Padding(
                                                      padding:
                                                          EdgeInsetsDirectional
                                                              .fromSTEB(
                                                                  0, 0, 15, 0),
                                                      child: Row(
                                                        mainAxisSize:
                                                            MainAxisSize.min,
                                                        crossAxisAlignment:
                                                            CrossAxisAlignment
                                                                .center,
                                                        children: [
                                                          AutoSizeText(
                                                            currentUserEmail,
                                                            style: FlutterFlowTheme
                                                                    .of(context)
                                                                .bodyText1
                                                                .override(
                                                                  fontFamily:
                                                                      'Open Sans',
                                                                  color: FlutterFlowTheme.of(
                                                                          context)
                                                                      .primaryText,
                                                                  fontSize: 12,
                                                                  fontWeight:
                                                                      FontWeight
                                                                          .w500,
                                                                ),
                                                          ),
                                                          Padding(
                                                            padding:
                                                                EdgeInsetsDirectional
                                                                    .fromSTEB(
                                                                        5,
                                                                        0,
                                                                        0,
                                                                        0),
                                                            child: Icon(
                                                              Icons.verified,
                                                              color: Color(
                                                                  0xFF1079FF),
                                                              size: 14,
                                                            ),
                                                          ),
                                                        ],
                                                      ),
                                                    ),
                                                  ],
                                                ),
                                              ),
                                            ),
                                          ],
                                        ),
                                      ),
                                      Padding(
                                        padding: EdgeInsetsDirectional.fromSTEB(
                                            70, 0, 50, 0),
                                        child: Container(
                                          width:
                                              MediaQuery.of(context).size.width,
                                          height: 0.2,
                                          decoration: BoxDecoration(
                                            color: Color(0x81464749),
                                            borderRadius:
                                                BorderRadius.circular(0),
                                          ),
                                        ),
                                      ),
                                      Padding(
                                        padding: EdgeInsetsDirectional.fromSTEB(
                                            0, 10, 10, 10),
                                        child: InkWell(
                                          onTap: () async {
                                            logFirebaseEvent(
                                                'SETTINGS_PAGE_ListTile_9i9ep00k_ON_TAP');
                                            logFirebaseEvent(
                                                'ListTile_Navigate-To');
                                            context.pushNamed('profile');
                                          },
                                          child: ListTile(
                                            leading: Icon(
                                              FFIcons.kic25,
                                              color:
                                                  FlutterFlowTheme.of(context)
                                                      .primaryText,
                                              size: 20,
                                            ),
                                            title: Text(
                                              FFLocalizations.of(context)
                                                  .getText(
                                                'do7rbv9c' /* Account */,
                                              ),
                                              style:
                                                  FlutterFlowTheme.of(context)
                                                      .title3
                                                      .override(
                                                        fontFamily: 'Open Sans',
                                                        color:
                                                            FlutterFlowTheme.of(
                                                                    context)
                                                                .primaryText,
                                                        fontSize: 18,
                                                        fontWeight:
                                                            FontWeight.normal,
                                                      ),
                                            ),
                                            trailing: Icon(
                                              Icons.arrow_forward_ios,
                                              color:
                                                  FlutterFlowTheme.of(context)
                                                      .primaryText,
                                              size: 16,
                                            ),
                                            tileColor: Color(0x00F5F5F5),
                                            dense: true,
                                            shape: RoundedRectangleBorder(
                                              borderRadius:
                                                  BorderRadius.circular(18),
                                            ),
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                              Padding(
                                padding: EdgeInsetsDirectional.fromSTEB(
                                    12, 12, 12, 12),
                                child: Container(
                                  width: MediaQuery.of(context).size.width,
                                  decoration: BoxDecoration(
                                    color: FlutterFlowTheme.of(context)
                                        .secondaryBackground,
                                    borderRadius: BorderRadius.circular(18),
                                    border: Border.all(
                                      color: Colors.transparent,
                                      width: 1,
                                    ),
                                  ),
                                  child: Column(
                                    mainAxisSize: MainAxisSize.max,
                                    children: [
                                      Padding(
                                        padding: EdgeInsetsDirectional.fromSTEB(
                                            0, 10, 10, 0),
                                        child: InkWell(
                                          onTap: () async {
                                            logFirebaseEvent(
                                                'SETTINGS_PAGE_ListTile_0l885jt1_ON_TAP');
                                            logFirebaseEvent(
                                                'ListTile_Navigate-To');
                                            context.pushNamed('messages');
                                          },
                                          child: ListTile(
                                            leading: Icon(
                                              FFIcons.kic27,
                                              color:
                                                  FlutterFlowTheme.of(context)
                                                      .primaryText,
                                              size: 22,
                                            ),
                                            title: Text(
                                              FFLocalizations.of(context)
                                                  .getText(
                                                '4uz83n0n' /* Messages */,
                                              ),
                                              style:
                                                  FlutterFlowTheme.of(context)
                                                      .title3
                                                      .override(
                                                        fontFamily: 'Open Sans',
                                                        color:
                                                            FlutterFlowTheme.of(
                                                                    context)
                                                                .primaryText,
                                                        fontSize: 18,
                                                        fontWeight:
                                                            FontWeight.normal,
                                                      ),
                                            ),
                                            trailing: Icon(
                                              Icons.arrow_forward_ios,
                                              color:
                                                  FlutterFlowTheme.of(context)
                                                      .primaryText,
                                              size: 16,
                                            ),
                                            tileColor: Color(0x00F5F5F5),
                                            dense: true,
                                          ),
                                        ),
                                      ),
                                      Padding(
                                        padding: EdgeInsetsDirectional.fromSTEB(
                                            50, 0, 50, 0),
                                        child: Container(
                                          width:
                                              MediaQuery.of(context).size.width,
                                          height: 0.2,
                                          decoration: BoxDecoration(
                                            color: Color(0x81464749),
                                          ),
                                        ),
                                      ),
                                      Padding(
                                        padding: EdgeInsetsDirectional.fromSTEB(
                                            0, 5, 10, 10),
                                        child: InkWell(
                                          onTap: () async {
                                            logFirebaseEvent(
                                                'SETTINGS_PAGE_ListTile_v592nnry_ON_TAP');
                                            logFirebaseEvent(
                                                'ListTile_Bottom-Sheet');
                                            await showModalBottomSheet(
                                              isScrollControlled: true,
                                              backgroundColor:
                                                  Colors.transparent,
                                              barrierColor: Colors.transparent,
                                              context: context,
                                              builder: (context) {
                                                return Padding(
                                                  padding:
                                                      MediaQuery.of(context)
                                                          .viewInsets,
                                                  child: DarkModeWidget(),
                                                );
                                              },
                                            );
                                          },
                                          child: ListTile(
                                            leading: Icon(
                                              Icons.color_lens,
                                              color:
                                                  FlutterFlowTheme.of(context)
                                                      .primaryText,
                                              size: 28,
                                            ),
                                            title: Text(
                                              FFLocalizations.of(context)
                                                  .getText(
                                                'h9k66p5d' /* Appearance */,
                                              ),
                                              style:
                                                  FlutterFlowTheme.of(context)
                                                      .title3
                                                      .override(
                                                        fontFamily: 'Open Sans',
                                                        color:
                                                            FlutterFlowTheme.of(
                                                                    context)
                                                                .primaryText,
                                                        fontSize: 18,
                                                        fontWeight:
                                                            FontWeight.normal,
                                                      ),
                                            ),
                                            trailing: Icon(
                                              Icons.arrow_forward_ios,
                                              color:
                                                  FlutterFlowTheme.of(context)
                                                      .primaryText,
                                              size: 16,
                                            ),
                                            tileColor: Color(0x00F5F5F5),
                                            dense: true,
                                            shape: RoundedRectangleBorder(
                                              borderRadius:
                                                  BorderRadius.circular(18),
                                            ),
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                              Padding(
                                padding: EdgeInsetsDirectional.fromSTEB(
                                    12, 12, 12, 12),
                                child: Container(
                                  width: MediaQuery.of(context).size.width,
                                  decoration: BoxDecoration(
                                    color: FlutterFlowTheme.of(context)
                                        .secondaryBackground,
                                    borderRadius: BorderRadius.circular(18),
                                    border: Border.all(
                                      color: Colors.transparent,
                                      width: 1,
                                    ),
                                  ),
                                  child: Column(
                                    mainAxisSize: MainAxisSize.max,
                                    children: [
                                      Padding(
                                        padding: EdgeInsetsDirectional.fromSTEB(
                                            0, 10, 10, 0),
                                        child: InkWell(
                                          onTap: () async {
                                            logFirebaseEvent(
                                                'SETTINGS_PAGE_ListTile_78jtllx6_ON_TAP');
                                            logFirebaseEvent(
                                                'ListTile_Show-Snack-Bar');
                                            ScaffoldMessenger.of(context)
                                                .showSnackBar(
                                              SnackBar(
                                                content: Text(
                                                  'Currently unavailable',
                                                  style: TextStyle(
                                                    color: FlutterFlowTheme.of(
                                                            context)
                                                        .primaryBackground,
                                                  ),
                                                ),
                                                duration: Duration(
                                                    milliseconds: 4000),
                                                backgroundColor:
                                                    FlutterFlowTheme.of(context)
                                                        .primaryText,
                                              ),
                                            );
                                          },
                                          child: ListTile(
                                            leading: Icon(
                                              FFIcons.kchecklist,
                                              color:
                                                  FlutterFlowTheme.of(context)
                                                      .primaryText,
                                              size: 24,
                                            ),
                                            title: Text(
                                              FFLocalizations.of(context)
                                                  .getText(
                                                '29eie85n' /* Checklist */,
                                              ),
                                              style:
                                                  FlutterFlowTheme.of(context)
                                                      .title3
                                                      .override(
                                                        fontFamily: 'Open Sans',
                                                        color:
                                                            FlutterFlowTheme.of(
                                                                    context)
                                                                .primaryText,
                                                        fontSize: 18,
                                                        fontWeight:
                                                            FontWeight.normal,
                                                      ),
                                            ),
                                            trailing: Icon(
                                              Icons.arrow_forward_ios,
                                              color:
                                                  FlutterFlowTheme.of(context)
                                                      .primaryText,
                                              size: 16,
                                            ),
                                            tileColor: Color(0x00F5F5F5),
                                            dense: true,
                                            shape: RoundedRectangleBorder(
                                              borderRadius:
                                                  BorderRadius.circular(18),
                                            ),
                                          ),
                                        ),
                                      ),
                                      Padding(
                                        padding: EdgeInsetsDirectional.fromSTEB(
                                            50, 0, 50, 0),
                                        child: Container(
                                          width:
                                              MediaQuery.of(context).size.width,
                                          height: 0.2,
                                          decoration: BoxDecoration(
                                            color: Color(0x81464749),
                                          ),
                                        ),
                                      ),
                                      Padding(
                                        padding: EdgeInsetsDirectional.fromSTEB(
                                            0, 5, 10, 10),
                                        child: InkWell(
                                          onTap: () async {
                                            logFirebaseEvent(
                                                'SETTINGS_PAGE_ListTile_99g5xqtx_ON_TAP');
                                            logFirebaseEvent(
                                                'ListTile_Navigate-To');
                                            context.pushNamed('notifications');
                                          },
                                          child: ListTile(
                                            leading: Icon(
                                              FFIcons.kic15,
                                              color:
                                                  FlutterFlowTheme.of(context)
                                                      .primaryText,
                                              size: 22,
                                            ),
                                            title: Text(
                                              FFLocalizations.of(context)
                                                  .getText(
                                                '8rm2joof' /* Notifications */,
                                              ),
                                              style:
                                                  FlutterFlowTheme.of(context)
                                                      .title3
                                                      .override(
                                                        fontFamily: 'Open Sans',
                                                        color:
                                                            FlutterFlowTheme.of(
                                                                    context)
                                                                .primaryText,
                                                        fontSize: 18,
                                                        fontWeight:
                                                            FontWeight.normal,
                                                      ),
                                            ),
                                            trailing: Icon(
                                              Icons.arrow_forward_ios,
                                              color:
                                                  FlutterFlowTheme.of(context)
                                                      .primaryText,
                                              size: 16,
                                            ),
                                            tileColor: Color(0x00F5F5F5),
                                            dense: true,
                                            shape: RoundedRectangleBorder(
                                              borderRadius:
                                                  BorderRadius.circular(18),
                                            ),
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                              Padding(
                                padding: EdgeInsetsDirectional.fromSTEB(
                                    12, 12, 12, 30),
                                child: Container(
                                  width: MediaQuery.of(context).size.width,
                                  decoration: BoxDecoration(
                                    color: FlutterFlowTheme.of(context)
                                        .secondaryBackground,
                                    borderRadius: BorderRadius.circular(18),
                                    border: Border.all(
                                      color: Colors.transparent,
                                      width: 1,
                                    ),
                                  ),
                                  child: Column(
                                    mainAxisSize: MainAxisSize.max,
                                    children: [
                                      Padding(
                                        padding: EdgeInsetsDirectional.fromSTEB(
                                            0, 10, 10, 0),
                                        child: InkWell(
                                          onTap: () async {
                                            logFirebaseEvent(
                                                'SETTINGS_PAGE_ListTile_nlgaw19f_ON_TAP');
                                            logFirebaseEvent(
                                                'ListTile_Bottom-Sheet');
                                            await showModalBottomSheet(
                                              isScrollControlled: true,
                                              backgroundColor:
                                                  Colors.transparent,
                                              context: context,
                                              builder: (context) {
                                                return Padding(
                                                  padding:
                                                      MediaQuery.of(context)
                                                          .viewInsets,
                                                  child: LanguageWidget(),
                                                );
                                              },
                                            );
                                          },
                                          child: ListTile(
                                            leading: FaIcon(
                                              FontAwesomeIcons.language,
                                              color:
                                                  FlutterFlowTheme.of(context)
                                                      .primaryText,
                                              size: 24,
                                            ),
                                            title: Text(
                                              FFLocalizations.of(context)
                                                  .getText(
                                                'gyeyp322' /* Language */,
                                              ),
                                              style:
                                                  FlutterFlowTheme.of(context)
                                                      .title3
                                                      .override(
                                                        fontFamily: 'Open Sans',
                                                        color:
                                                            FlutterFlowTheme.of(
                                                                    context)
                                                                .primaryText,
                                                        fontSize: 18,
                                                        fontWeight:
                                                            FontWeight.normal,
                                                      ),
                                            ),
                                            trailing: Icon(
                                              Icons.arrow_forward_ios,
                                              color:
                                                  FlutterFlowTheme.of(context)
                                                      .primaryText,
                                              size: 16,
                                            ),
                                            tileColor: Color(0x00F5F5F5),
                                            dense: true,
                                            shape: RoundedRectangleBorder(
                                              borderRadius:
                                                  BorderRadius.circular(18),
                                            ),
                                          ),
                                        ),
                                      ),
                                      Padding(
                                        padding: EdgeInsetsDirectional.fromSTEB(
                                            50, 0, 50, 0),
                                        child: Container(
                                          width:
                                              MediaQuery.of(context).size.width,
                                          height: 0.2,
                                          decoration: BoxDecoration(
                                            color: Color(0x81464749),
                                          ),
                                        ),
                                      ),
                                      Padding(
                                        padding: EdgeInsetsDirectional.fromSTEB(
                                            0, 10, 10, 0),
                                        child: InkWell(
                                          onTap: () async {
                                            logFirebaseEvent(
                                                'SETTINGS_PAGE_ListTile_nx2yecgd_ON_TAP');
                                            logFirebaseEvent(
                                                'ListTile_Launch-U-R-L');
                                            await launchURL(
                                                'https://campusafrica.co.za/contact-us/');
                                          },
                                          child: ListTile(
                                            leading: Icon(
                                              FFIcons.kic7,
                                              color:
                                                  FlutterFlowTheme.of(context)
                                                      .primaryText,
                                              size: 24,
                                            ),
                                            title: Text(
                                              FFLocalizations.of(context)
                                                  .getText(
                                                'clle2j5c' /* About us */,
                                              ),
                                              style:
                                                  FlutterFlowTheme.of(context)
                                                      .title3
                                                      .override(
                                                        fontFamily: 'Open Sans',
                                                        color:
                                                            FlutterFlowTheme.of(
                                                                    context)
                                                                .primaryText,
                                                        fontSize: 18,
                                                        fontWeight:
                                                            FontWeight.normal,
                                                      ),
                                            ),
                                            trailing: Icon(
                                              Icons.arrow_forward_ios,
                                              color:
                                                  FlutterFlowTheme.of(context)
                                                      .primaryText,
                                              size: 16,
                                            ),
                                            tileColor: Color(0x00F5F5F5),
                                            dense: true,
                                            shape: RoundedRectangleBorder(
                                              borderRadius:
                                                  BorderRadius.circular(18),
                                            ),
                                          ),
                                        ),
                                      ),
                                      Padding(
                                        padding: EdgeInsetsDirectional.fromSTEB(
                                            50, 0, 50, 0),
                                        child: Container(
                                          width:
                                              MediaQuery.of(context).size.width,
                                          height: 0.2,
                                          decoration: BoxDecoration(
                                            color: Color(0x81464749),
                                          ),
                                        ),
                                      ),
                                      Padding(
                                        padding: EdgeInsetsDirectional.fromSTEB(
                                            0, 5, 10, 20),
                                        child: InkWell(
                                          onTap: () async {
                                            logFirebaseEvent(
                                                'SETTINGS_PAGE_ListTile_iri0n9wp_ON_TAP');
                                            logFirebaseEvent('ListTile_Auth');
                                            GoRouter.of(context)
                                                .prepareAuthEvent();
                                            await signOut();
                                            context.goNamedAuth(
                                                'onboarding', mounted);
                                          },
                                          child: ListTile(
                                            leading: FaIcon(
                                              FontAwesomeIcons.expeditedssl,
                                              color:
                                                  FlutterFlowTheme.of(context)
                                                      .primaryText,
                                              size: 26,
                                            ),
                                            title: Text(
                                              FFLocalizations.of(context)
                                                  .getText(
                                                'frmn718q' /* Logout */,
                                              ),
                                              style:
                                                  FlutterFlowTheme.of(context)
                                                      .title3
                                                      .override(
                                                        fontFamily: 'Open Sans',
                                                        color:
                                                            FlutterFlowTheme.of(
                                                                    context)
                                                                .primaryText,
                                                        fontSize: 18,
                                                        fontWeight:
                                                            FontWeight.normal,
                                                      ),
                                            ),
                                            trailing: Icon(
                                              Icons.arrow_forward_ios,
                                              color:
                                                  FlutterFlowTheme.of(context)
                                                      .primaryText,
                                              size: 16,
                                            ),
                                            tileColor: Color(0x00F5F5F5),
                                            dense: true,
                                            shape: RoundedRectangleBorder(
                                              borderRadius:
                                                  BorderRadius.circular(18),
                                            ),
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
                      ),
                    ),
                  ],
                ),
                if (responsiveVisibility(
                  context: context,
                  tablet: false,
                  tabletLandscape: false,
                  desktop: false,
                ))
                  BottomNavBarWidget(
                    homeColor: FlutterFlowTheme.of(context).primaryText,
                    messageColor: FlutterFlowTheme.of(context).primaryText,
                    notificationColor: FlutterFlowTheme.of(context).primaryText,
                    settingsColor: Color(0xFFC8360E),
                  ),
              ],
            ),
          ),
        ));
  }
}
