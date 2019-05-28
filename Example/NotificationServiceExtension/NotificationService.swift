
//
//  NotificationService.swift
//  KochavaHostiOSApp NotificationServiceExtension
//
//  Created by John Bushnell on 5/24/19.
//  Copyright © 2019 Kochava, Inc. All rights reserved.
//



import UserNotifications



class NotificationService: UNNotificationServiceExtension
{
    
    
    
    // MARK: - PROPERTIES
    
    
    
    var contentHandler: ((UNNotificationContent) -> Void)?
    
    
    
    var bestAttemptContent: UNMutableNotificationContent?
    
    
    
    let tokenReplacementDictionary: [String: String] = [
        "name": "Leroy",
        "location": "Bob's Burger Stand"
    ]
    
    
    
    // MARK: - LIFECYCLE
    
    
    
    override func didReceive(_ request: UNNotificationRequest, withContentHandler contentHandler: @escaping (UNNotificationContent) -> Void)
    {
        // VALIDATE ELSE RETURN
        // contentHandler
        self.contentHandler = contentHandler
        
        // content
        // ⓘ Make a mutable copy of the original.
        guard let content = (request.content.mutableCopy() as? UNMutableNotificationContent) else
        {
            return
        }
        
        // MAIN
        // self.bestAttemptContent
        self.bestAttemptContent = content
        
        // KVAEngagementExtensionProduct
        // ⓘ Register.  This is an optional product.  If not registered, the category extension method(s) are unavailable at runtime.
        KVAEngagementExtensionProduct.shared.register()
        
        // self
        // ⓘ Did receive notification request.  Pass on to Kochava for processing.
        self.kva_didReceive(notificationRequest: request, withContent: content, tokenReplacementDictionary: self.tokenReplacementDictionary)
        {
            (asynchronousNotificationAttachmentArray) in
            
            if let asynchronousNotificationAttachmentArray = asynchronousNotificationAttachmentArray
            {
                content.attachments.append(contentsOf: asynchronousNotificationAttachmentArray)
            }
            contentHandler(content)
        }
    }
    
    
    
    override func serviceExtensionTimeWillExpire()
    {
        // Called just before the extension will be terminated by the system.
        // Use this as an opportunity to deliver your "best attempt" at modified content, otherwise the original push payload will be used.
        if let contentHandler = contentHandler, let bestAttemptContent =  bestAttemptContent
        {
            contentHandler(bestAttemptContent)
        }
    }
    
    
    
}
