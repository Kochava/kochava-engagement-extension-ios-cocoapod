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
        print("KVACoreProduct.shared = \(KVACoreProduct.shared.kva_asForContextObject(withContext: .log)!)")
        print("KVAEngagementExtensionProduct.shared = \(KVAEngagementExtensionProduct.shared.kva_asForContextObject(withContext: .log)!)")
        
        return true
    }
    
    
    
}
