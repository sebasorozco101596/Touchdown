//
//  QuantityFavouriteDetailView.swift
//  Touchdown
//
//  Created by Juan Sebastian Orozco Buitrago on 2/10/22.
//

import SwiftUI

struct QuantityFavouriteDetailView: View {
    
    //MARK: - PROPERTIES
    
    @State private var counter: Int = 0
    
    //MARK: - BODY
    
    var body: some View {
        HStack(alignment: .center, spacing: 6) {
            Button {
                if counter > 0 {
                    feedback.impactOccurred()
                    counter -= 1
                }
            } label: {
                Image(systemName: "minus.circle")
            }
            
            Text("\(counter)")
                .fontWeight(.semibold)
                .frame(minWidth: 36)
            
            Button {
                if counter < 100 {
                    feedback.impactOccurred()
                    counter += 1
                }
            } label: {
                Image(systemName: "plus.circle")
            }
            
            Spacer()
            
            Button {
                feedback.impactOccurred()
            } label: {
                Image(systemName: "heart.circle")
                    .foregroundColor(.pink)
            }



        } //: HSTACK
        .font(.system(.title, design: .rounded))
        .foregroundColor(.black)
        .imageScale(.large)
    }
}

//MARK: - PREVIEW

struct QuantityFavouriteDetailView_Previews: PreviewProvider {
    static var previews: some View {
        QuantityFavouriteDetailView()
            .previewLayout(.sizeThatFits)
            .padding()
    }
}
