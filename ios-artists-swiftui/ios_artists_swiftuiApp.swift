//
//  ios_artists_swiftuiApp.swift
//  ios-artists-swiftui
//
//  Created by Miguel Moura on 24/05/25.
//

import SwiftUI

@main
struct ios_artists_swiftuiApp: App {
    let persistenceController = PersistenceController.shared

    var body: some Scene {
        WindowGroup {
            ContentView()
                .environment(\.managedObjectContext, persistenceController.container.viewContext)
        }
    }
}
