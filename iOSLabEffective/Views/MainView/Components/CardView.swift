import SwiftUI

struct CardView: View {
    @Binding var cardViewData: Card

    var body: some View {
        VStack(alignment: .leading, spacing: itemSpacing) {
            headerSection()

            Divider().overlay(cardViewData.dividerColor).padding([.top, .bottom], superSmallPadding)

            if cardViewData.isMainCard {
                mainCardSection()
            } else {
                secondaryCardSection()
            }
        }
        .padding(mediumPadding)
        .background(cardViewData.cardBackgroundColor, in: RoundedRectangle(cornerRadius: cornerItemRadius))
        .defaultHoverEffect(.highlight)
    }

    func headerSection() -> some View {
        HStack {
            Image(cardViewData.doctorImageUrl)
                .resizable()
                .scaledToFill()
                .frame(width: circleImageSize, height: circleImageSize, alignment: .top)
                .background(.white)
                .clipShape(.circle)
                .padding(.trailing, smallPadding)

            VStack(alignment: .leading) {
                Text(cardViewData.doctorName, comment: "Text")
                    .foregroundColor(cardViewData.doctorNameColor)
                    .font(.poppinsBold16)

                Text(cardViewData.doctorDegree, comment: "Text")
                    .foregroundColor(cardViewData.doctorDegreeColor)
                    .font(.poppinsRegular14)
            }

            Spacer()

            if cardViewData.isMainCard {
                Image(ImageAsset.icArrow)
            } else {
                Label {
                    Text(LocalizedStringKey.distanceLabel, comment: "Text")
                        .font(.poppinsRegular14)
                        .foregroundColor(.purple)
                } icon: {
                    Image(ImageAsset.icLocation)
                }
            }
        }
    }

    func mainCardSection() -> some View {
        HStack {
            Label {
                Text(LocalizedStringKey.dateLabel, comment: "Text")
                    .font(.poppinsRegular12)
                    .foregroundColor(.white)
            } icon: {
                Image(ImageAsset.icDateCalendar)
            }

            Label {
                Text(LocalizedStringKey.timeLabel, comment: "Text")
                    .font(.poppinsRegular12)
                    .foregroundColor(.white)
            } icon: {
                Image(ImageAsset.icClock)
            }
            .padding(.leading, largePadding)
        }
    }

    func secondaryCardSection() -> some View {
        HStack {
            Label {
                Text(LocalizedStringKey.ratingLabel, comment: "Text")
                    .font(.poppinsRegular12)
                    .foregroundColor(.reviewTint)
            } icon: {
                Image(ImageAsset.icClock)
                    .renderingMode(.template)
                    .foregroundColor(.reviewTint)
            }

            Label {
                Text(LocalizedStringKey.openTimeLabel, comment: "Text")
                    .font(.poppinsRegular12)
                    .foregroundColor(.timeTint)
            } icon: {
                Image(ImageAsset.icClock)
                    .renderingMode(.template)
                    .foregroundColor(.timeTint)
            }
            .padding(.leading, largePadding)
        }
    }
}

// Preview
struct CardView_Previews: PreviewProvider {
    static var previews: some View {
        CardView(cardViewData: .constant(Card.firstCardViewData))
    }
}
