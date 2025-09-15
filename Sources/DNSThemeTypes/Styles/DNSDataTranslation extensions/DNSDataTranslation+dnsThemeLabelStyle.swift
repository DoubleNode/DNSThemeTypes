//
//  DNSDataTranslation+dnsThemeLabelStyle.swift
//  DoubleNode Swift Framework (DNSFramework) - DNSDataObjects
//
//  Created by Darren Ehlers.
//  Copyright © 2025 - 2016 DoubleNode.com. All rights reserved.
//

import DNSCore
import Foundation

public extension DNSDataTranslation {
    // swiftlint:disable:next cyclomatic_complexity
    func dnsThemeLabelStyle(from any: Any?) -> DNSThemeLabelStyle? {
        guard let any else { return nil }
        if any is DNSDataDictionary {
            return self.dnsThemeLabelStyle(from: any as? DNSDataDictionary)
        }
        return self.dnsThemeLabelStyle(from: any as? DNSThemeLabelStyle)
    }
    func dnsThemeLabelStyle(from data: DNSDataDictionary?) -> DNSThemeLabelStyle? {
        guard let data else { return nil }
        var baseStyle = DNSThemeLabelStyle.default
        if let baseStyleName = self.string(from: data["_baseStyle"] as Any?) {
            // swiftlint:disable:next force_cast
            baseStyle = DNSThemeLabelStyle.themeStyle(named: baseStyleName) as! DNSThemeLabelStyle
        }
        let newStyle = DNSThemeLabelStyle(from: baseStyle)
        newStyle.setName = "Imported"
        newStyle.name = UUID().uuidString
        return newStyle.dao(from: data)
    }
    func dnsThemeLabelStyle(from dnsThemeLabelStyle: DNSThemeLabelStyle?) -> DNSThemeLabelStyle? {
        guard let dnsThemeLabelStyle else { return nil }
        return dnsThemeLabelStyle
    }
}
