//
//  OnboardingView.swift
//  Fructus
//
//  Created by Abdelrahman Mohamed on 17.09.2020.
//

import SwiftUI

struct OnboardingView: View {
    
    // MARK: - PROPERTIES

    // MARK: - BODY
    
    var body: some View {
        TabView {
            ForEach(0 ..< 5) { item in
                FruitCardView()
            }
        }
        .tabViewStyle(PageTabViewStyle())
        .padding(.vertical, 20)
    }
}

// MARK: - PREVIEW

struct OnboardingView_Previews: PreviewProvider {
    static var previews: some View {
        OnboardingView()
    }
}
