import '../auth/auth_util.dart';
import '../backend/backend.dart';
import '../backend/push_notifications/push_notifications_util.dart';
import '../components/bottom_nav_bar_widget.dart';
import '../components/side_nav_widget.dart';
import '../flutter_flow/flutter_flow_calendar.dart';
import '../flutter_flow/flutter_flow_theme.dart';
import '../flutter_flow/flutter_flow_util.dart';
import 'dart:async';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:flutter_slidable/flutter_slidable.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';

class ViewWidget extends StatefulWidget {
  const ViewWidget({
    Key? key,
    this.completeTemp,
  }) : super(key: key);

  final double? completeTemp;

  @override
  _ViewWidgetState createState() => _ViewWidgetState();
}

class _ViewWidgetState extends State<ViewWidget> {
  Completer<List<MaintenanceRecord>>? _firestoreRequestCompleter1;
  Completer<List<MaintenanceRecord>>? _firestoreRequestCompleter4;
  Completer<List<MaintenanceRecord>>? _firestoreRequestCompleter2;
  Completer<List<MaintenanceRecord>>? _firestoreRequestCompleter3;
  DateTimeRange? calendarSelectedDay;
  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    calendarSelectedDay = DateTimeRange(
      start: DateTime.now().startOfDay,
      end: DateTime.now().endOfDay,
    );
    logFirebaseEvent('screen_view', parameters: {'screen_name': 'view'});
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
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
                    nav2Color: Color(0xFFC8360E),
                    nav3Color: FlutterFlowTheme.of(context).primaryText,
                    nav4Color: FlutterFlowTheme.of(context).primaryText,
                    nav5Color: FlutterFlowTheme.of(context).primaryText,
                    nav6Color: FlutterFlowTheme.of(context).primaryText,
                  ),
                Expanded(
                  child: Align(
                    alignment: AlignmentDirectional(0, 1),
                    child: Column(
                      mainAxisSize: MainAxisSize.max,
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        if (!isWeb)
                          Padding(
                            padding:
                                EdgeInsetsDirectional.fromSTEB(18, 45, 18, 0),
                            child: Column(
                              mainAxisSize: MainAxisSize.max,
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                FlutterFlowCalendar(
                                  color: Color(0xFFFFBA00),
                                  iconColor:
                                      FlutterFlowTheme.of(context).primaryText,
                                  weekFormat: true,
                                  weekStartsMonday: false,
                                  onChange: (DateTimeRange? newSelectedDate) {
                                    setState(() =>
                                        calendarSelectedDay = newSelectedDate);
                                  },
                                  titleStyle: TextStyle(
                                    color: FlutterFlowTheme.of(context)
                                        .primaryText,
                                  ),
                                  dayOfWeekStyle: TextStyle(
                                    color: FlutterFlowTheme.of(context)
                                        .primaryText,
                                  ),
                                  dateStyle: TextStyle(
                                    color: FlutterFlowTheme.of(context)
                                        .secondaryText,
                                  ),
                                  selectedDateStyle: TextStyle(
                                    color: Colors.white,
                                    fontSize: 12,
                                  ),
                                  inactiveDateStyle: TextStyle(
                                    color: FlutterFlowTheme.of(context)
                                        .secondaryText,
                                  ),
                                  locale:
                                      FFLocalizations.of(context).languageCode,
                                ),
                              ],
                            ),
                          ),
                        Expanded(
                          flex: 2,
                          child: Align(
                            alignment: AlignmentDirectional(1, 1),
                            child: Padding(
                              padding:
                                  EdgeInsetsDirectional.fromSTEB(0, 30, 0, 0),
                              child: Container(
                                width: MediaQuery.of(context).size.width,
                                height: double.infinity,
                                decoration: BoxDecoration(
                                  color: FlutterFlowTheme.of(context)
                                      .primaryBackground,
                                  borderRadius: BorderRadius.circular(0),
                                ),
                                child: Align(
                                  alignment: AlignmentDirectional(1, 1),
                                  child: Padding(
                                    padding: EdgeInsetsDirectional.fromSTEB(
                                        0, 10, 0, 0),
                                    child: Column(
                                      mainAxisSize: MainAxisSize.max,
                                      mainAxisAlignment:
                                          MainAxisAlignment.start,
                                      children: [
                                        if (valueOrDefault(
                                                currentUserDocument?.role,
                                                '') ==
                                            'Tenant')
                                          Expanded(
                                            flex: 2,
                                            child: Padding(
                                              padding: EdgeInsetsDirectional
                                                  .fromSTEB(0, 0, 0, 80),
                                              child: AuthUserStreamWidget(
                                                child: DefaultTabController(
                                                  length: 3,
                                                  initialIndex: 0,
                                                  child: Column(
                                                    children: [
                                                      TabBar(
                                                        labelColor:
                                                            FlutterFlowTheme.of(
                                                                    context)
                                                                .primaryText,
                                                        unselectedLabelColor:
                                                            Color(0xFF6E6E6E),
                                                        labelStyle:
                                                            FlutterFlowTheme.of(
                                                                    context)
                                                                .bodyText1,
                                                        indicatorColor:
                                                            FlutterFlowTheme.of(
                                                                    context)
                                                                .primaryText,
                                                        tabs: [
                                                          Tab(
                                                            text: FFLocalizations
                                                                    .of(context)
                                                                .getText(
                                                              'qglikkox' /* Submitted */,
                                                            ),
                                                          ),
                                                          Tab(
                                                            text: FFLocalizations
                                                                    .of(context)
                                                                .getText(
                                                              'pxqyaoc1' /* Pending */,
                                                            ),
                                                          ),
                                                          Tab(
                                                            text: FFLocalizations
                                                                    .of(context)
                                                                .getText(
                                                              'drdmllbk' /* Completed */,
                                                            ),
                                                          ),
                                                        ],
                                                      ),
                                                      Expanded(
                                                        child: TabBarView(
                                                          children: [
                                                            Column(
                                                              mainAxisSize:
                                                                  MainAxisSize
                                                                      .max,
                                                              crossAxisAlignment:
                                                                  CrossAxisAlignment
                                                                      .start,
                                                              children: [
                                                                Padding(
                                                                  padding: EdgeInsetsDirectional
                                                                      .fromSTEB(
                                                                          16,
                                                                          12,
                                                                          16,
                                                                          12),
                                                                  child: Row(
                                                                    mainAxisSize:
                                                                        MainAxisSize
                                                                            .max,
                                                                    children: [
                                                                      Text(
                                                                        FFLocalizations.of(context)
                                                                            .getText(
                                                                          'qh48pw7e' /* Search results */,
                                                                        ),
                                                                        style: FlutterFlowTheme.of(context)
                                                                            .bodyText2,
                                                                      ),
                                                                    ],
                                                                  ),
                                                                ),
                                                                Expanded(
                                                                  child: FutureBuilder<
                                                                      List<
                                                                          MaintenanceRecord>>(
                                                                    future: (_firestoreRequestCompleter4 ??= Completer<
                                                                            List<
                                                                                MaintenanceRecord>>()
                                                                          ..complete(
                                                                              queryMaintenanceRecordOnce(
                                                                            queryBuilder: (maintenanceRecord) =>
                                                                                maintenanceRecord.where('status', isEqualTo: 'Submitted').where('email', isEqualTo: currentUserEmail).orderBy('created_time', descending: true),
                                                                          )))
                                                                        .future,
                                                                    builder:
                                                                        (context,
                                                                            snapshot) {
                                                                      // Customize what your widget looks like when it's loading.
                                                                      if (!snapshot
                                                                          .hasData) {
                                                                        return Center(
                                                                          child:
                                                                              SizedBox(
                                                                            width:
                                                                                60,
                                                                            height:
                                                                                60,
                                                                            child:
                                                                                SpinKitPulse(
                                                                              color: FlutterFlowTheme.of(context).primaryColor,
                                                                              size: 60,
                                                                            ),
                                                                          ),
                                                                        );
                                                                      }
                                                                      List<MaintenanceRecord>
                                                                          listViewSubSTDMaintenanceRecordList =
                                                                          snapshot
                                                                              .data!;
                                                                      if (listViewSubSTDMaintenanceRecordList
                                                                          .isEmpty) {
                                                                        return Center(
                                                                          child:
                                                                              SvgPicture.asset(
                                                                            'assets/images/Theme=Accent,_Content=Results.svg',
                                                                            width:
                                                                                MediaQuery.of(context).size.width * 0.5,
                                                                            fit:
                                                                                BoxFit.contain,
                                                                          ),
                                                                        );
                                                                      }
                                                                      return RefreshIndicator(
                                                                        onRefresh:
                                                                            () async {
                                                                          logFirebaseEvent(
                                                                              'VIEW_ListViewSubSTD_ON_PULL_TO_REFRESH');
                                                                          logFirebaseEvent(
                                                                              'ListViewSubSTD_Refresh-Database-Request');
                                                                          setState(() =>
                                                                              _firestoreRequestCompleter4 = null);
                                                                          await waitForFirestoreRequestCompleter4();
                                                                        },
                                                                        child: ListView
                                                                            .builder(
                                                                          padding:
                                                                              EdgeInsets.zero,
                                                                          primary:
                                                                              false,
                                                                          scrollDirection:
                                                                              Axis.vertical,
                                                                          itemCount:
                                                                              listViewSubSTDMaintenanceRecordList.length,
                                                                          itemBuilder:
                                                                              (context, listViewSubSTDIndex) {
                                                                            final listViewSubSTDMaintenanceRecord =
                                                                                listViewSubSTDMaintenanceRecordList[listViewSubSTDIndex];
                                                                            return InkWell(
                                                                              onTap: () async {
                                                                                logFirebaseEvent('VIEW_PAGE_ListTile_e9ojaabb_ON_TAP');
                                                                                logFirebaseEvent('ListTile_Navigate-To');
                                                                                context.pushNamed(
                                                                                  'moreInformation',
                                                                                  queryParams: {
                                                                                    'jobs': serializeParam(listViewSubSTDMaintenanceRecord, ParamType.Document),
                                                                                  }.withoutNulls,
                                                                                  extra: <String, dynamic>{
                                                                                    'jobs': listViewSubSTDMaintenanceRecord,
                                                                                  },
                                                                                );
                                                                              },
                                                                              child: Slidable(
                                                                                actionPane: const SlidableScrollActionPane(),
                                                                                secondaryActions: [
                                                                                  IconSlideAction(
                                                                                    caption: FFLocalizations.of(context).getText(
                                                                                      'aluf6wqz' /* Delete */,
                                                                                    ),
                                                                                    color: FlutterFlowTheme.of(context).campusRed,
                                                                                    icon: Icons.delete_outline,
                                                                                    onTap: () async {
                                                                                      logFirebaseEvent('VIEW_SlidableActionWidget_oukll02u_ON_TA');
                                                                                      logFirebaseEvent('SlidableActionWidget_Alert-Dialog');
                                                                                      var confirmDialogResponse = await showDialog<bool>(
                                                                                            context: context,
                                                                                            builder: (alertDialogContext) {
                                                                                              return AlertDialog(
                                                                                                content: Text('You are about to delete all items. Do you wish to continue?'),
                                                                                                actions: [
                                                                                                  TextButton(
                                                                                                    onPressed: () => Navigator.pop(alertDialogContext, false),
                                                                                                    child: Text('Cancel'),
                                                                                                  ),
                                                                                                  TextButton(
                                                                                                    onPressed: () => Navigator.pop(alertDialogContext, true),
                                                                                                    child: Text('OK'),
                                                                                                  ),
                                                                                                ],
                                                                                              );
                                                                                            },
                                                                                          ) ??
                                                                                          false;
                                                                                      if (confirmDialogResponse) {
                                                                                        logFirebaseEvent('SlidableActionWidget_Backend-Call');
                                                                                        await listViewSubSTDMaintenanceRecord.reference.delete();
                                                                                      } else {
                                                                                        return;
                                                                                      }

                                                                                      logFirebaseEvent('SlidableActionWidget_Show-Snack-Bar');
                                                                                      ScaffoldMessenger.of(context).showSnackBar(
                                                                                        SnackBar(
                                                                                          content: Text(
                                                                                            '1 item moved to bin',
                                                                                            style: TextStyle(
                                                                                              color: FlutterFlowTheme.of(context).primaryBackground,
                                                                                            ),
                                                                                          ),
                                                                                          duration: Duration(milliseconds: 4000),
                                                                                          backgroundColor: FlutterFlowTheme.of(context).primaryText,
                                                                                        ),
                                                                                      );
                                                                                    },
                                                                                  ),
                                                                                ],
                                                                                child: ListTile(
                                                                                  leading: FaIcon(
                                                                                    FontAwesomeIcons.folderMinus,
                                                                                    color: FlutterFlowTheme.of(context).primaryText,
                                                                                    size: 24,
                                                                                  ),
                                                                                  title: Text(
                                                                                    listViewSubSTDMaintenanceRecord.issue!,
                                                                                    style: FlutterFlowTheme.of(context).title2.override(
                                                                                          fontFamily: 'Open Sans',
                                                                                          color: FlutterFlowTheme.of(context).primaryText,
                                                                                          fontSize: 16,
                                                                                        ),
                                                                                  ),
                                                                                  subtitle: Text(
                                                                                    '${dateTimeFormat('MMMMEEEEd', listViewSubSTDMaintenanceRecord.createdTime)} ${dateTimeFormat('jm', listViewSubSTDMaintenanceRecord.createdTime)}',
                                                                                    style: FlutterFlowTheme.of(context).subtitle2.override(
                                                                                          fontFamily: 'Open Sans',
                                                                                          fontSize: 14,
                                                                                        ),
                                                                                  ),
                                                                                  trailing: Icon(
                                                                                    Icons.keyboard_arrow_right_sharp,
                                                                                    color: FlutterFlowTheme.of(context).primaryText,
                                                                                    size: 20,
                                                                                  ),
                                                                                  tileColor: Color(0x00FFFFFF),
                                                                                  dense: true,
                                                                                ),
                                                                              ),
                                                                            );
                                                                          },
                                                                        ),
                                                                      );
                                                                    },
                                                                  ),
                                                                ),
                                                              ],
                                                            ),
                                                            Column(
                                                              mainAxisSize:
                                                                  MainAxisSize
                                                                      .max,
                                                              children: [
                                                                Padding(
                                                                  padding: EdgeInsetsDirectional
                                                                      .fromSTEB(
                                                                          16,
                                                                          12,
                                                                          16,
                                                                          12),
                                                                  child: Row(
                                                                    mainAxisSize:
                                                                        MainAxisSize
                                                                            .max,
                                                                    children: [
                                                                      Text(
                                                                        FFLocalizations.of(context)
                                                                            .getText(
                                                                          's7q3htrz' /* Search results */,
                                                                        ),
                                                                        style: FlutterFlowTheme.of(context)
                                                                            .bodyText2,
                                                                      ),
                                                                    ],
                                                                  ),
                                                                ),
                                                                Expanded(
                                                                  child:
                                                                      Padding(
                                                                    padding: EdgeInsetsDirectional
                                                                        .fromSTEB(
                                                                            0,
                                                                            10,
                                                                            0,
                                                                            0),
                                                                    child: FutureBuilder<
                                                                        List<
                                                                            MaintenanceRecord>>(
                                                                      future: (_firestoreRequestCompleter1 ??= Completer<
                                                                              List<MaintenanceRecord>>()
                                                                            ..complete(queryMaintenanceRecordOnce(
                                                                              queryBuilder: (maintenanceRecord) => maintenanceRecord.where('status', isEqualTo: 'Pending').where('email', isEqualTo: currentUserEmail).orderBy('created_time', descending: true),
                                                                            )))
                                                                          .future,
                                                                      builder:
                                                                          (context,
                                                                              snapshot) {
                                                                        // Customize what your widget looks like when it's loading.
                                                                        if (!snapshot
                                                                            .hasData) {
                                                                          return Center(
                                                                            child:
                                                                                SizedBox(
                                                                              width: 60,
                                                                              height: 60,
                                                                              child: SpinKitPulse(
                                                                                color: FlutterFlowTheme.of(context).primaryColor,
                                                                                size: 60,
                                                                              ),
                                                                            ),
                                                                          );
                                                                        }
                                                                        List<MaintenanceRecord>
                                                                            listViewPendSTDMaintenanceRecordList =
                                                                            snapshot.data!;
                                                                        if (listViewPendSTDMaintenanceRecordList
                                                                            .isEmpty) {
                                                                          return Center(
                                                                            child:
                                                                                SvgPicture.asset(
                                                                              'assets/images/Theme=Accent,_Content=Results.svg',
                                                                              width: MediaQuery.of(context).size.width * 0.5,
                                                                              fit: BoxFit.contain,
                                                                            ),
                                                                          );
                                                                        }
                                                                        return RefreshIndicator(
                                                                          onRefresh:
                                                                              () async {
                                                                            logFirebaseEvent('VIEW_ListViewPendSTD_ON_PULL_TO_REFRESH');
                                                                            logFirebaseEvent('ListViewPendSTD_Refresh-Database-Request');
                                                                            setState(() =>
                                                                                _firestoreRequestCompleter1 = null);
                                                                            await waitForFirestoreRequestCompleter1();
                                                                          },
                                                                          child:
                                                                              ListView.builder(
                                                                            padding:
                                                                                EdgeInsets.zero,
                                                                            primary:
                                                                                false,
                                                                            scrollDirection:
                                                                                Axis.vertical,
                                                                            itemCount:
                                                                                listViewPendSTDMaintenanceRecordList.length,
                                                                            itemBuilder:
                                                                                (context, listViewPendSTDIndex) {
                                                                              final listViewPendSTDMaintenanceRecord = listViewPendSTDMaintenanceRecordList[listViewPendSTDIndex];
                                                                              return InkWell(
                                                                                onTap: () async {
                                                                                  logFirebaseEvent('VIEW_PAGE_ListTile_29pjzu71_ON_TAP');
                                                                                  logFirebaseEvent('ListTile_Navigate-To');
                                                                                  context.pushNamed(
                                                                                    'moreInformation',
                                                                                    queryParams: {
                                                                                      'jobs': serializeParam(listViewPendSTDMaintenanceRecord, ParamType.Document),
                                                                                    }.withoutNulls,
                                                                                    extra: <String, dynamic>{
                                                                                      'jobs': listViewPendSTDMaintenanceRecord,
                                                                                    },
                                                                                  );
                                                                                },
                                                                                child: ListTile(
                                                                                  leading: FaIcon(
                                                                                    FontAwesomeIcons.folderMinus,
                                                                                    color: FlutterFlowTheme.of(context).primaryText,
                                                                                    size: 24,
                                                                                  ),
                                                                                  title: Text(
                                                                                    listViewPendSTDMaintenanceRecord.issue!,
                                                                                    style: FlutterFlowTheme.of(context).title1.override(
                                                                                          fontFamily: 'Open Sans',
                                                                                          color: FlutterFlowTheme.of(context).primaryText,
                                                                                          fontSize: 16,
                                                                                          fontWeight: FontWeight.w500,
                                                                                        ),
                                                                                  ),
                                                                                  subtitle: Text(
                                                                                    '${dateTimeFormat('MMMMEEEEd', listViewPendSTDMaintenanceRecord.createdTime)} ${dateTimeFormat('jm', listViewPendSTDMaintenanceRecord.createdTime)}',
                                                                                    style: FlutterFlowTheme.of(context).subtitle2.override(
                                                                                          fontFamily: 'Open Sans',
                                                                                          fontSize: 14,
                                                                                        ),
                                                                                  ),
                                                                                  tileColor: Color(0x00F5F5F5),
                                                                                  dense: true,
                                                                                ),
                                                                              );
                                                                            },
                                                                          ),
                                                                        );
                                                                      },
                                                                    ),
                                                                  ),
                                                                ),
                                                              ],
                                                            ),
                                                            Column(
                                                              mainAxisSize:
                                                                  MainAxisSize
                                                                      .max,
                                                              crossAxisAlignment:
                                                                  CrossAxisAlignment
                                                                      .start,
                                                              children: [
                                                                Padding(
                                                                  padding: EdgeInsetsDirectional
                                                                      .fromSTEB(
                                                                          16,
                                                                          12,
                                                                          16,
                                                                          12),
                                                                  child: Row(
                                                                    mainAxisSize:
                                                                        MainAxisSize
                                                                            .max,
                                                                    children: [
                                                                      Text(
                                                                        FFLocalizations.of(context)
                                                                            .getText(
                                                                          'woriwezt' /* Search results */,
                                                                        ),
                                                                        style: FlutterFlowTheme.of(context)
                                                                            .bodyText2,
                                                                      ),
                                                                    ],
                                                                  ),
                                                                ),
                                                                Expanded(
                                                                  child: FutureBuilder<
                                                                      List<
                                                                          MaintenanceRecord>>(
                                                                    future: (_firestoreRequestCompleter2 ??= Completer<
                                                                            List<
                                                                                MaintenanceRecord>>()
                                                                          ..complete(
                                                                              queryMaintenanceRecordOnce(
                                                                            queryBuilder: (maintenanceRecord) =>
                                                                                maintenanceRecord.where('status', isEqualTo: 'Completed').where('email', isEqualTo: currentUserEmail).orderBy('created_time', descending: true),
                                                                          )))
                                                                        .future,
                                                                    builder:
                                                                        (context,
                                                                            snapshot) {
                                                                      // Customize what your widget looks like when it's loading.
                                                                      if (!snapshot
                                                                          .hasData) {
                                                                        return Center(
                                                                          child:
                                                                              SizedBox(
                                                                            width:
                                                                                60,
                                                                            height:
                                                                                60,
                                                                            child:
                                                                                SpinKitPulse(
                                                                              color: FlutterFlowTheme.of(context).primaryColor,
                                                                              size: 60,
                                                                            ),
                                                                          ),
                                                                        );
                                                                      }
                                                                      List<MaintenanceRecord>
                                                                          listViewCompSTDMaintenanceRecordList =
                                                                          snapshot
                                                                              .data!;
                                                                      if (listViewCompSTDMaintenanceRecordList
                                                                          .isEmpty) {
                                                                        return Center(
                                                                          child:
                                                                              SvgPicture.asset(
                                                                            'assets/images/Theme=Accent,_Content=Results.svg',
                                                                            width:
                                                                                MediaQuery.of(context).size.width * 0.5,
                                                                            fit:
                                                                                BoxFit.scaleDown,
                                                                          ),
                                                                        );
                                                                      }
                                                                      return RefreshIndicator(
                                                                        onRefresh:
                                                                            () async {
                                                                          logFirebaseEvent(
                                                                              'VIEW_ListViewCompSTD_ON_PULL_TO_REFRESH');
                                                                          logFirebaseEvent(
                                                                              'ListViewCompSTD_Refresh-Database-Request');
                                                                          setState(() =>
                                                                              _firestoreRequestCompleter2 = null);
                                                                          await waitForFirestoreRequestCompleter2();
                                                                        },
                                                                        child: ListView
                                                                            .builder(
                                                                          padding:
                                                                              EdgeInsets.zero,
                                                                          primary:
                                                                              false,
                                                                          scrollDirection:
                                                                              Axis.vertical,
                                                                          itemCount:
                                                                              listViewCompSTDMaintenanceRecordList.length,
                                                                          itemBuilder:
                                                                              (context, listViewCompSTDIndex) {
                                                                            final listViewCompSTDMaintenanceRecord =
                                                                                listViewCompSTDMaintenanceRecordList[listViewCompSTDIndex];
                                                                            return InkWell(
                                                                              onTap: () async {
                                                                                logFirebaseEvent('VIEW_PAGE_ListTile_x6djdo58_ON_TAP');
                                                                                logFirebaseEvent('ListTile_Navigate-To');
                                                                                context.pushNamed(
                                                                                  'moreInformation',
                                                                                  queryParams: {
                                                                                    'jobs': serializeParam(listViewCompSTDMaintenanceRecord, ParamType.Document),
                                                                                  }.withoutNulls,
                                                                                  extra: <String, dynamic>{
                                                                                    'jobs': listViewCompSTDMaintenanceRecord,
                                                                                  },
                                                                                );
                                                                              },
                                                                              child: ListTile(
                                                                                leading: FaIcon(
                                                                                  FontAwesomeIcons.folderMinus,
                                                                                  color: FlutterFlowTheme.of(context).primaryText,
                                                                                  size: 24,
                                                                                ),
                                                                                title: Text(
                                                                                  listViewCompSTDMaintenanceRecord.issue!,
                                                                                  style: FlutterFlowTheme.of(context).title2.override(
                                                                                        fontFamily: 'Open Sans',
                                                                                        color: FlutterFlowTheme.of(context).primaryText,
                                                                                        fontSize: 16,
                                                                                        fontWeight: FontWeight.w600,
                                                                                      ),
                                                                                ),
                                                                                subtitle: Text(
                                                                                  '${dateTimeFormat('MMMMEEEEd', listViewCompSTDMaintenanceRecord.createdTime)} ${dateTimeFormat('jm', listViewCompSTDMaintenanceRecord.createdTime)}',
                                                                                  style: FlutterFlowTheme.of(context).subtitle2.override(
                                                                                        fontFamily: 'Open Sans',
                                                                                        fontSize: 14,
                                                                                      ),
                                                                                ),
                                                                                trailing: Icon(
                                                                                  Icons.keyboard_arrow_right_sharp,
                                                                                  color: FlutterFlowTheme.of(context).primaryText,
                                                                                  size: 20,
                                                                                ),
                                                                                tileColor: Color(0x00FFFFFF),
                                                                                dense: true,
                                                                              ),
                                                                            );
                                                                          },
                                                                        ),
                                                                      );
                                                                    },
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
                                        if (valueOrDefault(
                                                currentUserDocument?.role,
                                                '') ==
                                            'Admin')
                                          Expanded(
                                            flex: 2,
                                            child: Padding(
                                              padding: EdgeInsetsDirectional
                                                  .fromSTEB(0, 0, 0, 80),
                                              child: AuthUserStreamWidget(
                                                child: DefaultTabController(
                                                  length: 3,
                                                  initialIndex: 0,
                                                  child: Column(
                                                    children: [
                                                      TabBar(
                                                        labelColor:
                                                            FlutterFlowTheme.of(
                                                                    context)
                                                                .primaryText,
                                                        unselectedLabelColor:
                                                            Color(0xFF6E6E6E),
                                                        labelStyle:
                                                            FlutterFlowTheme.of(
                                                                    context)
                                                                .bodyText1,
                                                        indicatorColor:
                                                            FlutterFlowTheme.of(
                                                                    context)
                                                                .primaryText,
                                                        tabs: [
                                                          Tab(
                                                            text: FFLocalizations
                                                                    .of(context)
                                                                .getText(
                                                              'p91jd7i0' /* Submitted */,
                                                            ),
                                                          ),
                                                          Tab(
                                                            text: FFLocalizations
                                                                    .of(context)
                                                                .getText(
                                                              'mv3djtdv' /* Pending */,
                                                            ),
                                                          ),
                                                          Tab(
                                                            text: FFLocalizations
                                                                    .of(context)
                                                                .getText(
                                                              'm9yees0f' /* Completed */,
                                                            ),
                                                          ),
                                                        ],
                                                      ),
                                                      Expanded(
                                                        child: TabBarView(
                                                          children: [
                                                            Column(
                                                              mainAxisSize:
                                                                  MainAxisSize
                                                                      .min,
                                                              crossAxisAlignment:
                                                                  CrossAxisAlignment
                                                                      .start,
                                                              children: [
                                                                Padding(
                                                                  padding: EdgeInsetsDirectional
                                                                      .fromSTEB(
                                                                          16,
                                                                          12,
                                                                          16,
                                                                          12),
                                                                  child: Row(
                                                                    mainAxisSize:
                                                                        MainAxisSize
                                                                            .max,
                                                                    children: [
                                                                      Text(
                                                                        FFLocalizations.of(context)
                                                                            .getText(
                                                                          'j40rlfkh' /* Search results */,
                                                                        ),
                                                                        style: FlutterFlowTheme.of(context)
                                                                            .bodyText2,
                                                                      ),
                                                                    ],
                                                                  ),
                                                                ),
                                                                Expanded(
                                                                  child: FutureBuilder<
                                                                      List<
                                                                          MaintenanceRecord>>(
                                                                    future: (_firestoreRequestCompleter3 ??= Completer<
                                                                            List<
                                                                                MaintenanceRecord>>()
                                                                          ..complete(
                                                                              queryMaintenanceRecordOnce(
                                                                            queryBuilder: (maintenanceRecord) =>
                                                                                maintenanceRecord.where('status', isEqualTo: 'Submitted').where('building', isEqualTo: valueOrDefault(currentUserDocument?.building, '')).where('isDone', isEqualTo: false).orderBy('created_time', descending: true),
                                                                          )))
                                                                        .future,
                                                                    builder:
                                                                        (context,
                                                                            snapshot) {
                                                                      // Customize what your widget looks like when it's loading.
                                                                      if (!snapshot
                                                                          .hasData) {
                                                                        return Center(
                                                                          child:
                                                                              SizedBox(
                                                                            width:
                                                                                60,
                                                                            height:
                                                                                60,
                                                                            child:
                                                                                SpinKitPulse(
                                                                              color: FlutterFlowTheme.of(context).primaryColor,
                                                                              size: 60,
                                                                            ),
                                                                          ),
                                                                        );
                                                                      }
                                                                      List<MaintenanceRecord>
                                                                          listViewSubmitMaintenanceRecordList =
                                                                          snapshot
                                                                              .data!;
                                                                      if (listViewSubmitMaintenanceRecordList
                                                                          .isEmpty) {
                                                                        return Center(
                                                                          child:
                                                                              SvgPicture.asset(
                                                                            'assets/images/Theme=Accent,_Content=Results.svg',
                                                                            width:
                                                                                MediaQuery.of(context).size.width * 0.5,
                                                                            fit:
                                                                                BoxFit.contain,
                                                                          ),
                                                                        );
                                                                      }
                                                                      return ListView
                                                                          .builder(
                                                                        padding:
                                                                            EdgeInsets.zero,
                                                                        primary:
                                                                            false,
                                                                        scrollDirection:
                                                                            Axis.vertical,
                                                                        itemCount:
                                                                            listViewSubmitMaintenanceRecordList.length,
                                                                        itemBuilder:
                                                                            (context,
                                                                                listViewSubmitIndex) {
                                                                          final listViewSubmitMaintenanceRecord =
                                                                              listViewSubmitMaintenanceRecordList[listViewSubmitIndex];
                                                                          return InkWell(
                                                                            onTap:
                                                                                () async {
                                                                              logFirebaseEvent('VIEW_PAGE_ListTile_dm029gei_ON_TAP');
                                                                              logFirebaseEvent('ListTile_Navigate-To');
                                                                              context.pushNamed(
                                                                                'moreInformation',
                                                                                queryParams: {
                                                                                  'jobs': serializeParam(listViewSubmitMaintenanceRecord, ParamType.Document),
                                                                                }.withoutNulls,
                                                                                extra: <String, dynamic>{
                                                                                  'jobs': listViewSubmitMaintenanceRecord,
                                                                                },
                                                                              );
                                                                            },
                                                                            child:
                                                                                Slidable(
                                                                              actionPane: const SlidableScrollActionPane(),
                                                                              secondaryActions: [
                                                                                IconSlideAction(
                                                                                  caption: FFLocalizations.of(context).getText(
                                                                                    'houlgtyt' /* Complete */,
                                                                                  ),
                                                                                  color: FlutterFlowTheme.of(context).campusRed,
                                                                                  icon: Icons.logout,
                                                                                  onTap: () async {
                                                                                    logFirebaseEvent('VIEW_SlidableActionWidget_pj3pmw07_ON_TA');
                                                                                    logFirebaseEvent('SlidableActionWidget_Backend-Call');

                                                                                    final maintenanceUpdateData = createMaintenanceRecordData(
                                                                                      status: 'Pending',
                                                                                      assigned: currentUserDisplayName,
                                                                                    );
                                                                                    await listViewSubmitMaintenanceRecord.reference.update(maintenanceUpdateData);
                                                                                    logFirebaseEvent('SlidableActionWidget_Refresh-Database-Re');
                                                                                    setState(() => _firestoreRequestCompleter3 = null);
                                                                                    await waitForFirestoreRequestCompleter3();
                                                                                    logFirebaseEvent('SlidableActionWidget_Show-Snack-Bar');
                                                                                    ScaffoldMessenger.of(context).showSnackBar(
                                                                                      SnackBar(
                                                                                        content: Text(
                                                                                          'Item successfully completed',
                                                                                          style: TextStyle(
                                                                                            color: FlutterFlowTheme.of(context).primaryBackground,
                                                                                          ),
                                                                                        ),
                                                                                        duration: Duration(milliseconds: 4000),
                                                                                        backgroundColor: FlutterFlowTheme.of(context).primaryText,
                                                                                      ),
                                                                                    );
                                                                                  },
                                                                                ),
                                                                              ],
                                                                              child: ListTile(
                                                                                leading: FaIcon(
                                                                                  FontAwesomeIcons.folderMinus,
                                                                                  color: FlutterFlowTheme.of(context).primaryText,
                                                                                  size: 24,
                                                                                ),
                                                                                title: Text(
                                                                                  listViewSubmitMaintenanceRecord.issue!,
                                                                                  style: FlutterFlowTheme.of(context).title2.override(
                                                                                        fontFamily: 'Open Sans',
                                                                                        color: FlutterFlowTheme.of(context).primaryText,
                                                                                        fontSize: 16,
                                                                                        fontWeight: FontWeight.normal,
                                                                                      ),
                                                                                ),
                                                                                subtitle: Text(
                                                                                  listViewSubmitMaintenanceRecord.room!,
                                                                                  style: FlutterFlowTheme.of(context).subtitle2.override(
                                                                                        fontFamily: 'Open Sans',
                                                                                        color: Color(0xFFB91D13),
                                                                                        fontSize: 14,
                                                                                        fontWeight: FontWeight.w600,
                                                                                      ),
                                                                                ),
                                                                                trailing: Icon(
                                                                                  Icons.keyboard_arrow_right_sharp,
                                                                                  color: FlutterFlowTheme.of(context).primaryText,
                                                                                  size: 20,
                                                                                ),
                                                                                tileColor: Color(0x00FFFFFF),
                                                                                dense: true,
                                                                              ),
                                                                            ),
                                                                          );
                                                                        },
                                                                      );
                                                                    },
                                                                  ),
                                                                ),
                                                              ],
                                                            ),
                                                            Column(
                                                              mainAxisSize:
                                                                  MainAxisSize
                                                                      .min,
                                                              crossAxisAlignment:
                                                                  CrossAxisAlignment
                                                                      .start,
                                                              children: [
                                                                Padding(
                                                                  padding: EdgeInsetsDirectional
                                                                      .fromSTEB(
                                                                          16,
                                                                          12,
                                                                          16,
                                                                          12),
                                                                  child: Row(
                                                                    mainAxisSize:
                                                                        MainAxisSize
                                                                            .max,
                                                                    children: [
                                                                      Text(
                                                                        FFLocalizations.of(context)
                                                                            .getText(
                                                                          'jo4bqud1' /* Search results */,
                                                                        ),
                                                                        style: FlutterFlowTheme.of(context)
                                                                            .bodyText2,
                                                                      ),
                                                                    ],
                                                                  ),
                                                                ),
                                                                Expanded(
                                                                  child: StreamBuilder<
                                                                      List<
                                                                          MaintenanceRecord>>(
                                                                    stream:
                                                                        queryMaintenanceRecord(
                                                                      queryBuilder: (maintenanceRecord) => maintenanceRecord
                                                                          .where(
                                                                              'status',
                                                                              isEqualTo:
                                                                                  'Pending')
                                                                          .where(
                                                                              'building',
                                                                              isEqualTo: valueOrDefault(currentUserDocument?.building, ''))
                                                                          .where('isDone', isEqualTo: false)
                                                                          .orderBy('created_time', descending: true),
                                                                    ),
                                                                    builder:
                                                                        (context,
                                                                            snapshot) {
                                                                      // Customize what your widget looks like when it's loading.
                                                                      if (!snapshot
                                                                          .hasData) {
                                                                        return Center(
                                                                          child:
                                                                              SizedBox(
                                                                            width:
                                                                                60,
                                                                            height:
                                                                                60,
                                                                            child:
                                                                                SpinKitPulse(
                                                                              color: FlutterFlowTheme.of(context).primaryColor,
                                                                              size: 60,
                                                                            ),
                                                                          ),
                                                                        );
                                                                      }
                                                                      List<MaintenanceRecord>
                                                                          listViewPendingMaintenanceRecordList =
                                                                          snapshot
                                                                              .data!;
                                                                      if (listViewPendingMaintenanceRecordList
                                                                          .isEmpty) {
                                                                        return Center(
                                                                          child:
                                                                              SvgPicture.asset(
                                                                            'assets/images/Theme=Accent,_Content=Results.svg',
                                                                            width:
                                                                                MediaQuery.of(context).size.width * 0.5,
                                                                            fit:
                                                                                BoxFit.contain,
                                                                          ),
                                                                        );
                                                                      }
                                                                      return ListView
                                                                          .builder(
                                                                        padding:
                                                                            EdgeInsets.zero,
                                                                        primary:
                                                                            false,
                                                                        scrollDirection:
                                                                            Axis.vertical,
                                                                        itemCount:
                                                                            listViewPendingMaintenanceRecordList.length,
                                                                        itemBuilder:
                                                                            (context,
                                                                                listViewPendingIndex) {
                                                                          final listViewPendingMaintenanceRecord =
                                                                              listViewPendingMaintenanceRecordList[listViewPendingIndex];
                                                                          return InkWell(
                                                                            onTap:
                                                                                () async {
                                                                              logFirebaseEvent('VIEW_PAGE_ListTile_szyv0kg8_ON_TAP');
                                                                              logFirebaseEvent('ListTile_Navigate-To');
                                                                              context.pushNamed(
                                                                                'moreInformation',
                                                                                queryParams: {
                                                                                  'jobs': serializeParam(listViewPendingMaintenanceRecord, ParamType.Document),
                                                                                }.withoutNulls,
                                                                                extra: <String, dynamic>{
                                                                                  'jobs': listViewPendingMaintenanceRecord,
                                                                                },
                                                                              );
                                                                            },
                                                                            child:
                                                                                Slidable(
                                                                              actionPane: const SlidableScrollActionPane(),
                                                                              secondaryActions: [
                                                                                IconSlideAction(
                                                                                  caption: FFLocalizations.of(context).getText(
                                                                                    'x35hfmcj' /* Reject */,
                                                                                  ),
                                                                                  color: FlutterFlowTheme.of(context).secondaryBackground,
                                                                                  icon: FFIcons.kthumbsDowns,
                                                                                  onTap: () async {
                                                                                    logFirebaseEvent('VIEW_SlidableActionWidget_87o6zqyp_ON_TA');
                                                                                    logFirebaseEvent('SlidableActionWidget_Backend-Call');

                                                                                    final maintenanceUpdateData = createMaintenanceRecordData(
                                                                                      status: 'Submitted',
                                                                                    );
                                                                                    await listViewPendingMaintenanceRecord.reference.update(maintenanceUpdateData);
                                                                                    logFirebaseEvent('SlidableActionWidget_Show-Snack-Bar');
                                                                                    ScaffoldMessenger.of(context).showSnackBar(
                                                                                      SnackBar(
                                                                                        content: Text(
                                                                                          'Item rejected',
                                                                                          style: TextStyle(
                                                                                            color: FlutterFlowTheme.of(context).primaryBackground,
                                                                                          ),
                                                                                        ),
                                                                                        duration: Duration(milliseconds: 4000),
                                                                                        backgroundColor: FlutterFlowTheme.of(context).primaryText,
                                                                                      ),
                                                                                    );
                                                                                  },
                                                                                ),
                                                                                IconSlideAction(
                                                                                  caption: FFLocalizations.of(context).getText(
                                                                                    'ukvp0ult' /* Complete */,
                                                                                  ),
                                                                                  color: FlutterFlowTheme.of(context).campusRed,
                                                                                  icon: Icons.logout,
                                                                                  onTap: () async {
                                                                                    logFirebaseEvent('VIEW_SlidableActionWidget_5n9ryjxb_ON_TA');
                                                                                    logFirebaseEvent('SlidableActionWidget_Backend-Call');

                                                                                    final maintenanceUpdateData = createMaintenanceRecordData(
                                                                                      status: 'Completed',
                                                                                      updateTime: getCurrentTimestamp,
                                                                                    );
                                                                                    await listViewPendingMaintenanceRecord.reference.update(maintenanceUpdateData);
                                                                                    // pushNotifications
                                                                                    logFirebaseEvent('SlidableActionWidget_pushNotifications');
                                                                                    triggerPushNotification(
                                                                                      notificationTitle: 'Maintenance ticket Status',
                                                                                      notificationText: 'Your maintenance ticket has been completed. Click here to leave a review ',
                                                                                      notificationImageUrl: FFAppState().caLogo,
                                                                                      notificationSound: 'default',
                                                                                      userRefs: [
                                                                                        listViewPendingMaintenanceRecord.userRec!
                                                                                      ],
                                                                                      initialPageName: 'view',
                                                                                      parameterData: {},
                                                                                    );
                                                                                    logFirebaseEvent('SlidableActionWidget_Show-Snack-Bar');
                                                                                    ScaffoldMessenger.of(context).showSnackBar(
                                                                                      SnackBar(
                                                                                        content: Text(
                                                                                          'Item successfully completed',
                                                                                          style: TextStyle(
                                                                                            color: FlutterFlowTheme.of(context).primaryBackground,
                                                                                          ),
                                                                                        ),
                                                                                        duration: Duration(milliseconds: 4000),
                                                                                        backgroundColor: FlutterFlowTheme.of(context).primaryText,
                                                                                      ),
                                                                                    );
                                                                                  },
                                                                                ),
                                                                              ],
                                                                              child: ListTile(
                                                                                leading: FaIcon(
                                                                                  FontAwesomeIcons.folderMinus,
                                                                                  color: FlutterFlowTheme.of(context).primaryText,
                                                                                  size: 24,
                                                                                ),
                                                                                title: Text(
                                                                                  listViewPendingMaintenanceRecord.issue!,
                                                                                  style: FlutterFlowTheme.of(context).title2.override(
                                                                                        fontFamily: 'Open Sans',
                                                                                        color: FlutterFlowTheme.of(context).primaryText,
                                                                                        fontSize: 16,
                                                                                        fontWeight: FontWeight.w500,
                                                                                      ),
                                                                                ),
                                                                                subtitle: Text(
                                                                                  listViewPendingMaintenanceRecord.room!,
                                                                                  style: FlutterFlowTheme.of(context).subtitle2.override(
                                                                                        fontFamily: 'Open Sans',
                                                                                        color: Color(0xFFEFB701),
                                                                                        fontSize: 14,
                                                                                        fontWeight: FontWeight.bold,
                                                                                      ),
                                                                                ),
                                                                                trailing: Icon(
                                                                                  Icons.keyboard_arrow_right_sharp,
                                                                                  color: FlutterFlowTheme.of(context).primaryText,
                                                                                  size: 20,
                                                                                ),
                                                                                tileColor: Color(0x00FFFFFF),
                                                                                dense: true,
                                                                              ),
                                                                            ),
                                                                          );
                                                                        },
                                                                      );
                                                                    },
                                                                  ),
                                                                ),
                                                              ],
                                                            ),
                                                            Column(
                                                              mainAxisSize:
                                                                  MainAxisSize
                                                                      .max,
                                                              children: [
                                                                Padding(
                                                                  padding: EdgeInsetsDirectional
                                                                      .fromSTEB(
                                                                          16,
                                                                          12,
                                                                          16,
                                                                          12),
                                                                  child: Row(
                                                                    mainAxisSize:
                                                                        MainAxisSize
                                                                            .max,
                                                                    children: [
                                                                      Text(
                                                                        FFLocalizations.of(context)
                                                                            .getText(
                                                                          '9rlnx1fb' /* Search results */,
                                                                        ),
                                                                        style: FlutterFlowTheme.of(context)
                                                                            .bodyText2,
                                                                      ),
                                                                    ],
                                                                  ),
                                                                ),
                                                                Expanded(
                                                                  child: FutureBuilder<
                                                                      List<
                                                                          MaintenanceRecord>>(
                                                                    future:
                                                                        queryMaintenanceRecordOnce(
                                                                      queryBuilder: (maintenanceRecord) => maintenanceRecord
                                                                          .where(
                                                                              'building',
                                                                              isEqualTo: valueOrDefault(currentUserDocument?.building, ''))
                                                                          .where('status', isEqualTo: 'Completed')
                                                                          .orderBy('created_time', descending: true),
                                                                    ),
                                                                    builder:
                                                                        (context,
                                                                            snapshot) {
                                                                      // Customize what your widget looks like when it's loading.
                                                                      if (!snapshot
                                                                          .hasData) {
                                                                        return Center(
                                                                          child:
                                                                              SizedBox(
                                                                            width:
                                                                                60,
                                                                            height:
                                                                                60,
                                                                            child:
                                                                                SpinKitPulse(
                                                                              color: FlutterFlowTheme.of(context).primaryColor,
                                                                              size: 60,
                                                                            ),
                                                                          ),
                                                                        );
                                                                      }
                                                                      List<MaintenanceRecord>
                                                                          listViewCompletedMaintenanceRecordList =
                                                                          snapshot
                                                                              .data!;
                                                                      if (listViewCompletedMaintenanceRecordList
                                                                          .isEmpty) {
                                                                        return Center(
                                                                          child:
                                                                              SvgPicture.asset(
                                                                            'assets/images/Theme=Accent,_Content=Results.svg',
                                                                            width:
                                                                                MediaQuery.of(context).size.width * 0.5,
                                                                            fit:
                                                                                BoxFit.contain,
                                                                          ),
                                                                        );
                                                                      }
                                                                      return ListView
                                                                          .builder(
                                                                        padding:
                                                                            EdgeInsets.zero,
                                                                        primary:
                                                                            false,
                                                                        scrollDirection:
                                                                            Axis.vertical,
                                                                        itemCount:
                                                                            listViewCompletedMaintenanceRecordList.length,
                                                                        itemBuilder:
                                                                            (context,
                                                                                listViewCompletedIndex) {
                                                                          final listViewCompletedMaintenanceRecord =
                                                                              listViewCompletedMaintenanceRecordList[listViewCompletedIndex];
                                                                          return Padding(
                                                                            padding: EdgeInsetsDirectional.fromSTEB(
                                                                                4,
                                                                                5,
                                                                                4,
                                                                                0),
                                                                            child:
                                                                                InkWell(
                                                                              onTap: () async {
                                                                                logFirebaseEvent('VIEW_PAGE_Card_uqmpvujs_ON_TAP');
                                                                                logFirebaseEvent('Card_Navigate-To');
                                                                                context.pushNamed(
                                                                                  'moreInformation',
                                                                                  queryParams: {
                                                                                    'jobs': serializeParam(listViewCompletedMaintenanceRecord, ParamType.Document),
                                                                                  }.withoutNulls,
                                                                                  extra: <String, dynamic>{
                                                                                    'jobs': listViewCompletedMaintenanceRecord,
                                                                                  },
                                                                                );
                                                                              },
                                                                              child: Card(
                                                                                clipBehavior: Clip.antiAliasWithSaveLayer,
                                                                                color: Color(0x00FFFFFF),
                                                                                elevation: 0,
                                                                                shape: RoundedRectangleBorder(
                                                                                  borderRadius: BorderRadius.circular(2),
                                                                                ),
                                                                                child: Padding(
                                                                                  padding: EdgeInsetsDirectional.fromSTEB(8, 0, 8, 0),
                                                                                  child: Row(
                                                                                    mainAxisSize: MainAxisSize.max,
                                                                                    crossAxisAlignment: CrossAxisAlignment.start,
                                                                                    children: [
                                                                                      FaIcon(
                                                                                        FontAwesomeIcons.folderMinus,
                                                                                        color: FlutterFlowTheme.of(context).primaryText,
                                                                                        size: 24,
                                                                                      ),
                                                                                      Expanded(
                                                                                        child: Padding(
                                                                                          padding: EdgeInsetsDirectional.fromSTEB(16, 0, 0, 0),
                                                                                          child: Column(
                                                                                            mainAxisSize: MainAxisSize.max,
                                                                                            crossAxisAlignment: CrossAxisAlignment.start,
                                                                                            children: [
                                                                                              Padding(
                                                                                                padding: EdgeInsetsDirectional.fromSTEB(0, 0, 0, 2),
                                                                                                child: Text(
                                                                                                  listViewCompletedMaintenanceRecord.issue!,
                                                                                                  style: FlutterFlowTheme.of(context).bodyText1.override(
                                                                                                        fontFamily: 'Open Sans',
                                                                                                        color: FlutterFlowTheme.of(context).primaryText,
                                                                                                        fontSize: 16,
                                                                                                        fontWeight: FontWeight.w500,
                                                                                                      ),
                                                                                                ),
                                                                                              ),
                                                                                              Text(
                                                                                                listViewCompletedMaintenanceRecord.room!,
                                                                                                style: FlutterFlowTheme.of(context).bodyText1.override(
                                                                                                      fontFamily: 'Open Sans',
                                                                                                      color: Color(0xFF0C8450),
                                                                                                      fontWeight: FontWeight.bold,
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
                                                                          );
                                                                        },
                                                                      );
                                                                    },
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
                                      ],
                                    ),
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
              ],
            ),
            if (responsiveVisibility(
              context: context,
              tablet: false,
              tabletLandscape: false,
              desktop: false,
            ))
              BottomNavBarWidget(
                homeColor: Color(0xFFC8360E),
                messageColor: FlutterFlowTheme.of(context).primaryText,
                notificationColor: FlutterFlowTheme.of(context).primaryText,
                settingsColor: FlutterFlowTheme.of(context).primaryText,
              ),
          ],
        ),
      ),
    );
  }

  Future waitForFirestoreRequestCompleter1({
    double minWait = 0,
    double maxWait = double.infinity,
  }) async {
    final stopwatch = Stopwatch()..start();
    while (true) {
      await Future.delayed(Duration(milliseconds: 50));
      final timeElapsed = stopwatch.elapsedMilliseconds;
      final requestComplete = _firestoreRequestCompleter1?.isCompleted ?? false;
      if (timeElapsed > maxWait || (requestComplete && timeElapsed > minWait)) {
        break;
      }
    }
  }

  Future waitForFirestoreRequestCompleter4({
    double minWait = 0,
    double maxWait = double.infinity,
  }) async {
    final stopwatch = Stopwatch()..start();
    while (true) {
      await Future.delayed(Duration(milliseconds: 50));
      final timeElapsed = stopwatch.elapsedMilliseconds;
      final requestComplete = _firestoreRequestCompleter4?.isCompleted ?? false;
      if (timeElapsed > maxWait || (requestComplete && timeElapsed > minWait)) {
        break;
      }
    }
  }

  Future waitForFirestoreRequestCompleter2({
    double minWait = 0,
    double maxWait = double.infinity,
  }) async {
    final stopwatch = Stopwatch()..start();
    while (true) {
      await Future.delayed(Duration(milliseconds: 50));
      final timeElapsed = stopwatch.elapsedMilliseconds;
      final requestComplete = _firestoreRequestCompleter2?.isCompleted ?? false;
      if (timeElapsed > maxWait || (requestComplete && timeElapsed > minWait)) {
        break;
      }
    }
  }

  Future waitForFirestoreRequestCompleter3({
    double minWait = 0,
    double maxWait = double.infinity,
  }) async {
    final stopwatch = Stopwatch()..start();
    while (true) {
      await Future.delayed(Duration(milliseconds: 50));
      final timeElapsed = stopwatch.elapsedMilliseconds;
      final requestComplete = _firestoreRequestCompleter3?.isCompleted ?? false;
      if (timeElapsed > maxWait || (requestComplete && timeElapsed > minWait)) {
        break;
      }
    }
  }
}
