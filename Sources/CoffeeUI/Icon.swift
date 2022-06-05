//
//  SwiftUIView.swift
//  
//
//  Created by Yhanco Grey Esteban on 6/5/22.
//

import SwiftUI

struct Icon: View {
    let name: String
    
    /// Creates a view with system icon that is resizable
    /// - Parameter name: name of system icon
    init(_ name: String) {
        self.name = name
    }
    
    var body: some View {
        Image(systemName: name)
            .resizable()
            .scaledToFit()
    }
}

struct Icon_Previews: PreviewProvider {
    static var previews: some View {
        Icon("checkmark.circle.fill")
    }
}
