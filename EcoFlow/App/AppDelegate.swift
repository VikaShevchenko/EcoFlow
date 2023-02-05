//
//  AppDelegate.swift
//  EcoFlow
//
// Created by Viktoria on 01.02.2023.
//

import UIKit


@main
class AppDelegate: UIResponder, UIApplicationDelegate {


    var window: UIWindow?

    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?) -> Bool {
        // Override point for customization after application launch.
        
        let frame = UIScreen.main.bounds
        window = UIWindow(frame: frame)
        // ROOT VIEW CONTROLLER - Корневий Вью Контроллер
        window!.rootViewController =  UINavigationController(rootViewController: UsersListDevicesViewController())
        window!.makeKeyAndVisible()
        
        return true
    }


}

