//
//  AppDelegate.swift
//  BarPresentationSample
//
//  Created by gyuni on 2024/04/18.
//

import UIKit
import DIContainer
import BarDomainStub
import BarDomainInterface
import BarPresentationImplementation
import FooPresentationStub
import FooPresentationInterface

@main
class AppDelegate: UIResponder, UIApplicationDelegate {



    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?) -> Bool {
        // Override point for customization after application launch.

        BarDomainStub.start(container: DIContainer.shared)
        BarPresentationImplementation.start(container: DIContainer.shared)
        FooPresentationStub.start(container: DIContainer.shared)

        (DIContainer.shared.resolve(type: BarServiceInterface.self) as? BarServiceStub)?.stubbedGetMostAwesomeBarEntity = {
            return BarEntity(description: "It's Bar stub!")
        }

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

