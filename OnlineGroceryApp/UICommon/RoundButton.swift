//
//  RoundButton.swift
//  OnlineGroceryApp
//
//  Created by Mahesh Behere on 19/05/25.
//

import SwiftUI

struct RoundButton: View {
    @State var title:String = "Title"
    var didTap: (()->())?
    
    var body: some View {
        Button {
            didTap?()
        } label: {
            Text("\(title)")
                .font(.customfont(.semibold, fontSize: 18))
                .foregroundStyle(.white)
                .multilineTextAlignment(.center)
        }
        .frame(minWidth: 0,maxWidth: .infinity,minHeight: 60,maxHeight: 60)
        .background(Color.primary)
        .cornerRadius(20)
        .padding()
    }
}

#Preview {
    RoundButton()
}
