//
//  Shop.swift
//  Touchdown
//
//  Created by Juan Sebastian Orozco Buitrago on 2/10/22.
//

import Foundation

class Shop: ObservableObject {
    @Published var showingProduct: Bool = false
    @Published var selectedProduct: Product? = nil
}
