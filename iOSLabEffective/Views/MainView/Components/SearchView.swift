import SwiftUI

struct SearchView: View {
    var body: some View {
        HStack {
            Label {
                Text(LocalizedStringKey.searchLabel, comment: "Text")
                    .font(.poppinsRegular16)
                    .foregroundColor(.purple)
                    .padding(.leading, smallPadding)
            } icon: {
                Image(ImageAsset.icMagnifier)
            }.hoverEffect(.highlight)
            Spacer()
        }
        .padding(mediumPadding)
        .background(.accentBackground)
        .clipShape(RoundedRectangle(cornerRadius: cornerItemRadius))
    }
}

#Preview {
    SearchView()
}
