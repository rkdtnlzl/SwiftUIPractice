//
//  ProfileImageView.swift
//  SwiftUITest
//
//  Created by 강석호 on 9/2/24.
//

import SwiftUI

struct ProfileImageView: View {
    let imageName: String
    let destination: AnyView
    
    var body: some View {
        ZStack {
            Image(imageName)
                .resizable()
                .scaledToFit()
                .clipShape(Circle())
                .overlay(Circle().stroke(.blue, lineWidth: 7))
                .frame(width: 150, height: 150)
            
            NavigationLink(destination: destination) {
                Circle()
                    .fill(Color.blue)
                    .frame(width: 40, height: 40)
                    .overlay(
                        Image(systemName: "camera")
                            .foregroundColor(.white)
                    )
                    .offset(x: 45, y: 50)
                    .frame(width: 150, height: 150)
            }
        }
    }
}

#Preview {
    ProfileImageView(imageName: "profile_0",
                     destination: AnyView(Text("New View"))
    )
}
