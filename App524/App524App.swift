//
//  App524App.swift
//  App524
//
//  Created by Вячеслав on 4/26/24.
//

import SwiftUI
import OneSignalFramework

class AppDelegate: NSObject, UIApplicationDelegate {
    
    var window: UIWindow?
    
    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?) -> Bool {
        
        OneSignal.initialize(DataManager().oneSignalID, withLaunchOptions: launchOptions)
        
        return true
    }
}

@main
struct App524App: App {
    
    @UIApplicationDelegateAdaptor(AppDelegate.self) var delegate
    
    var body: some Scene {
        
        WindowGroup {
            
            NavigationView {
                
                ContentView()
            }
        }
    }
}
