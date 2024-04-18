//
//  AppDelegate.swift
//  App
//
//  Created by gyuni on 2024/04/16.
//

import UIKit
import DIContainer

import FooDomainImplementation
import FooDataImplementation
import FooPresentationImplementation

import BarDomainImplementation
import BarDataImplementation
import BarPresentationImplementation

let container = DIContainer.shared

@main
class AppDelegate: UIResponder, UIApplicationDelegate {


    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?) -> Bool {
        // Override point for customization after application launch.
        let container = DIContainer.shared

        FooDomainImplementation.start(container: container)
        FooDataImplementation.start(container: container)
        FooPresentationImplementation.start(container: container)

        BarDomainImplementation.start(container: container)
        BarDataImplementation.start(container: container)
        BarPresentationImplementation.start(container: container)

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

