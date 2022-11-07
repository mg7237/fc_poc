#include "include/noc_plugin/noc_plugin_c_api.h"

#include <flutter/plugin_registrar_windows.h>

#include "noc_plugin.h"

void NocPluginCApiRegisterWithRegistrar(
    FlutterDesktopPluginRegistrarRef registrar) {
  noc_plugin::NocPlugin::RegisterWithRegistrar(
      flutter::PluginRegistrarManager::GetInstance()
          ->GetRegistrar<flutter::PluginRegistrarWindows>(registrar));
}
