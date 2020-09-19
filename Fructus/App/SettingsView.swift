//
//  SettingsView.swift
//  Fructus
//
//  Created by Abdelrahman Mohamed on 19.09.2020.
//

import SwiftUI

struct SettingsView: View {
    
    // MARK: - PROPERTIES
    
    var fruit: Fruit

    // MARK: - BODY
    
    var body: some View {
        NavigationView {
            ScrollView(.vertical, showsIndicators: false) {
                VStack(spacing: 20) {
                    Text(/*@START_MENU_TOKEN@*/"Hello, World!"/*@END_MENU_TOKEN@*/)
                }
                .navigationBarTitle(Text("Settings"), displayMode: .large)
            }
        }
    }
}

struct SettingsView_Previews: PreviewProvider {
    static var previews: some View {
        SettingsView(fruit: fruitsData[9])
            .preferredColorScheme(.dark)
            .previewDevice("iPhone 11 Pro")
    }
}
