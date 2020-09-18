//
//  ActivityModel.swift
//  LazoReports
//
//  Created by Segundo Fariña on 15/09/2020.
//

import Foundation

struct ActivityModel: Codable {
    let _id: String
    let exerciseId: String
    let category: Categories
    let name: String
//    let area: Double?
//    let cropType: CropTypes?
//    let productId: String?
//    let closed: String?
//    let kilograms: Double?
//    let monthClosed: String?
}

enum Categories: String, Codable {
    case crop, machinery, structure, taxes, admin, rent, cattle
}

enum CropTypes: String, Codable {
    case harvest, stock
}
