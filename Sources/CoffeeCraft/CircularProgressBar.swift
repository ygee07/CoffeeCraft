import SwiftUI

public struct CircularProgressBar: View {
    let value: CGFloat
    let stroke: CGFloat
    let foreground: Color
    let background: Color
    
    /// Creates a circular progress bar
    /// - Parameters:
    ///   - value: the amount of progress ranging from `0.0` to `1.0`
    ///   - stroke: the stroke width of the circle
    ///   - foreground: progress bar foreground color, defaults to `accentColor`
    ///   - background: progress bar background color, defaults to `gray`
    public init(value: CGFloat, stroke: CGFloat, foreground: Color = Color.accentColor, background: Color = Color.gray) {
        
        self.value = value
        self.stroke = stroke
        self.foreground = foreground
        self.background = background
    }
    
    public var body: some View {
        GeometryReader { proxy in
            ZStack {
                Circle()
                    .strokeBorder(lineWidth: stroke)
                    .foregroundColor(background)
                
                Circle()
                    .trim(from: 0.0, to: CGFloat(min(self.value, 1.0)))
                    .stroke(style: StrokeStyle(lineWidth: stroke, lineCap: .round, lineJoin: .round))
                    .foregroundColor(foreground)
                    .rotationEffect(Angle(degrees: 270.0))
                    .frame(width: proxy.size.width  - stroke)
                    .animation(.linear)
            }
        }
    }
}

struct CircularProgressBar_Previews: PreviewProvider {
    static var previews: some View {
        CircularProgressBar(value: 0.8, stroke: 1.0)
    }
}
