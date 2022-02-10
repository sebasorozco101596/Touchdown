//
//  NavigationBarDetailView.swift
//  Touchdown
//
//  Created by Juan Sebastian Orozco Buitrago on 2/9/22.
//

import SwiftUI

struct NavigationBarDetailView: View {
    
    //MARK: - PROPERTIES
    
    @EnvironmentObject var shop: Shop
    
    //MARK: - BODY
    
    var body: some View {
        HStack {
            Button {
                withAnimation(.easeIn) {
                    feedback.impactOccurred()
                    shop.selectedProduct = nil
                    shop.showingProduct = false
                }
            } label: {
                Image(systemName: "chevron.left")
                    .font(.title)
                    .foregroundColor(.white)
            }
            
            Spacer()
            
            Button {
                
            } label: {
                Image(systemName: "cart")
                    .font(.title)
                    .foregroundColor(.white)
            }


        } //: HSTACK
    }
}

//MARK: - PREVIEW

struct NavigationBarDetailView_Previews: PreviewProvider {
    static var previews: some View {
        NavigationBarDetailView()
            .environmentObject(Shop())
            .previewLayout(.sizeThatFits)
            .padding()
            .background(Color.gray)
    }
}
