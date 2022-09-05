//
//  AnimatableVectorDemoApp.swift
//  Shared
//
//  Created by Keith Bromley on 8/24/22.
//

import SwiftUI

// Declare a global variable:
var animationOn: Bool = false

@main
struct AnimatableVectorDemoApp: App {
    var body: some Scene {
        WindowGroup {
            ContentView()
                .environmentObject(DataSource.dataSource)
                .frame( minWidth:  100.0, idealWidth:  800.0, maxWidth:  .infinity,
                        minHeight: 100.0, idealHeight: 800.0, maxHeight: .infinity, alignment: .center)
        }
    }
}
