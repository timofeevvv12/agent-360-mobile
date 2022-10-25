import '../flutter_flow/flutter_flow_icon_button.dart';
import '../flutter_flow/flutter_flow_theme.dart';
import '../flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class SettingsWidget extends StatefulWidget {
  const SettingsWidget({Key? key}) : super(key: key);

  @override
  _SettingsWidgetState createState() => _SettingsWidgetState();
}

class _SettingsWidgetState extends State<SettingsWidget> {
  bool? switchListTileValue1;
  bool? switchListTileValue2;
  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: scaffoldKey,
      backgroundColor: FlutterFlowTheme.of(context).primaryBackground,
      appBar: AppBar(
        backgroundColor: Colors.white,
        automaticallyImplyLeading: false,
        leading: FlutterFlowIconButton(
          borderColor: Colors.transparent,
          borderRadius: 30,
          borderWidth: 1,
          buttonSize: 54,
          icon: Icon(
            Icons.close,
            color: FlutterFlowTheme.of(context).primaryText,
            size: 24,
          ),
          onPressed: () async {
            context.pop();
          },
        ),
        title: Text(
          FFLocalizations.of(context).getText(
            '32r9tqls' /* Settings */,
          ),
          style: FlutterFlowTheme.of(context).title2.override(
                fontFamily: 'Inter',
                color: FlutterFlowTheme.of(context).primaryText,
                fontSize: 22,
                useGoogleFonts: false,
              ),
        ),
        actions: [],
        centerTitle: true,
        elevation: 0,
      ),
      body: SafeArea(
        child: GestureDetector(
          onTap: () => FocusScope.of(context).unfocus(),
          child: Padding(
            padding: EdgeInsetsDirectional.fromSTEB(24, 24, 24, 0),
            child: Column(
              mainAxisSize: MainAxisSize.max,
              children: [
                Row(
                  mainAxisSize: MainAxisSize.max,
                  children: [
                    Text(
                      FFLocalizations.of(context).getText(
                        'lffx6phq' /* App settings */,
                      ),
                      style: FlutterFlowTheme.of(context).subtitle1,
                    ),
                  ],
                ),
                Padding(
                  padding: EdgeInsetsDirectional.fromSTEB(0, 12, 0, 0),
                  child: SwitchListTile.adaptive(
                    value: switchListTileValue1 ??= false,
                    onChanged: (newValue) async {
                      setState(() => switchListTileValue1 = newValue);
                    },
                    title: Text(
                      FFLocalizations.of(context).getText(
                        'xparl76g' /* Sound */,
                      ),
                      style: FlutterFlowTheme.of(context).bodyText2,
                    ),
                    dense: true,
                    controlAffinity: ListTileControlAffinity.trailing,
                  ),
                ),
                Padding(
                  padding: EdgeInsetsDirectional.fromSTEB(0, 12, 0, 0),
                  child: SwitchListTile.adaptive(
                    value: switchListTileValue2 ??= false,
                    onChanged: (newValue) async {
                      setState(() => switchListTileValue2 = newValue);
                    },
                    title: Text(
                      FFLocalizations.of(context).getText(
                        'ezx19xkm' /* Show grid */,
                      ),
                      style: FlutterFlowTheme.of(context).bodyText2,
                    ),
                    dense: true,
                    controlAffinity: ListTileControlAffinity.trailing,
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
