//
//  File.swift
//  
//
//  Created by Yhanco Grey Esteban on 6/5/22.
//

import Foundation

extension Date: ExpressibleByIntegerLiteral {
    
    public init(integerLiteral value: Int) {
        let formatter = DateFormatter()
        formatter.dateFormat = "yyyyMMdd"
        self = formatter.date(from: String(value)) ?? Date()
    }
}
