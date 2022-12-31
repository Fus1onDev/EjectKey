//
//  EjectKeyApp.swift
//  EjectKey
//
//  Created by fus1ondev on 2022/08/06.
//

import SwiftUI
import Defaults

@main
struct EjectKeyApp: App {
    @Default(.showNumberOfConnectedVolumes) var showNumberOfConnectedVolumes
    
    @StateObject var model = AppModel()
    
    var body: some Scene {

        MenuBarExtra {
            MenuView(model: model)
        } label: {
            Image(systemSymbol: .ejectFill)
            Text(String(model.volumes.count))
                .hidden(!showNumberOfConnectedVolumes)
        }
        Settings {
            SettingsView(model: model)
        }
    }
}
