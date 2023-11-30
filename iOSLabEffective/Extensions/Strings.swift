import SwiftUI

extension LocalizedStringKey {
    static let tabProfileLabel = "Profile"
    static let tabHomeLabel = "Home"
    static let tabDateLabel = "Date"
    static let tabChatLabel = "Chat"
    static let mockUserName = "James"
    static let distanceLabel = LocalizedStringKey("distance_label")
    static let dateLabel = LocalizedStringKey("date_label")
    static let timeLabel = LocalizedStringKey("time_label")
    static let ratingLabel = LocalizedStringKey("rating_label")
    static let openTimeLabel = LocalizedStringKey("open_time_label")
    static let greetingFirstPart = LocalizedStringKey("greeting_first_part")
    static let greetingSecondPart = LocalizedStringKey("greeting_second_part")
    static let searchLabel = LocalizedStringKey("search_label")
    static let nearDoctorLabel = LocalizedStringKey("near_doctor_label")
    static let covidLabel = LocalizedStringKey("covid_label")
    static let doctorLabel = LocalizedStringKey("doctor_label")
    static let medicineLabel = LocalizedStringKey("medicine_label")
    static let hospitalLabel = LocalizedStringKey("hospital_label")
    static let firstDoctorName = LocalizedStringKey("first_doctor_name")
    static let secondDoctorName = LocalizedStringKey("second_doctor_name")
    static let firstDoctorDegree = LocalizedStringKey("first_doctor_degree")
    static let secondDoctorDegree = LocalizedStringKey("second_doctor_degree")
    
    static var empty: LocalizedStringKey { "" }
    
    var stringValue: String {
        guard let stringKey = self.stringKey else { return LocalizedStringKey.empty.stringValue }
        return stringKey
    }
    
    private var stringKey: String? {
        Mirror(reflecting: self)
            .children
            .first(where: { $0.label == "key" })?
            .value as? String
    }
}
