//
//  DecimalUtils.swift
//  Bankey
//
//  Created by Taiki on 4/01/6.
//

import Foundation

extension Decimal {
    var doubleValue: Double {
        return NSDecimalNumber(decimal:self).doubleValue
    }
}
