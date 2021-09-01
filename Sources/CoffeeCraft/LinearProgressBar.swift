import SwiftUI

public struct LinearProgressBar: View {
    let value: CGFloat
    let width: CGFloat
    let height: CGFloat
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
    public init(value: CGFloat, width: CGFloat, height: CGFloat = 4, cornerRadius: CGFloat? = nil, foreground: Color = Color.accentColor, background: Color = Color.gray) {
        
        self.value = value
        self.width = width
        self.height = height
        self.foreground = foreground
        self.background = background
        
        if let cornerRadius = cornerRadius {
            self.cornerRadius = cornerRadius
        } else {
            self.cornerRadius = height / 2
        }
    }
    
    public var body: some View {
        ZStack {
            RoundedRectangle(cornerRadius: cornerRadius)
                .fill(background)
                .frame(height: height)
            HStack {
                RoundedRectangle(cornerRadius: 2)
                    .fill(foreground)
                    .frame(width: width * value, height: height)
                Spacer()
            }
        }
        .frame(width: width)
    }
}

struct LinearProgressBar_Previews: PreviewProvider {
    static var previews: some View {
        LinearProgressBar(value: 0.5, width: 200)
    }
}
