//
//  AboutView.swift
//  1AppIcon
//
//  Created by Lars Krämer on 20.09.24.
//

import SwiftUI

struct AboutView: View {
    
    var body: some View {
        
        GeometryReader { geometry in
            
            ZStack {
                // Hintergrundbild mit Blur-Effekt
                Image("backgroundImage") // Hier Bildname ersetzen
                    .resizable()
                    .edgesIgnoringSafeArea(.all)
                
                // Blur-Effekt-Overlay
                BlurEffectView(material: .sidebar)
                    .edgesIgnoringSafeArea(.all)
                
                // Hauptinhalt
                ScrollView {
                    
                    Spacer()
                    
                    Text("1AppIcon by lk-code")
                        .font(.largeTitle)
                        .foregroundColor(.primary)
                    
                    Text("Version: 1.0.0 beta")
                        .font(.headline)
                        .foregroundColor(.primary)
                    
                    Spacer()
                    
                    Text("headline")
                        .font(.headline)
                        .foregroundColor(.primary)
                    
                    Text("subheadline")
                        .font(.subheadline)
                        .foregroundColor(.primary)
                    
                    Text("title")
                        .font(.title)
                        .foregroundColor(.primary)
                    
                    Text("title2")
                        .font(.title2)
                        .foregroundColor(.primary)
                    
                    Text("title3")
                        .font(.title3)
                        .foregroundColor(.primary)
                    
                    Text("callout")
                        .font(.callout)
                        .foregroundColor(.primary)
                    
                    Text("footnote")
                        .font(.footnote)
                        .foregroundColor(.primary)
                    
                    Spacer()
                            
                }
                
            }
            
        }
        
    }
    
}
