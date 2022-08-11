import '../auth/auth_util.dart';
import '../backend/backend.dart';
import '../backend/firebase_storage/storage.dart';
import '../components/submitted_icon_widget.dart';
import '../flutter_flow/flutter_flow_drop_down.dart';
import '../flutter_flow/flutter_flow_icon_button.dart';
import '../flutter_flow/flutter_flow_theme.dart';
import '../flutter_flow/flutter_flow_util.dart';
import '../flutter_flow/flutter_flow_widgets.dart';
import '../flutter_flow/upload_media.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:google_fonts/google_fonts.dart';

class PaintingWidget extends StatefulWidget {
  const PaintingWidget({Key? key}) : super(key: key);

  @override
  _PaintingWidgetState createState() => _PaintingWidgetState();
}

class _PaintingWidgetState extends State<PaintingWidget> {
  String uploadedFileUrl = '';
  TextEditingController? textController1;
  String? budgetValue;
  TextEditingController? reasonController;
  final formKey = GlobalKey<FormState>();
  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    logFirebaseEvent('screen_view', parameters: {'screen_name': 'painting'});
    reasonController = TextEditingController();
    textController1 = TextEditingController(text: currentUserDisplayName);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: scaffoldKey,
      appBar: AppBar(
        backgroundColor: FlutterFlowTheme.of(context).primaryBackground,
        automaticallyImplyLeading: false,
        leading: FlutterFlowIconButton(
          borderColor: Colors.transparent,
          borderRadius: 30,
          borderWidth: 1,
          buttonSize: 54,
          icon: Icon(
            Icons.arrow_back_ios,
            color: FlutterFlowTheme.of(context).primaryText,
            size: 25,
          ),
          onPressed: () async {
            logFirebaseEvent('PAINTING_PAGE_arrow_back_ios_ICN_ON_TAP');
            logFirebaseEvent('IconButton_Navigate-Back');
            context.pop();
          },
        ),
        title: Text(
          FFLocalizations.of(context).getText(
            'fpnywby9' /* Painting */,
          ),
          style: FlutterFlowTheme.of(context).title2.override(
                fontFamily: 'Open Sans',
                color: FlutterFlowTheme.of(context).primaryText,
                fontSize: 18,
              ),
        ),
        actions: [],
        centerTitle: true,
        elevation: 1,
      ),
      backgroundColor: FlutterFlowTheme.of(context).primaryBackground,
      body: SafeArea(
        child: GestureDetector(
          onTap: () => FocusScope.of(context).unfocus(),
          child: Form(
            key: formKey,
            autovalidateMode: AutovalidateMode.always,
            child: Padding(
              padding: EdgeInsetsDirectional.fromSTEB(12, 5, 12, 0),
              child: SingleChildScrollView(
                child: Column(
                  mainAxisSize: MainAxisSize.max,
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Padding(
                      padding: EdgeInsetsDirectional.fromSTEB(0, 15, 0, 15),
                      child: Material(
                        color: Colors.transparent,
                        elevation: 0,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10),
                        ),
                        child: Container(
                          width: MediaQuery.of(context).size.width * 0.8,
                          height: MediaQuery.of(context).size.height * 0.35,
                          decoration: BoxDecoration(
                            color: Color(0x00C70707),
                            borderRadius: BorderRadius.circular(10),
                            shape: BoxShape.rectangle,
                          ),
                          child: InkWell(
                            onTap: () async {
                              logFirebaseEvent(
                                  'PAINTING_PAGE_Column_8u1kea31_ON_TAP');
                              logFirebaseEvent('Column_Upload-Photo-Video');
                              final selectedMedia =
                                  await selectMediaWithSourceBottomSheet(
                                context: context,
                                allowPhoto: true,
                              );
                              if (selectedMedia != null &&
                                  selectedMedia.every((m) => validateFileFormat(
                                      m.storagePath, context))) {
                                showUploadMessage(
                                  context,
                                  'Uploading file...',
                                  showLoading: true,
                                );
                                final downloadUrls = (await Future.wait(
                                        selectedMedia.map((m) async =>
                                            await uploadData(
                                                m.storagePath, m.bytes))))
                                    .where((u) => u != null)
                                    .map((u) => u!)
                                    .toList();
                                ScaffoldMessenger.of(context)
                                    .hideCurrentSnackBar();
                                if (downloadUrls.length ==
                                    selectedMedia.length) {
                                  setState(() =>
                                      uploadedFileUrl = downloadUrls.first);
                                  showUploadMessage(
                                    context,
                                    FFLocalizations.of(context).getText(
                                      'z40c2u6r' /* File Uploaded! */,
                                    ),
                                  );
                                } else {
                                  showUploadMessage(
                                    context,
                                    'Failed to upload media',
                                  );
                                  return;
                                }
                              }
                            },
                            child: Column(
                              mainAxisSize: MainAxisSize.max,
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Expanded(
                                  child: ClipRRect(
                                    borderRadius: BorderRadius.circular(10),
                                    child: Image.network(
                                      valueOrDefault<String>(
                                        uploadedFileUrl,
                                        'https://static.vecteezy.com/system/resources/previews/004/968/473/original/upload-or-add-a-picture-jpg-file-concept-illustration-flat-design-eps10-modern-graphic-element-for-landing-page-empty-state-ui-infographic-icon-etc-vector.jpg',
                                      ),
                                      width: MediaQuery.of(context).size.width,
                                      height:
                                          MediaQuery.of(context).size.height *
                                              0.3,
                                      fit: BoxFit.contain,
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ),
                    ),
                    Padding(
                      padding: EdgeInsetsDirectional.fromSTEB(0, 30, 0, 0),
                      child: Row(
                        mainAxisSize: MainAxisSize.max,
                        children: [
                          Text(
                            FFLocalizations.of(context).getText(
                              'y45hko9v' /* Name */,
                            ),
                            style: FlutterFlowTheme.of(context)
                                .bodyText1
                                .override(
                                  fontFamily: 'Open Sans',
                                  color:
                                      FlutterFlowTheme.of(context).primaryText,
                                  fontSize: 16,
                                  fontWeight: FontWeight.w600,
                                ),
                          ),
                        ],
                      ),
                    ),
                    Padding(
                      padding: EdgeInsetsDirectional.fromSTEB(0, 20, 0, 0),
                      child: AuthUserStreamWidget(
                        child: TextFormField(
                          controller: textController1,
                          readOnly: true,
                          obscureText: false,
                          decoration: InputDecoration(
                            labelText: FFLocalizations.of(context).getText(
                              'a4x8dzml' /*   */,
                            ),
                            hintText: currentUserDisplayName,
                            enabledBorder: OutlineInputBorder(
                              borderSide: BorderSide(
                                color: Color(0x00000000),
                                width: 1,
                              ),
                              borderRadius: BorderRadius.circular(8),
                            ),
                            focusedBorder: OutlineInputBorder(
                              borderSide: BorderSide(
                                color: Color(0x00000000),
                                width: 1,
                              ),
                              borderRadius: BorderRadius.circular(8),
                            ),
                            filled: true,
                            fillColor: FlutterFlowTheme.of(context).alternate,
                            suffixIcon: Icon(
                              FFIcons.kic25,
                              color: FlutterFlowTheme.of(context).primaryText,
                              size: 25,
                            ),
                          ),
                          style: FlutterFlowTheme.of(context)
                              .bodyText1
                              .override(
                                fontFamily: 'Open Sans',
                                color: FlutterFlowTheme.of(context).primaryText,
                              ),
                          maxLines: 1,
                          keyboardType: TextInputType.name,
                        ),
                      ),
                    ),
                    Padding(
                      padding: EdgeInsetsDirectional.fromSTEB(0, 30, 0, 0),
                      child: Row(
                        mainAxisSize: MainAxisSize.max,
                        children: [
                          Text(
                            FFLocalizations.of(context).getText(
                              'sxw0xvkr' /* Issue */,
                            ),
                            style: FlutterFlowTheme.of(context)
                                .bodyText1
                                .override(
                                  fontFamily: 'Open Sans',
                                  color:
                                      FlutterFlowTheme.of(context).primaryText,
                                  fontSize: 16,
                                  fontWeight: FontWeight.w600,
                                ),
                          ),
                        ],
                      ),
                    ),
                    Padding(
                      padding: EdgeInsetsDirectional.fromSTEB(0, 20, 0, 0),
                      child: FlutterFlowDropDown(
                        options: [
                          FFLocalizations.of(context).getText(
                            'b49kwxxn' /* Ceiling needs to be painted */,
                          ),
                          FFLocalizations.of(context).getText(
                            'xcjd2ohv' /* Door frame needs to be painted */,
                          ),
                          FFLocalizations.of(context).getText(
                            'hn0l9gtd' /* Skirting needs to be painted */,
                          ),
                          FFLocalizations.of(context).getText(
                            '73kygpgt' /* Walls needs to be painted */,
                          ),
                          FFLocalizations.of(context).getText(
                            '99fpkv1q' /* Window frames needs to be pain... */,
                          )
                        ],
                        onChanged: (val) => setState(() => budgetValue = val),
                        width: MediaQuery.of(context).size.width * 0.98,
                        height: 70,
                        textStyle: FlutterFlowTheme.of(context)
                            .bodyText1
                            .override(
                              fontFamily: 'Lexend Deca',
                              color: FlutterFlowTheme.of(context).primaryText,
                              fontSize: 14,
                              fontWeight: FontWeight.normal,
                            ),
                        hintText: FFLocalizations.of(context).getText(
                          'r8v9zom9' /* Please select... */,
                        ),
                        icon: Icon(
                          Icons.edit_outlined,
                          color: FlutterFlowTheme.of(context).primaryText,
                          size: 28,
                        ),
                        fillColor: FlutterFlowTheme.of(context).alternate,
                        elevation: 8,
                        borderColor: Color(0x00FFFFFF),
                        borderWidth: 2,
                        borderRadius: 8,
                        margin: EdgeInsetsDirectional.fromSTEB(20, 0, 12, 0),
                        hidesUnderline: true,
                      ),
                    ),
                    Padding(
                      padding: EdgeInsetsDirectional.fromSTEB(0, 30, 0, 0),
                      child: Row(
                        mainAxisSize: MainAxisSize.max,
                        children: [
                          Text(
                            FFLocalizations.of(context).getText(
                              '9yycc0gq' /* Description */,
                            ),
                            style: FlutterFlowTheme.of(context)
                                .bodyText1
                                .override(
                                  fontFamily: 'Open Sans',
                                  color:
                                      FlutterFlowTheme.of(context).primaryText,
                                  fontSize: 16,
                                  fontWeight: FontWeight.w600,
                                ),
                          ),
                        ],
                      ),
                    ),
                    Padding(
                      padding: EdgeInsetsDirectional.fromSTEB(12, 40, 12, 0),
                      child: TextFormField(
                        controller: reasonController,
                        obscureText: false,
                        decoration: InputDecoration(
                          hintText: FFLocalizations.of(context).getText(
                            'i0vecmyv' /* Describe your Issue */,
                          ),
                          enabledBorder: OutlineInputBorder(
                            borderSide: BorderSide(
                              color: Color(0x00C5C5C5),
                              width: 2,
                            ),
                            borderRadius: BorderRadius.circular(8),
                          ),
                          focusedBorder: OutlineInputBorder(
                            borderSide: BorderSide(
                              color: Color(0x00C5C5C5),
                              width: 2,
                            ),
                            borderRadius: BorderRadius.circular(8),
                          ),
                          filled: true,
                          fillColor: FlutterFlowTheme.of(context).alternate,
                          contentPadding:
                              EdgeInsetsDirectional.fromSTEB(20, 40, 24, 0),
                        ),
                        style: FlutterFlowTheme.of(context).bodyText1.override(
                              fontFamily: 'Open Sans',
                              color: FlutterFlowTheme.of(context).primaryText,
                              fontSize: 16,
                              fontWeight: FontWeight.normal,
                            ),
                        textAlign: TextAlign.start,
                        maxLines: 5,
                        validator: (val) {
                          if (val == null || val.isEmpty) {
                            return FFLocalizations.of(context).getText(
                              'qow9mldr' /* Field is required */,
                            );
                          }

                          if (val.length > 120) {
                            return 'Maximum 120 characters allowed, currently ${val.length}.';
                          }

                          return null;
                        },
                      ),
                    ),
                    Padding(
                      padding: EdgeInsetsDirectional.fromSTEB(16, 50, 16, 50),
                      child: FFButtonWidget(
                        onPressed: () async {
                          logFirebaseEvent('PAINTING_PAGE_SUBMIT_BTN_ON_TAP');
                          logFirebaseEvent('Button_Validate-Form');
                          if (formKey.currentState == null ||
                              !formKey.currentState!.validate()) {
                            return;
                          }

                          if (budgetValue == null) {
                            ScaffoldMessenger.of(context).showSnackBar(
                              SnackBar(
                                content: Text(
                                  'Field is required',
                                  style: TextStyle(
                                    color: FlutterFlowTheme.of(context)
                                        .primaryBackground,
                                  ),
                                ),
                                duration: Duration(milliseconds: 4000),
                                backgroundColor:
                                    FlutterFlowTheme.of(context).primaryText,
                              ),
                            );
                            return;
                          }

                          logFirebaseEvent('Button_Backend-Call');

                          final maintenanceCreateData =
                              createMaintenanceRecordData(
                            issue: budgetValue,
                            status: 'Submitted',
                            email: currentUserEmail,
                            createdTime: getCurrentTimestamp,
                            displayName: currentUserDisplayName,
                            room: valueOrDefault(currentUserDocument?.room, ''),
                            building: valueOrDefault(
                                currentUserDocument?.building, ''),
                            notes: reasonController!.text,
                            rating: 0,
                            uid: currentUserUid,
                            category: 'Painting',
                            isDone: false,
                            assigned: 'Maintenance Team',
                            photoUrl: uploadedFileUrl,
                            userRec: currentUserReference,
                          );
                          await MaintenanceRecord.collection
                              .doc()
                              .set(maintenanceCreateData);
                          logFirebaseEvent('Button_Bottom-Sheet');
                          await showModalBottomSheet(
                            isScrollControlled: true,
                            backgroundColor: Colors.transparent,
                            barrierColor: Color(0x64F5F5F5),
                            context: context,
                            builder: (context) {
                              return Padding(
                                padding: MediaQuery.of(context).viewInsets,
                                child: SubmittedIconWidget(),
                              );
                            },
                          );
                        },
                        text: FFLocalizations.of(context).getText(
                          'c9brkjw1' /* Submit */,
                        ),
                        options: FFButtonOptions(
                          width: double.infinity,
                          height: 55,
                          color: FlutterFlowTheme.of(context).primaryColor,
                          textStyle:
                              FlutterFlowTheme.of(context).title3.override(
                                    fontFamily: 'Open Sans',
                                    color: Color(0xFFE2E3E7),
                                    fontSize: 18,
                                    fontWeight: FontWeight.w600,
                                  ),
                          borderSide: BorderSide(
                            color: Colors.transparent,
                            width: 1,
                          ),
                          borderRadius: BorderRadius.circular(7),
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
    );
  }
}
