//
//  HeaderDetailVIew.swift
//  Touchdown
//
//  Created by Juan Sebastian Orozco Buitrago on 2/9/22.
//

import SwiftUI

struct HeaderDetailVIew: View {
    
    //MARK: - PROPERTIES
    
    //MARK: - BODY
    
    var body: some View {
        VStack(alignment: .leading, spacing: 6) {
            Text("Protective Gear")
            
            Text(sampleProduct.name)
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
            .previewLayout(.sizeThatFits)
            .padding()
            .background(Color.gray)
    }
}
