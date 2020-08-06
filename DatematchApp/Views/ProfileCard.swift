//
//  ProfileCard.swift
//  DateMatch
//
//  Created by User on 05/08/2020.
//  Copyright © 2020 User. All rights reserved.
//

import SwiftUI

struct ProfileCard: View {
    var username: String
    var age: Int
    var expiryDate: Int
    var progress: String
    var profilePict: String
    var statusPict: String
    
    var body: some View {
        HStack(alignment: .center) {
            HStack(alignment: .top) {
                Image(profilePict)
                    .clipShape(Circle())
                VStack(alignment: .leading, spacing: 5.0) {
                    Text("\(username), \(age)")
                        .font(.subheadline)
                    
                    Text("\(expiryDate) days left")
                        .font(.footnote)
                }
                
                Text("\(progress)%")
                    .padding(5)
                    .font(.system(size: 10, design: .rounded))
                    .frame(width: 35, height: 20)
                    .background(Color.black.opacity(0.2))
                    .foregroundColor(.white)
                    .clipShape(RoundedRectangle(cornerRadius: 10, style: .continuous))
            }
            
            Spacer()
            
            Image(statusPict)
            .frame(width: 50, height: 40)
        }
        
    }
}

struct ProfileCard_Previews: PreviewProvider {
    static var previews: some View {
        ProfileCard(username: "Margaret", age: 28, expiryDate: 7, progress: "65", profilePict: "Bitmap", statusPict: "hearrt")
    }
}
