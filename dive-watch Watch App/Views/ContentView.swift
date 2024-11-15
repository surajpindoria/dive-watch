//
//  ContentView.swift
//  dive-watch Watch App
//
//  Created by Suraj Pindoria on 11/15/24.
//

import SwiftUI
import os.log

struct ContentView: View {
    let logger = Logger()
    
    @State private var toDiveView: Bool = false
    
    var body: some View {
        NavigationStack {
            Image(systemName: "globe")
                .imageScale(.large)
                .foregroundStyle(.tint)
            Text("Hello, Diver!")
            Button("Start", action: onStart)
                .navigationDestination(isPresented: $toDiveView) {
                    DiveView()
                }
        }
    }
    
    func onStart() {
        logger.info("*** ContentView: onStart")
        toDiveView = true
    }
}

#Preview {
    ContentView()
}
