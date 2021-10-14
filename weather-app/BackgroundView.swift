import SwiftUI

struct BackgroundView: View {
    @Binding var isNight: Bool
    private var topColor: Color {
        return self.isNight ? .black : .blue
    }
    
    private var bottomColor: Color {
        return self.isNight ? .gray : .white
    }
    
    var body: some View {
        LinearGradient(gradient: Gradient(colors: [topColor, bottomColor]), startPoint: .topTrailing, endPoint: .bottomTrailing)
    }
}
