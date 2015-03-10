// Playground - noun: a place where people can play

import UIKit

var str = "Hello, playground"



import XCPlayground
import Foundation




func httpGet(request: NSURLRequest!, callback: (String, String?) -> Void) {
    var session = NSURLSession.sharedSession()
    var task = session.dataTaskWithRequest(request){
        (data, response, error) -> Void in
        if error != nil {
            callback("", error.localizedDescription)
        } else {
            var result = NSString(data: data, encoding:
                NSASCIIStringEncoding)!
            callback(result, nil)
        }
    }
    task.resume()
}

var request3 = NSMutableURLRequest(URL: NSURL(string: "http://www.google.com")!)
    httpGet(request3){
        (data, error) -> Void in
        if error != nil {
            println(error)
        } else {
            println(data)
        }
    }
    XCPSetExecutionShouldContinueIndefinitely(continueIndefinitely: true)


///


