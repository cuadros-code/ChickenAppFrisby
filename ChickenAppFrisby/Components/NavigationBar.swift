//
//  NavigationBar.swift
//  ChickenAppFrisby
//
//  Created by Kevin Cuadros on 18/01/25.
//

import SwiftUI

struct NavigationBar: View {
    
    var navigationsTabs: [Tab] = [
        Tab(icon: "star", label: "Favoritos"),
        Tab(icon: "cart", label: "Comprar "),
        Tab(icon: "mappin.circle", label: "Restaurantes"),
    ]
    
    @Binding var selectedTab: String
    
    var body: some View {
        HStack(spacing: 0){
            ForEach(navigationsTabs, id: \.icon) { tab in
                Spacer()
                Button(action: {
                    selectedTab = tab.icon
                }) {
                    VStack {
                        Image(systemName: tab.icon)
                            .resizable()
                            .renderingMode(.template)
                            .aspectRatio(contentMode: .fit)
                            .frame(width: 22.0, height: 22.0)
                            .fontWeight(.bold)
                        Text(tab.label)
                            .font(.footnote)
                            .fontWeight(.bold)
                    }
                    .padding()
                    .foregroundStyle(
                        tab.icon == selectedTab ? .white : .gray
                    )
                    .background {
                        if tab.icon == selectedTab {
                            Circle()
                                .fill(.orange.opacity(0.8))
                                .frame(width: 150, height: 150)
                            
                            
                        }
                    }
                }
            }
        }
        .frame(maxWidth: .infinity)
        .background(.white)
        .cornerRadius(17)
        .padding()
        .shadow(color: .gray.opacity(0.4), radius: 5, x: 0, y: 3)
    }
}

#Preview {
    NavigationBar(selectedTab: .constant("star"))
}
