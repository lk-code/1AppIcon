//
//  ContentView.swift
//  1AppIcon
//
//  Created by Lars Krämer on 18.09.24.
//

import SwiftUI

struct ContentView: View {
    
    var body: some View {
        
        NavigationStack {
            
            HStack {
                
                VStack(spacing: 40) {
                    
                    NavigationLink(destination: IconSelectionView()) {
                        Label("Icons Grid", systemImage: "app.dashed")
                    }
                    
                    NavigationLink(destination: AboutView()) {
                        Label("About", systemImage: "info.circle")
                    }
                    
                }
                .navigationTitle("Main View")
                
                IconSelectionView()
                
            }
            
        }
        
    }
    
}

#Preview {
    ContentView()
}
