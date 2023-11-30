import SwiftUI

struct Card: Identifiable {
    var id: String {
        self.doctorImageUrl
    }
    let cardBackgroundColor: Color
    let doctorNameColor: Color
    let doctorDegreeColor: Color
    let dividerColor: Color
    let doctorImageUrl: String
    let doctorName: LocalizedStringKey
    let doctorDegree: LocalizedStringKey
    var isMainCard: Bool
    
    init(cardBackgroundColor: Color, doctorNameColor: Color, doctorDegreeColor: Color, dividerColor: Color, doctorImageUrl: String, doctorName: LocalizedStringKey, doctorDegree: LocalizedStringKey, isMainCard: Bool) {
        self.cardBackgroundColor = cardBackgroundColor
        self.doctorNameColor = doctorNameColor
        self.doctorDegreeColor = doctorDegreeColor
        self.dividerColor = dividerColor
        self.doctorImageUrl = doctorImageUrl
        self.doctorName = doctorName
        self.doctorDegree = doctorDegree
        self.isMainCard = isMainCard
    }
}
