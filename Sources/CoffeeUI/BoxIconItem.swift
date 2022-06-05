//
//  SwiftUIView.swift
//  
//
//  Created by Yhanco Grey Esteban on 6/5/22.
//

import SwiftUI

struct BoxIconItem: View {
    private let name: String

    private let icon: String

    private let color: Color
    
    private let size: CGFloat

    /// Soul Grid Item
    /// - Parameters:
    ///   - name: name of the menu
    ///   - icon: system icon for the menu
    ///   - color: icon color
    ///   - size: box size
    init(name: String, icon: String, color: Color = .primary, size: CGFloat = 80) {
        self.name = name
        self.icon = icon
        self.color = color
        self.size = size
    }

    var body: some View {
        BoxItem(size: size) {
            Icon(icon)
                .frame(width: 24, height: 24)
                .foregroundColor(color)
                .padding()
        } label: {
            Text(name)
                .font(.custom("Asap", size: 16))
        }
    }
}

struct BoxMenuItem_Previews: PreviewProvider {
    static var previews: some View {
        BackgroundView {
            BoxIconItem(name: "New Item", icon: "star.circle.fill", color: .yellow)
        }
        .preferredColorScheme(.dark)
    }
}
