import SwiftUI

extension Card {
    static let firstCardViewData: Card = Card(
        cardBackgroundColor: .darkBlueCard,
        doctorNameColor: .white,
        doctorDegreeColor: .white,
        dividerColor: .blackDivider,
        doctorImageUrl: ImageAsset.icFirstDoctor,
        doctorName: LocalizedStringKey.firstDoctorName,
        doctorDegree: LocalizedStringKey.firstDoctorDegree,
        isMainCard: true
    )
    static let secondCardViewData: Card = Card(
        cardBackgroundColor: .white,
        doctorNameColor: .nearBlack,
        doctorDegreeColor: .purple,
        dividerColor: .lightDivider,
        doctorImageUrl: ImageAsset.icSecondDoctor,
        doctorName: LocalizedStringKey.secondDoctorName,
        doctorDegree: LocalizedStringKey.secondDoctorDegree,
        isMainCard: false
    )
    static let thirdCardViewData: Card = Card(
        cardBackgroundColor: .white,
        doctorNameColor: .nearBlack,
        doctorDegreeColor: .purple,
        dividerColor: .lightDivider,
        doctorImageUrl: ImageAsset.icFirstDoctor,
        doctorName: LocalizedStringKey.firstDoctorName,
        doctorDegree: LocalizedStringKey.firstDoctorDegree,
        isMainCard: false
    )
}
