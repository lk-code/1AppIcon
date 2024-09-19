//
//  Icon.swift
//  1AppIcon
//
//  Created by Lars Krämer on 17.09.24.
//

import SwiftUI

struct Icon: Hashable {
    var name: String
    var iconName: String

    #if DEBUG
        static let all: [Icon] = [
            .developer,
            .folderdocuments,
            .folderyellow
        ]
    #else
        static let all: [Icon] = [
            .folderdocuments,
            .folderyellow
        ]
    #endif
}

extension Icon {
    static let developer = Icon(
        name: .init(localized: .init("Icon Name: Developer", defaultValue: "Developer")),
        iconName: "AppIcon-Developer"
    )
    
    static let folderdocuments = Icon(
        name: .init(localized: .init("Icon Name: Documents Folder", defaultValue: "Documents Folder")),
        iconName: "AppIcon-DocumentsFolder"
    )
    
    static let folderyellow = Icon(
        name: .init(localized: .init("Icon Name: Yellow Folder", defaultValue: "Yellow Folder")),
        iconName: "AppIcon-YellowFolder"
    )
    
    static let folderyellow = Icon(
        name: .init(localized: .init("Icon Name: Filled Container", defaultValue: "Filled Container")),
        iconName: "AppIcon-FilledContainer"
    )
}
