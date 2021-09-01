import SwiftUI

public struct LinearProgressBar: View {
    let value: CGFloat
    let cornerRadius: CGFloat
    let foreground: Color
    let background: Color
    
    /// Creates a linear progress bar view
    /// - Parameters:
    ///   - value: the amount of progress ranging from `0.0` to `1.0`
    ///   - width: the width of the progress bar
    ///   - height: the height of the progress bar, defaults to `4`
    ///   - cornerRadius: the corner radius of the progress bar, defaults to `height/2`
    ///   - foreground: progress bar foreground color, defaults to `accentColor`
    ///   - background: progress bar background color, defaults to `gray`
    public init(value: CGFloat, cornerRadius: CGFloat = 4, foreground: Color = Color.accentColor, background: Color = Color.gray) {
        
        self.value = value
        self.cornerRadius = cornerRadius
        self.foreground = foreground
        self.background = background
    }
    
    public var body: some View {
        GeometryReader { proxy in
            ZStack {
                RoundedRectangle(cornerRadius: cornerRadius)
                    .fill(background)
                HStack {
                    RoundedRectangle(cornerRadius: cornerRadius)
                        .fill(foreground)
                        .frame(width: proxy.size.width * value, height: proxy.size.height)
                    Spacer()
                }
            }
        }
    }
}

struct LinearProgressBar_Previews: PreviewProvider {
    static var previews: some View {
        LinearProgressBar(value: 0.5)
    }
}
