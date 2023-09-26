//
//  testFile.swift
//  CoreModule
//
//  Created by Veit Progl on 26.09.23.
//

import Foundation
import SwiftUI
import Swinject

public class SharedContainer {
    public static var shared = Container()
}

public protocol AppThemeProtocol {
    var color: Color { get set }
}


public struct testView: View {
    public init() {}
    public var body: some View {
        Text("test")
            .onAppear {
                let theme = SharedContainer.shared.resolve(AppThemeProtocol.self)
                print(theme?.color ?? "whoops")
            }
    }
}
