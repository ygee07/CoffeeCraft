//
//  SwiftUIView.swift
//  
//
//  Created by Yhanco Grey Esteban on 6/5/22.
//

import SwiftUI

struct BoxItem<Label: View, Content: View>: View {
    /// Name of the menu
    private let label: () -> Label

    /// System Icon for the menu
    private let icon: () -> Content
    
    private let size: CGFloat
    
    init(size: CGFloat = 80, @ViewBuilder icon: @escaping () -> Content, @ViewBuilder label: @escaping () -> Label) {
        self.label = label
        self.icon = icon
        self.size = size
    }
    
    var body: some View {
        HStack {
            Spacer()
            VStack {
                ZStack {
                    RoundedRectangle(cornerRadius: 20)
                        .fill(Color.foreground)
                        .frame(width: size, height: size)
                    icon()
                }
                label()
            }
            Spacer()
        }
    }
}

struct BoxItem_Previews: PreviewProvider {
    static var previews: some View {
        BackgroundView {
            BoxItem {
                Text("🏕")
            } label: {
                Text("Hello World")
            }
        }
        .preferredColorScheme(.dark)
    }
}
