import SwiftUI

struct ScrollRectangleView: View {
    var rectangleHeight: CGFloat = 50
    
    var body: some View {
        ZStack(alignment: .bottom) {
            scroll()
            rectangle()
        }
    }
    
    private func scroll() -> some View {
        ScrollView {
            ForEach(1...100, id: \.self) { number in
                HStack {
                    Spacer()
                    Text("\(number)")
                        .foregroundStyle(.gray)
                        .font(.title)
                    Spacer()
                }
            }
        }
        .safeAreaInset(edge: .bottom) {
            Spacer()
                .frame(height: rectangleHeight)
        }
    }
    
    private func rectangle() -> some View {
        Rectangle()
            .frame(height: rectangleHeight)
            .foregroundStyle(.red)
            .opacity(0.7)
    }
}

#Preview {
    ScrollRectangleView()
}
