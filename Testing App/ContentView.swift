//
//  ContentView.swift
//  Testing App
//
//  Created by Daniel Wylie on 09/05/2025.
//

import PanelPop
import SwiftUI

struct ContentView: View {
    @State var showPanel = false

    var body: some View {
        VStack {
            Image(systemName: "globe")
                .imageScale(.large)
                .foregroundStyle(.tint)
            Text("Hello, world!")

            Button {
                showPanel.toggle()
            } label: {
                Text("Show Panel")
                    .padding()
                    .background(.blue)
                    .foregroundColor(.white)
                    .cornerRadius(8)
            }
        }
        .padding()
        .popover(isPresented: $showPanel) {
            PanelPopView("demo_panel")
        }
    }
}

struct ContentPreviewWrapper: View {
    init() {
        PanelPop.initialize("pp1_c60b3357323d5c882525507c5015733a02c5a9d529f10bea3c10627356f9")
    }
    
    var body: some View {
        ContentView()
    }
}

#Preview {
    ContentPreviewWrapper()
}
