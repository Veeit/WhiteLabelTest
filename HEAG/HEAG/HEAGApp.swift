//
//  HEAGApp.swift
//  HEAG
//
//  Created by Veit Progl on 26.09.23.
//

import SwiftUI
import CoreModule
import Swinject

struct HeagTheme: AppThemeProtocol {
    var color: Color = .red
}

@main
struct HEAGApp: App {
    var body: some Scene {
        WindowGroup {
            ContentView()
                .onAppear {
                    SharedContainer.shared.register(AppThemeProtocol.self) { _ in HeagTheme() }
                        .inObjectScope(.container)
                }
        }
    }
}
