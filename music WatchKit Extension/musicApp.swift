//
//  musicApp.swift
//  music WatchKit Extension
//
//  Created by Camilo Rodriguez on 22/06/21.
//

import SwiftUI

@main
struct musicApp: App {
    @SceneBuilder var body: some Scene {
        WindowGroup {
            NavigationView {
                ContentView()
            }
        }

        WKNotificationScene(controller: NotificationController.self, category: "myCategory")
    }
}
