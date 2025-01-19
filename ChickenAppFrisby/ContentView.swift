//
//  ContentView.swift
//  ChickenAppFrisby
//
//  Created by Kevin Cuadros on 17/01/25.
//

import SwiftUI

enum Screens: Codable {
    case favorites
    case cart
    case map
}

struct Tab: Hashable, Codable {
    var icon: String
    var label: String
    var screen: Screens
}

struct Drawer: View {
    var body: some View {
        Color.red
    }
}

struct ContentView: View {
    
    @State var selectedTab: Screens = .favorites
    @State private var isOpenDrawer = true
    private let width = UIScreen.main.bounds.width
    private let height = UIScreen.main.bounds.height
    
    init() {
        UITabBar.appearance().isHidden = true
    }
    
    var body: some View {
        ZStack {
            NavigationStack {
                
                TabView(selection: $selectedTab) {
                    Color(.white)
                        .ignoresSafeArea(.all, edges: .all)
                        .tag(Screens.favorites)
                    
                    Color(.white)
                        .ignoresSafeArea(.all, edges: .all)
                        .tag(Screens.cart)
                    
                    Color(.white)
                        .ignoresSafeArea(.all, edges: .all)
                        .tag(Screens.map)
                }
                .safeAreaInset(edge: .bottom) {
                    NavigationBar(selectedTab: $selectedTab)
                }
                .toolbar {
                    ToolbarItem(placement: .topBarLeading) {
                        Button {
                            withAnimation {
                                isOpenDrawer.toggle()
                            }
                        } label: {
                            Image(systemName: "list.star")
                                .foregroundStyle( isOpenDrawer ? .white : .red)
                                .fontWeight(.bold)
                        }
                    }
                    ToolbarItem(placement: .principal) {
                        Image("frisby")
                            .resizable()
                            .scaledToFit()
                    }
                    ToolbarItem(placement: .topBarTrailing) {
                        Button {
                            
                        } label: {
                            Image(systemName: "person.crop.circle")
                                .foregroundStyle(.red)
                        }
                        
                    }
                }
                
                .overlay {
                    Drawer()
                        .cornerRadius(15)
                        .frame(width: width * 0.8, height: height)
                        .offset(x: isOpenDrawer ? 0 - (width * 0.2) : -width)
                        .animation(.easeInOut, value: isOpenDrawer)
                        .ignoresSafeArea()
                }
            }
        }
    }
}


#Preview {
    ContentView()
}
