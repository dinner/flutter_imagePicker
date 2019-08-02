import Flutter
import UIKit
import Photos
    
public class SwiftFlutterMultipleImagePickerPlugin: NSObject, FlutterPlugin {
   static var _vc:UIViewController?=nil
   var _result:FlutterResult?=nil
 
  public static func register(with registrar: FlutterPluginRegistrar) {
    let channel = FlutterMethodChannel(name: "flutter_multiple_image_picker", binaryMessenger: registrar.messenger())
    let instance = SwiftFlutterMultipleImagePickerPlugin()
    registrar.addMethodCallDelegate(instance, channel: channel)
  }

  public func handle(_ call: FlutterMethodCall, result: @escaping FlutterResult) {
    let vc=UIApplication.shared.keyWindow!.rootViewController
    _result=result
    var arg = call.arguments as? Dictionary<String,AnyObject>
    if call.method == "pickUpImagesImage"{
        if(arg != nil){
            if let type = arg!["imageOrVideo"] as? Int{
                if let max = arg!["maxImages"] as? Int{
                    _ = vc!.presentHGImagePicker(type: type, maxSelected:max) { (files) in
                        print("共选择了\(files.count)张图片，分别如下：")
                        self._result!(files as [String]);
                    }
                }
            }
        }
    }
  }
}
