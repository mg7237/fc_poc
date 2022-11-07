library poc_plugin;

import 'package:flutter/material.dart';
import 'package:flutter_inappwebview/flutter_inappwebview.dart';
import 'data.dart';

class NocPlugin extends StatefulWidget {
  const NocPlugin({super.key});

  @override
  State<NocPlugin> createState() => _NocPluginState();
}

class _NocPluginState extends State<NocPlugin> {
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: MediaQuery.of(context).size.width - 20,
      child: InAppWebView(
        initialOptions: InAppWebViewGroupOptions(
          crossPlatform: InAppWebViewOptions(
            useOnDownloadStart: true,
            javaScriptCanOpenWindowsAutomatically: true,
            javaScriptEnabled: true,
            useShouldOverrideUrlLoading: true,
          ),
          ios: IOSInAppWebViewOptions(
            sharedCookiesEnabled: true,
          ),
        ),
        //  initialFile: "assets/js/index.html",
        initialData: InAppWebViewInitialData(data: chartHTML),
        onWebViewCreated: (InAppWebViewController controller) {
          controller.addJavaScriptHandler(
              handlerName: 'fileDetailsHandler',
              callback: (args) {
                print('LLL Dart Handler Callback: $args');
              });
        },
        onConsoleMessage: (controller, message) {
          print('LLL' + message.toString());
        },
        onDownloadStartRequest: (controller, string) {
          print('LLL' + string.toString());
        },
      ),
    );
  }
}
