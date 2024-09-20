//
//  BlurEffectView.swift
//  1AppIcon
//
//  Created by Lars Krämer on 20.09.24.
//

import SwiftUI

struct BlurEffectView: NSViewRepresentable {
    var material: NSVisualEffectView.Material
    
    func makeNSView(context: Context) -> NSVisualEffectView {
        let view = NSVisualEffectView()
        view.material = material
        view.blendingMode = .behindWindow
        view.state = .active
        return view
    }
    
    func updateNSView(_ nsView: NSVisualEffectView, context: Context) {
        nsView.material = material
    }
}
