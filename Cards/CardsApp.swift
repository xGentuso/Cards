//
//  CardsApp.swift
//  Cards
//
//  Created by ryan mota on 2025-02-03.
//

import SwiftUI

@main
struct CardsApp: App {
    @StateObject var store = CardStore(defaultData: true)

    var body: some Scene {
        WindowGroup {
            CardsListView()
                .environmentObject(store)

        }
    }
    
}
