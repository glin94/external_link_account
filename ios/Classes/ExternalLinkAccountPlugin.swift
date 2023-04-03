import Flutter
import UIKit
import StoreKit


public class ExternalLinkAccountPlugin: NSObject, FlutterPlugin,ExternalLinkAccountApi {

    func open(completion: @escaping (Result<ResponseResult, Error>) -> Void)  {

        let versionErrorResult: ResponseResult = ResponseResult(state: ResultState.error, message: "unavailable iOS version")
        
        if #available(iOS 13.0, *) {
            Task {
                do {
                    if #available(iOS 16.0, *) {
                        let canOpen = await ExternalLinkAccount.canOpen
                        if(canOpen) {
                            try await ExternalLinkAccount.open()
                        }
                        else {
                            return completion(.success(ResponseResult(state: ResultState.error, message: "Can't use to open the external link")))
                        }
                    } else {
                        return completion(.success(versionErrorResult))
                    }
                }
                catch {
                    return  completion(.failure(error))
                }
            }
        } else {
            return completion(.success(versionErrorResult)) 
        }
    }
    
    public static func register(with registrar: FlutterPluginRegistrar) {
        
        let instance = ExternalLinkAccountPlugin()
        ExternalLinkAccountApiSetup.setUp(binaryMessenger: registrar.messenger(), api: instance)
        
    }
    
    public func handle(_ call: FlutterMethodCall, result: @escaping FlutterResult) {
        result("iOS " + UIDevice.current.systemVersion)
    }
}


