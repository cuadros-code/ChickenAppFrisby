//
//  DrawerMenu.swift
//  ChickenAppFrisby
//
//  Created by Kevin Cuadros on 19/01/25.
//

import SwiftUI

struct DrawerContent: View {
    
    var body: some View {
        VStack(alignment: .leading) {
            HStack {
                VStack {
                    Text("Kevin Cuadros")
                    Text("kevin@gmail.com")
                }
                Spacer()
            }
            .padding()
        }
        .frame(maxWidth: .infinity, maxHeight: .infinity)
        .background(.white)
        .padding()
        .safeAreaPadding(.top, 80)
        
    }
}

#Preview {
    DrawerContent()
}
