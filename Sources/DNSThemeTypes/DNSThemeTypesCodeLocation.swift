//
//  DNSThemeTypesCodeLocation.swift
//  DoubleNode Swift Framework (DNSFramework) - DNSThemeTypes
//
//  Created by Darren Ehlers.
//  Copyright © 20205 - 2016 DoubleNode.com. All rights reserved.
//

import DNSError

public extension DNSCodeLocation {
    typealias themeTypes = DNSThemeTypesCodeLocation
}
open class DNSThemeTypesCodeLocation: DNSCodeLocation {
    override open class var domainPreface: String { "com.doublenode.themeTypes." }
}
