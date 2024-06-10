//
//  LocationDeniedView.swift
//  MyWeatherKitApp
//
//  Created by Ramill Ibragimov on 6/10/24.
//

import SwiftUI

struct LocationDeniedView: View {
    var body: some View {
        ContentUnavailableView {
            Label("Location Services", systemImage: "gear")
        } description: {
            Text("Enable it in Settings")
        } actions: {
            Button {
                UIApplication.shared.open(URL(string: UIApplication.openSettingsURLString)!)
            } label: {
                Text("Open Settings")
            }
            .buttonStyle(.borderedProminent)
        }

    }
}

#Preview {
    LocationDeniedView()
}
