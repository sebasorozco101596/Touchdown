//
//  CategoryModel.swift
//  Touchdown
//
//  Created by Juan Sebastian Orozco Buitrago on 2/7/22.
//

import Foundation

struct Category: Codable, Identifiable {
    let id: Int
    let name: String
    let image: String
}
