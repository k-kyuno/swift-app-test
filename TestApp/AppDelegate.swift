//
//  AppDelegate.swift
//  TestApp
//
//  Created by Kaoru Kyuno on 2020/06/16.
//  Copyright © 2020 Kaoru Kyuno. All rights reserved.
//

import UIKit
import TestFramework
import SwiftyJSON

@UIApplicationMain
class AppDelegate: UIResponder, UIApplicationDelegate {



    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?) -> Bool {
        
        // Use TestFramework installed by SwiftPM
        let hoge = Hoge()
        hoge.a()
        
        // Use SwiftyJSON installed by Carthage
        if let data = "{\"hoge\": \"fuga\" }".data(using: .utf8) {
            let json = try! JSON(data: data)
            print(json["hoge"])
        }
        
        // Override point for customization after application launch.
        return true
    }

    // MARK: UISceneSession Lifecycle

    func application(_ application: UIApplication, configurationForConnecting connectingSceneSession: UISceneSession, options: UIScene.ConnectionOptions) -> UISceneConfiguration {
        // Called when a new scene session is being created.
        // Use this method to select a configuration to create the new scene with.
        return UISceneConfiguration(name: "Default Configuration", sessionRole: connectingSceneSession.role)
    }

    func application(_ application: UIApplication, didDiscardSceneSessions sceneSessions: Set<UISceneSession>) {
        // Called when the user discards a scene session.
        // If any sessions were discarded while the application was not running, this will be called shortly after application:didFinishLaunchingWithOptions.
        // Use this method to release any resources that were specific to the discarded scenes, as they will not return.
    }


}

