//
//  Target_hotel.swift
//  hotel
//
//  Created by Mikey on 2018/1/10.
//

import UIKit

@objc(Target_hotel)
class Target_hotel: NSObject {
    
    @objc
    func Action_viewController(params:NSDictionary) -> UIViewController {
        
        let block = params["callback"]
        typealias CallbackType = @convention(block) (NSString) -> Void
        
        let blockPtr = UnsafeRawPointer(Unmanaged<AnyObject>.passUnretained(block as AnyObject).toOpaque())
        let callback = unsafeBitCast(blockPtr, to: CallbackType.self)
        
        callback("hotelsuccess")
        
        let aViewController = HotelViewController()
        return aViewController
    }

}
