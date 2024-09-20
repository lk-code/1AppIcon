//
//  IconGridView.swift
//  1AppIcon
//
//  Created by Lars Krämer on 20.09.24.
//

import SwiftUI

struct IconSelectionView: View {
    @State private var columns: Int = 3
    
    var body: some View {
        
        GeometryReader { geometry in
            
            ZStack {
                
                Image("backgroundImage")
                    .resizable()
                    .edgesIgnoringSafeArea(.all)
                
                BlurEffectView(material: .sidebar)
                    .edgesIgnoringSafeArea(.all)
                
                ScrollView {
                    
                    LazyVGrid(columns: Array(repeating: GridItem(.flexible()), count: columns), spacing: 10) {
                        
                        ForEach(Icon.all, id: \.name) { icon in
                            
                            VStack {
                                
                                Image(nsImage: NSImage(named: icon.iconName)!)
                                    .resizable()
                                    .aspectRatio(contentMode: .fit)
                                    .frame(width: geometry.size.width / CGFloat(columns) - 10)
                                    .onTapGesture {
                                        setAppIcon(iconName: icon.iconName)
                                    }
                                
                                Text(icon.name)
                                    .font(.caption)
                                    .foregroundColor(.primary)
                                
                            }
                            
                        }
                        
                    }
                    .padding()
                    
                }
                .onAppear {
                    calculateColumns(width: geometry.size.width)
                }
                .onChange(of: geometry.size.width) { newWidth in
                    calculateColumns(width: newWidth)
                }
                
            }
            
        }
        
    }
    
    private func calculateColumns(width: CGFloat) {
        let minColumnWidth: CGFloat = 150
        columns = max(1, Int(width / minColumnWidth))
    }
    
    private func setAppIcon(iconName: String) {
        if let iconImage = NSImage(named: NSImage.Name(iconName)) {
            NSApplication.shared.applicationIconImage = iconImage
            print("App-Icon gesetzt: \(iconName)")
        } else {
            print("Fehler: Icon mit Namen \(iconName) konnte nicht gefunden werden.")
        }
    }
}
