//
//  SwiftUI_SplitViewNavDemoApp.swift
//  watchOSDemo WatchKit Extension
//
//  Created by Russell Archer on 01/06/2021.
//

import SwiftUI

@main
struct SwiftUI_SplitViewNavDemoApp: App {
    @SceneBuilder var body: some Scene {
        WindowGroup {
            NavigationView {
                ContentView()
            }
        }

        WKNotificationScene(controller: NotificationController.self, category: "myCategory")
    }
}
