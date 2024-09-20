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
    
    func getAppIconName() -> String {
        return "App Icons/" + iconName
    }

    #if DEBUG
        static let all: [Icon] = [
            .developer,
            .blockhouse,
            .folderdocuments,
            .folderyellow,
            .boxempty,
            .boxfilled,
            .home
        ]
    #else
        static let all: [Icon] = [
            .blockhouse,
            .folderdocuments,
            .folderyellow,
            .boxempty,
            .boxfilled,
            .home
        ]
    #endif
}

extension Icon {
    static let developer = Icon(
        name: .init(localized: .init("Icon Name: Developer", defaultValue: "Developer")),
        iconName: "AppIcon-Developer"
    )
    
    static let blockhouse = Icon(
        name: .init(localized: .init("Icon Name: Blockhouse", defaultValue: "Blockhouse")),
        iconName: "AppIcon-BlockHouse"
    )
    
    static let folderdocuments = Icon(
        name: .init(localized: .init("Icon Name: Documents Folder", defaultValue: "Documents Folder")),
        iconName: "AppIcon-DocumentsFolder"
    )
    
    static let folderyellow = Icon(
        name: .init(localized: .init("Icon Name: Yellow Folder", defaultValue: "Yellow Folder")),
        iconName: "AppIcon-YellowFolder"
    )
    
    static let boxempty = Icon(
        name: .init(localized: .init("Icon Name: Box", defaultValue: "Box")),
        iconName: "AppIcon-EmptyBox"
    )
    
    static let boxfilled = Icon(
        name: .init(localized: .init("Icon Name: Filled Box", defaultValue: "Filled Box")),
        iconName: "AppIcon-FilledContainer"
    )
    
    static let home = Icon(
        name: .init(localized: .init("Icon Name: Home", defaultValue: "Home")),
        iconName: "AppIcon-Home"
    )
}
