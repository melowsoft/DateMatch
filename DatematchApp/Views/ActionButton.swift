//
//  ActionButton.swift
//  Datematch
//
//  Created by User on 06/08/2020.
//  Copyright © 2020 User. All rights reserved.
//

import SwiftUI

struct ActionButton: View {
    var title: String
    var textColor: Color
    
    var body: some View {
        Button(action: {}) {
            Text(title)
                .font(.custom("FiraSansCondensed-Regular", size: 18))
                .frame(minWidth: 200, minHeight: 50)
                .background(Color(#colorLiteral(red: 1, green: 1, blue: 1, alpha: 1)))
      
                .clipShape(RoundedRectangle(cornerRadius: 30, style: .circular))
                .overlay(
                    RoundedRectangle(cornerRadius: 30)
                        .stroke(textColor, lineWidth: 1)
            )
                
                
                .shadow(color: Color.black.opacity(0.15), radius: 5, x: 0, y: 5)
                .foregroundColor(textColor)
        }
    }
}

struct ActionButton_Previews: PreviewProvider {
    static var previews: some View {
        ActionButton(title: "Placeholder", textColor: Color.red)
    }
}
