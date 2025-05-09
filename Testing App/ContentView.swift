//
//  ContentView.swift
//  Testing App
//
//  Created by Daniel Wylie on 09/05/2025.
//

import PanelPop
import SwiftUI

struct ContentView: View {
    let panelPop = PanelPop.Initialize("pp1_c60b3357323d5c882525507c5015733a02c5a9d529f10bea3c10627356f9")
    @State private var loadedPanel: PanelPopPanel? = nil
    
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
            Group {
                if let panel = loadedPanel {
                    PanelPopView(panel)
                } else {
                    ProgressView("Loading...")
                }
            }
            .task {
                if loadedPanel == nil {  // avoid reloading if it's already loaded
                    loadedPanel = await panelPop.ShowPopup("demo_panel")
                }
            }
        }
    }
}

#Preview {
    ContentView()
}
