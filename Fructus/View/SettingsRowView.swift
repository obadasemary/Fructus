//
//  SettingsRowView.swift
//  Fructus
//
//  Created by Abdelrahman Mohamed on 20.09.2020.
//

import SwiftUI

struct SettingsRowView: View {
    
    // MARK: - PROPERTIES
    
    var name: String
    var content: String? = nil
    var linkLabel: String? = nil
    var linkDestination: String? = nil
    
    // MARK: - BODY
    
    var body: some View {
        
        VStack {
            
            Divider()
                .padding(.vertical, 4)
            
            HStack(alignment: .center, spacing: 10) {
                
                Text(name)
                    .foregroundColor(.gray)
                
                Spacer()
                
                if (content != nil) {
                    Text(content ?? "")
                } else if (linkLabel != nil && linkDestination != nil) {
                    Link(linkLabel!, destination: URL(string: "https://\(linkDestination!)")!)
                    Image(systemName: "arrow.up.right.square")
                        .foregroundColor(.pink)
                } else {
                    /*@START_MENU_TOKEN@*/EmptyView()/*@END_MENU_TOKEN@*/
                }
            }
        }
    }
}

struct SettingsRowView_Previews: PreviewProvider {
    static var previews: some View {
        Group {
            SettingsRowView(name: "Developer", content: "Obada")
                .previewLayout(.fixed(width: /*@START_MENU_TOKEN@*/375.0/*@END_MENU_TOKEN@*/, height: 60))
                .padding()
            SettingsRowView(name: "Website", linkLabel: "Twitter", linkDestination: "https://twitter.com/obadasemary")
                .preferredColorScheme(.dark)
                .previewLayout(.fixed(width: /*@START_MENU_TOKEN@*/375.0/*@END_MENU_TOKEN@*/, height: 60))
                .padding()
        }
    }
}
