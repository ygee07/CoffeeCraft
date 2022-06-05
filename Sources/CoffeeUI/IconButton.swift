//
//  SwiftUIView.swift
//  
//
//  Created by Yhanco Grey Esteban on 6/5/22.
//

import SwiftUI

struct IconButton: View {
    let name: String
    let action: () -> Void

    
    /// Creates a button using a system icon
    /// - Parameters:
    ///   - name: system icon name
    ///   - action: The action to perform when the user triggers the button.
    init(_ name: String, action: @escaping () -> Void) {
        self.name = name
        self.action = action
    }
    
    var body: some View {
        Button {
            action()
        } label: {
            Icon(name)
        }
    }
}

struct SwiftUIView_Previews: PreviewProvider {
    static var previews: some View {
        IconButton("checkmark.circle.fill") {
            print("I did something")
        }
    }
}
