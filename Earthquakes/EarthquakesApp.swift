//
//  EarthquakesApp.swift
//  Earthquakes
//
//  Created by Atikur Rahman on 9/16/23.
//

import SwiftUI

@main
struct EarthquakesApp: App {
    @StateObject var quakesProvider = QuakesProvider()
    
    var body: some Scene {
        WindowGroup {
            Quakes()
                .environmentObject(quakesProvider)
        }
    }
}
