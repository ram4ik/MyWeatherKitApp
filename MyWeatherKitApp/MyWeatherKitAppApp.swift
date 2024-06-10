//
//  MyWeatherKitAppApp.swift
//  MyWeatherKitApp
//
//  Created by Ramill Ibragimov on 6/9/24.
//

import SwiftUI

@main
struct MyWeatherKitAppApp: App {
    @State private var locationManager = LocationManager()
    
    var body: some Scene {
        WindowGroup {
            if locationManager.isAuthorized {
                ForecastView()
            } else {
                LocationDeniedView()
            }
        }
        .environment(locationManager)
    }
}
