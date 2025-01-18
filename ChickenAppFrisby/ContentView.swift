//
//  ContentView.swift
//  ChickenAppFrisby
//
//  Created by Kevin Cuadros on 17/01/25.
//

import SwiftUI

struct Tab: Hashable, Codable {
    var icon: String
    var label: String
}

struct ContentView: View {
    
    @State var selectedTab = "star"
    
    init() {
        UITabBar.appearance().isHidden = true
    }
    
    var body: some View {
        NavigationStack {
            TabView(selection: $selectedTab) {
                Color(.white)
                    .ignoresSafeArea(.all, edges: .all)
                    .tag("star")
                
                Color(.white)
                    .ignoresSafeArea(.all, edges: .all)
                    .tag("cart")
                
                Color(.white)
                    .ignoresSafeArea(.all, edges: .all)
                    .tag("mappin.circle")
            }
            .ignoresSafeArea()
            .safeAreaInset(edge: .bottom) {
                NavigationBar(selectedTab: $selectedTab)
            }
            .toolbar {
                ToolbarItem(placement: .topBarLeading) {
                    Image(systemName: "list.star")
                        .foregroundStyle(.red)
                }
                ToolbarItem(placement: .principal) {
                    Image("frisby")
                        .resizable()
                        .scaledToFit()
                }
                ToolbarItem(placement: .topBarTrailing) {
                    Image(systemName: "person.crop.circle")
                        .foregroundStyle(.red)
                }
            }
            
            .navigationTitle("Frisby")
            .navigationBarTitleDisplayMode(.inline)
            
        }
    }
}


#Preview {
    ContentView()
}
