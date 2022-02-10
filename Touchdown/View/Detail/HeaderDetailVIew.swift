//
//  HeaderDetailVIew.swift
//  Touchdown
//
//  Created by Juan Sebastian Orozco Buitrago on 2/9/22.
//

import SwiftUI

struct HeaderDetailVIew: View {
    
    //MARK: - PROPERTIES
    
    @EnvironmentObject var shop: Shop
    
    //MARK: - BODY
    
    var body: some View {
        VStack(alignment: .leading, spacing: 6) {
            Text("Protective Gear")
            
            Text(shop.selectedProduct?.name ?? sampleProduct.name)
                .font(.largeTitle)
                .fontWeight(.black)
        } //: VSTACK
        .foregroundColor(.white)
    }
}

//MARK: - PREVIEW

struct HeaderDetailVIew_Previews: PreviewProvider {
    static var previews: some View {
        HeaderDetailVIew()
            .environmentObject(Shop())
            .previewLayout(.sizeThatFits)
            .padding()
            .background(Color.gray)
    }
}
