import Foundation

extension CategoryModel {
    static let categoryList: [CategoryModel] = [
        CategoryModel(imageUrl: ImageAsset.icCovid, categoryName: Category.covid.stringValue),
        CategoryModel(imageUrl: ImageAsset.icProfile, categoryName: Category.doctor.stringValue),
        CategoryModel(imageUrl: ImageAsset.icMedicine, categoryName: Category.medicine.stringValue),
        CategoryModel(imageUrl: ImageAsset.icHospital, categoryName: Category.hospital.stringValue),
    ]
}

