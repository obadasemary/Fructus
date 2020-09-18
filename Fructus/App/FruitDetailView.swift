//
//  FruitDetailView.swift
//  Fructus
//
//  Created by Abdelrahman Mohamed on 18.09.2020.
//

import SwiftUI

struct FruitDetailView: View {
    
    // MARK: - PROPERTIES
    
    var fruit: Fruit

    // MARK: - BODY
    
    var body: some View {
        NavigationView {
            ScrollView(.vertical, showsIndicators: false) {
                VStack(alignment: .center, spacing: 20) {
                    
//                    Image(fruit.image)
//                        .resizable()
//                        .frame(width: 100, height: 100, alignment: .center)
//                        .cornerRadius(20)
                    
                    VStack(alignment: .leading, spacing: 20) {
                        
                        Text(fruit.title)
                            .font(.largeTitle)
                            .fontWeight(.heavy)
                            .foregroundColor(fruit.gradientColors[1])
                        
                        Text(fruit.headline)
                            .font(.headline)
                            .multilineTextAlignment(.leading)
                        
                        Text("Learn more about \(fruit.title)".uppercased())
                            .fontWeight(.bold)
                            .foregroundColor(fruit.gradientColors[1])
                        
                        Text(fruit.description)
                            .multilineTextAlignment(.leading)
                        
                    }
                    .padding(.horizontal, 20)
                    .frame(maxWidth: 640, alignment: .center)
                }
            }
        }
    }
}

struct FruitDetailView_Previews: PreviewProvider {
    static var previews: some View {
        FruitDetailView(fruit: fruitsData[2])
    }
}