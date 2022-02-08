//
//  SectionVIew.swift
//  Touchdown
//
//  Created by Juan Sebastian Orozco Buitrago on 2/8/22.
//

import SwiftUI

struct SectionVIew: View {
    
    //MARK: - PROPERTIES
    
    @State var rotateClockwise: Bool
    
    //MARK: - BODY
    
    var body: some View {
        VStack(spacing: 0) {
            Spacer()
            
            Text("Categories".uppercased())
                .font(.footnote)
                .fontWeight(.bold)
                .foregroundColor(.white)
                .rotationEffect(Angle(degrees: rotateClockwise ? 90 : -90))
            
            Spacer()
        } //: VSTACK
        .background(colorGray.cornerRadius(12))
        .frame(width: 85)
    }
}

//MARK: - PREVIEW

struct SectionVIew_Previews: PreviewProvider {
    static var previews: some View {
        SectionVIew(rotateClockwise: false)
            .previewLayout(.fixed(width: 120, height: 240))
            .padding()
            .background(colorBackground)
    }
}
