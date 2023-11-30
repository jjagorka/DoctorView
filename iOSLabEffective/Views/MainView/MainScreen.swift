import SwiftUI

struct MainScreen: View {
    var doctors: [Card] = [
        Card.secondCardViewData,
        Card.thirdCardViewData
    ]

    var body: some View {
        ScrollView(.vertical) {
            VStack(alignment: .leading) {
                HeaderView(userData: .constant(User.userData))

                firstCardButton()

                secondCardButton()

                CategoryView(categoryList: .constant(CategoryModel.categoryList))
                    .padding(.top, mediumPadding)

                Text(LocalizedStringKey.nearDoctorLabel, comment: "Text")
                    .foregroundColor(.nearBlack)
                    .font(.poppinsSemiBold16)
                    .padding(.top, largePadding)

                doctorCards()

                Spacer(minLength: fromBottomPadding)
            }
        }
        .padding([.leading, .trailing], largePadding)
        .padding(.top, mediumPadding)
    }

    func firstCardButton() -> some View {
        Button(action: {}) {
            CardView(cardViewData: .constant(Card.firstCardViewData))
                .padding(.top, mediumPadding)
        }
        .hoverEffect()
    }

    func secondCardButton() -> some View {
        Button(action: {}) {
            SearchView()
                .padding(.top, mediumPadding)
        }
        .hoverEffect()
    }

    func doctorCards() -> some View {
        ForEach(doctors) { doctor in
            Button(action: {}) {
                CardView(cardViewData: .constant(doctor))
                    .shadow(
                        color: .shadow.opacity(shadowOpacity),
                        radius: cornerItemRadius,
                        x: shadowX,
                        y: shadowY
                    )
                    .padding(.top, smallPadding)
            }
            .hoverEffect()
        }
    }
}

// Preview
struct MainScreen_Previews: PreviewProvider {
    static var previews: some View {
        MainScreen()
    }
}
