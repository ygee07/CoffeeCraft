import SwiftUI

/// View with a colored background
public struct BackgroundView<Content: View>: View {
    let color: Color
    var content: () -> Content
    
    /// Create a View with a background color
    /// - Parameters:
    ///   - color: background color
    ///   - content: view over the background color
    public init(color: Color = .background, @ViewBuilder content: @escaping () -> Content) {
        self.color = color
        self.content = content
    }

    public var body: some View {
        ZStack {
            color.edgesIgnoringSafeArea(.all)
            content()
        }
    }
}

 struct BackgroundView_Previews: PreviewProvider {
    static var previews: some View {
        BackgroundView() {
            Text("Hello")
        }
    }
 }
