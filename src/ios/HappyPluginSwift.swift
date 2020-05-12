@objc(HappyPluginSwift) class HappyPluginSwift : CDVPlugin {
  func happyMethod(command: CDVInvokedUrlCommand) {
        var pluginResult = CDVPluginResult( status: CDVCommandStatus_ERROR )

        let msg = command.arguments[0] as? String ?? "Happy Plugin Message!!"

        let alert = UIAlertController(title: "Happy Day",
                                       message: msg,
                                       preferredStyle: .alert)

             let ok = UIAlertAction(title: "OK", style: .default, handler: { action in })
             alert.addAction(ok)
             let cancel = UIAlertAction(title: "Cancel", style: .default, handler: { action in })
             alert.addAction(cancel)
             DispatchQueue.main.async(execute: {
                self.viewController?.present(alert, animated: true)
        })

        pluginResult = CDVPluginResult( status: CDVCommandStatus_OK, messageAs: msg )

        self.commandDelegate!.send( pluginResult, callbackId: command.callbackId )
    }
}
