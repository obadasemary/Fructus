//
//  SettingsView.swift
//  Fructus
//
//  Created by Abdelrahman Mohamed on 19.09.2020.
//

import SwiftUI

struct SettingsView: View {
    
    // MARK: - PROPERTIES
    
    @Environment(\.presentationMode) var presentationMode
    
    // MARK: - BODY
    
    var body: some View {
        NavigationView {
            ScrollView(.vertical, showsIndicators: false) {
                VStack(spacing: 20) {
                    
                    // MARK: - SECTION 1
                    GroupBox(label: SettingsLabelView(labelText: "Fructus", labelImage: "info.circle")) {
                        
                        Divider()
                            .padding(.vertical, 4)
                        
                        HStack(alignment: .center, spacing: 10) {
                            
                            Image("logo")
                                .resizable()
                                .scaledToFit()
                                .frame(width: 80, height: 80)
                                .cornerRadius(9)
                            
                            Text("Most fruits are naturally low in fat, sodium and calories. None have cholesterol. Fruits are sources of many essential nutrients, including potassium, dietary fiber, vitamins, and much more.")
                                .font(.footnote)
                        }
                    }
                    
                    // MARK: - SECTION 2
                    
                    GroupBox(label: SettingsLabelView(labelText: "Application", labelImage: "apps.iphone")) {
                        
                        SettingsRowView(name: "Developer", content: "Abdelrahman Mohamed")
                        SettingsRowView(name: "Designer", content: "Nazli Abdelrahman")
                        SettingsRowView(name: "Compatibility", content: "iOS 14")
                        SettingsRowView(name: "GitHub", linkLabel: "@Obadasemary", linkDestination: "github.com/obadasemary")
                        SettingsRowView(name: "Twitter", linkLabel: "@Obadasemary", linkDestination: "twitter.com/obadasemary")
                        SettingsRowView(name: "SwiftUI", content: "2.0")
                        SettingsRowView(name: "Version", content: "1.0.0")
                    }
                    
                    // MARK: - SECTION 3
                    
                }
                .navigationBarTitle(Text("Settings"), displayMode: .large)
                .navigationBarItems(
                    trailing:
                        Button(action: {
                            presentationMode.wrappedValue.dismiss()
                        }) {
                            Image(systemName: "xmark")
                        }
                )
                .padding()
            }
        }
    }
}

struct SettingsView_Previews: PreviewProvider {
    static var previews: some View {
        SettingsView()
            .preferredColorScheme(.dark)
    }
}
