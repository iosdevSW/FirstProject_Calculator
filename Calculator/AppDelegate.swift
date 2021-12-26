//
//  AppDelegate.swift
//  Calculator
//
//  Created by 신상우 on 2020/07/05.
//  Copyright © 2020 SangWoo Shin. All rights reserved.
//

import UIKit

@UIApplicationMain
class AppDelegate: UIResponder, UIApplicationDelegate {

    var window: UIWindow?

    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?) -> Bool {
        // Override point for customization after application launch.
        
        self.window = UIWindow(frame: UIScreen.main.bounds)
        let initVC = ViewController()   
        self.window?.rootViewController = initVC
        self.window?.makeKeyAndVisible()
        
        return true
    }

}

