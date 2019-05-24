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
        // KVAEngagementExtensionProduct
        KVACoreProduct.shared.register()
        print("KVACoreProduct.shared.nameWithVersionString=\(KVACoreProduct.shared.nameWithVersionString)")

        // KVAEngagementExtensionProduct
        KVAEngagementExtensionProduct.shared.register()
        print("KVAEngagementExtensionProduct.shared.nameWithVersionString=\(KVAEngagementExtensionProduct.shared.nameWithVersionString)")
        
        return true
    }
    
    
    
}
