//
//  AppDelegate.swift
//  KochavaEngagementExtensioniOS
//
//  Created by John Bushnell on 05/24/2019.
//  Copyright (c) 2019 Kochava. All rights reserved.
//



import UIKit
import UserNotifications



@UIApplicationMain
class AppDelegate: UIResponder, UIApplicationDelegate
{
    
    
    
    var window: UIWindow?
    
    
    
    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplicationLaunchOptionsKey: Any]?) -> Bool
    {
        print("KVACoreProduct.shared.standardVersionInfoString = \(KVACoreProduct.shared.standardVersionInfoString)")
        print("KVAEngagementExtensionProduct.shared.standardVersionInfoString = \(KVAEngagementExtensionProduct.shared.standardVersionInfoString)")
        
        return true
    }
    
    
    
}
