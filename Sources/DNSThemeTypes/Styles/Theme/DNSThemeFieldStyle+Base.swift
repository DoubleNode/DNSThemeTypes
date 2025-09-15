//
//  DNSThemeFieldStyle+Base.swift
//  DoubleNode Swift Framework (DNSFramework) - DNSThemeTypes
//
//  Created by Darren Ehlers.
//  Copyright © 2025 - 2016 DoubleNode.com. All rights reserved.
//

import DNSCoreThreading
import UIKit

public extension DNSThemeFieldStyle {
    enum Base {
        public static func initThemes() {
            DNSThemeFieldStyle.initThemes(block: createThemes)
        }
        public static let createThemes: DNSBlock = {
            _ = Self.default
        }
        public static var `default` = DNSThemeFieldStyle(styleName: "default",
                                                         styleSetName: "Base")
    }
}
