//
//  ContentView.swift
//  ChickenAppFrisby
//
//  Created by Kevin Cuadros on 17/01/25.
//

import SwiftUI

enum Tabs {
    case orders
}

struct ContentView: View {
    
    @State private var selectedTab: Tabs = .orders
    
    var body: some View {
        TabView(selection: $selectedTab) {
            Tab("Mis pedidos", systemImage: "star", value: .orders) {
                Text("")
            }
            Tab("Pide en linea", systemImage: "cart", value: .orders) {
                Text("")
            }
            Tab("Restaurantes", systemImage: "mappin.and.ellipse", value: .orders) {
                Text("")
            }
        }
    }
}

#Preview {
    ContentView()
}
