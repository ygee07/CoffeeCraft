//
//  File.swift
//  
//
//  Created by Yhanco Grey Esteban on 6/5/22.
//

import UIKit
import SwiftUI

/// Additional colors used by the package
public extension Color {
    
    static var background: Color {
        return Color(UIColor(named: "Background", in: .module, compatibleWith: .current)!)
    }

    static var foreground: Color {
        return Color(UIColor(named: "Foreground", in: .module, compatibleWith: .current)!)
    }
}
