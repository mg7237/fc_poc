#ifndef FLUTTER_PLUGIN_NOC_PLUGIN_H_
#define FLUTTER_PLUGIN_NOC_PLUGIN_H_

#include <flutter/method_channel.h>
#include <flutter/plugin_registrar_windows.h>

#include <memory>

namespace noc_plugin {

class NocPlugin : public flutter::Plugin {
 public:
  static void RegisterWithRegistrar(flutter::PluginRegistrarWindows *registrar);

  NocPlugin();

  virtual ~NocPlugin();

  // Disallow copy and assign.
  NocPlugin(const NocPlugin&) = delete;
  NocPlugin& operator=(const NocPlugin&) = delete;

 private:
  // Called when a method is called on this plugin's channel from Dart.
  void HandleMethodCall(
      const flutter::MethodCall<flutter::EncodableValue> &method_call,
      std::unique_ptr<flutter::MethodResult<flutter::EncodableValue>> result);
};

}  // namespace noc_plugin

#endif  // FLUTTER_PLUGIN_NOC_PLUGIN_H_
