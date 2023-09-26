//
//  ContentView.swift
//  HEAG
//
//  Created by Veit Progl on 26.09.23.
//

import SwiftUI
import CoreModule

struct ContentView: View {
    var body: some View {
        VStack {
            Image(systemName: "globe")
                .imageScale(.large)
                .foregroundStyle(.tint)
            Text("Hello, world!")
            testView()
        }
        .padding()
    }
}

#Preview {
    ContentView()
}
