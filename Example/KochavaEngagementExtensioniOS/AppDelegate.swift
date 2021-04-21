//
//  AppDelegate.swift
//  KochavaEngagementExtensioniOS
//
//  Created by John Bushnell on 05/24/2019.
//  Copyright (c) 2019 - 2021 Kochava. All rights reserved.
//



import UIKit
import UserNotifications



@UIApplicationMain
class AppDelegate: UIResponder, UIApplicationDelegate
{
    
    
    
    var window: UIWindow?
    
    
    
    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?) -> Bool
    {
        // KVALog.shared.level
        // ⓘ Set to trace.  This will result in the KVACoreProduct being registered, and this will be prefaced by any other known modules which are included.  This will be printed to the log where they can be inspected.
        KVALog.shared.level = KVALogLevel.trace
        
        return true
    }
    
    
    
}
