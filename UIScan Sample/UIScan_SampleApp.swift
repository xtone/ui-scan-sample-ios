//
//  UIScan_SampleApp.swift
//  UIScanSampleiOS
//
//

import SwiftUI

@main
struct UIScan_SampleApp: App {
    @UIApplicationDelegateAdaptor (AppDelegate.self) var appDelegate

    var body: some Scene {
        WindowGroup {
            ContentView()
        }
    }
}

import UIKit
import SwiftAutoScreenShot

class AppDelegate: NSObject, UIApplicationDelegate {
    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?) -> Bool {
        // TODO: Setting your account Api Key and Project Id.
        AutoScreenShot.shared.setup(apiKey: "api key", projectId: "project id")
        return true
    }
}
