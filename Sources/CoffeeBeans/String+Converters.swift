//
//  File.swift
//  
//
//  Created by Yhanco Grey Esteban on 6/5/22.
//

import Foundation

extension String {
    
    func prettyDecimal() -> String {
        let formatter = NumberFormatter()
        formatter.numberStyle = .decimal
        return formatter.string(from: NSNumber(value: Double(self) ?? 0)) ?? "0"
    }
    
    func plainDecimal() -> String {
        let formatter = NumberFormatter()
        formatter.numberStyle = .decimal
        guard let number = formatter.number(from: self) else {
            return "0"
        }
        return "\(number.decimalValue)"
    }
}
