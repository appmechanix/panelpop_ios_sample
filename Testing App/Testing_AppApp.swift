//
//  Testing_AppApp.swift
//  Testing App
//
//  Created by Daniel Wylie on 09/05/2025.
//

import PanelPop
import SwiftUI

@main
struct Testing_AppApp: App {
    init() {
        PanelPop.initialize("pp1_c60b3357323d5c882525507c5015733a02c5a9d529f10bea3c10627356f9")
    }

    var body: some Scene {
        WindowGroup {
            ContentView()
        }
    }
}
